#include <ros/ros.h>
//Use image_transport for publishing and subscribing to images in ROS
#include <image_transport/image_transport.h>
//Use cv_bridge to convert between ROS and OpenCV Image formats
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
//Include headers for OpenCV Image processing
#include <opencv2/imgproc/imgproc.hpp>
//Include headers for OpenCV GUI handling
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/core.hpp>
#include <opencv2/opencv.hpp>
#include <std_msgs/UInt8.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <netdb.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <string>
#include <vector>
#include "std_msgs/String.h"

using namespace cv;
using namespace std;

int main(int argc,char **argv)
{
    socklen_t server_fd, client_fd;
    struct sockaddr_in ser_addr;
    struct sockaddr_in cli_addr;
    //creat the socket;
    if((server_fd=socket(AF_INET,SOCK_STREAM,0))==-1) {
       	perror("socket failed!\n");
        exit(1);
    }
    cout<<"creat socket successful! socket="<<server_fd<<endl;
    memset(&ser_addr,0,sizeof(ser_addr));
    ser_addr.sin_family=AF_INET;
    ser_addr.sin_port=htons(3334);
    //ser_addr.sin_addr.s_addr = INADDR_ANY;  ///局域网内不同电脑
    ser_addr.sin_addr.s_addr = inet_addr("127.0.0.1"); ///同一个电脑
    if(bind(server_fd, (struct sockaddr*)(&ser_addr), sizeof(struct sockaddr)) == -1) {
      perror("bind error!\n");
      exit(1);
    }
    cout<<"bind successful!"<<endl;


    //set listen port
    if(listen(server_fd, 10)==-1)
      {
       perror("bind error!\n");
       exit(1);
      }
     cout<<"set listen port sucessful!"<<endl;
    socklen_t sin_size =sizeof(struct sockaddr_in);
    if((client_fd=accept(server_fd,(struct sockaddr*)&cli_addr,&sin_size))==-1)
    {
	    perror("accept error!");
	    return 0;
    }
     cout<<"accept successful!"<<endl;
  
    Mat image;
    char buf[65536]={0};

    ROS_INFO("-----------------next is while(1)----------------");
    while(true) {
        socklen_t client_len;
        client_len=sizeof(client_fd);
        ROS_INFO("recvfrom()");
        int n=recvfrom(client_fd,buf,sizeof(buf),0,(struct sockaddr*)&client_fd,&client_len);
        //int n = read(client_fd, buf, sizeof(buf));
        cout<<"接收到的n： "<< n <<endl;
  
        vector<uchar> decode(&buf[0],&buf[n]);
  
        image = imdecode(decode, CV_LOAD_IMAGE_COLOR);
 
        if(image.rows==0||image.cols==0) {
            ROS_INFO("image.rows==0||image.cols==0");
            memset(buf,0,sizeof(buf));
            continue;
        }
        memset(buf,0,sizeof(buf));
	    imshow("server_recv_video", image);
	    waitKey(1);
   }
   close(client_fd);
   close(server_fd);
   return 0;
}
