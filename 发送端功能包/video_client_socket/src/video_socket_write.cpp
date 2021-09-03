//Includes all the headers necessary to use the most common public pieces of the ROS system.
#include<ros/ros.h>
//Use image_transport for publishing and subscribing to images in ROS
#include<image_transport/image_transport.h>
//Use cv_bridge to convert between ROS and OpenCV Image formats
#include<cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
//Include headers for OpenCV Image processing
#include<opencv2/imgproc/imgproc.hpp>
//Include headers for OpenCV GUI handling
#include<opencv2/highgui/highgui.hpp>
#include<opencv2/core/core.hpp>
#include<opencv2/opencv.hpp>
#include<std_msgs/UInt8.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<unistd.h>
#include<netdb.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<vector>
#include<sys/ioctl.h>

using namespace cv;
using namespace std;

static int sockfd;

// #define ADDR "127.0.0.1" //在本机测试用这个地址，如果连接其他电脑需要更换IP
#define ADDR "10.168.131.113"  ///gong yu局域网内服务器IP地址

int main(int argc, char **argv)
{
    //ros::init(argc, argv, "image_socket");
    ROS_INFO("-----------------");

    struct sockaddr_in serv_addr;
    //创建socket
    if ((sockfd = socket(AF_INET,SOCK_STREAM,0)) == -1) {
        perror("Socket failed!\n");
        exit(1);
    }
    printf("Socket id = %d\n",sockfd);

    //设置sockaddr_in 结构体中相关参数
    memset(&serv_addr,0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(3334);
    serv_addr.sin_addr.s_addr = inet_addr(ADDR);
    //inet_pton(AF_INET, servInetAddr, &serv_addr.sin_addr);
    bzero(&(serv_addr.sin_zero), 8);

    //调用connect 函数主动发起对服务器端的连接
    if(connect(sockfd,(struct sockaddr *)&serv_addr, sizeof(serv_addr))== -1)
    {
        perror("Connect failed!\n");
        exit(1);
    }
    else
        printf("connect success\n");

    VideoCapture capture;
    capture.open(CV_CAP_OPENNI_ASUS);
    Mat image;

    ROS_INFO("-----------------next is while(1)----------------");
    while (1) {
        if (!capture.isOpened()) {
            ROS_ERROR("-----------------capture.isOpened failed----------------");
            return 0;
        }
        ROS_INFO("-----------------capture.isOpened success----------------");
        if(!capture.grab()) {
            ROS_ERROR("captrue can not grab images");
            return 0;
        }
        // capture >> image; ///usb camera;
        capture.retrieve(image, CV_CAP_OPENNI_DEPTH_MAP);
        cout << "image.size = " << image.size() << endl;
        imshow("client_send_video", image);
        waitKey(3);
        if (image.empty())
            continue;

        vector<uchar> data_encode;
        vector<int>quality =vector<int>(2);
        quality[0]=CV_IMWRITE_JPEG_QUALITY;
        quality[1]=50;
        imencode(".jpg", image, data_encode,quality);//将图像编码
        //char encodeImg[655350];
        int nSize = data_encode.size();
        cout<<"图像的数据： "<<nSize<<endl;
        //write(sockfd, reinterpret_cast<uchar*>(&nSize), sizeof(int));
        //write(sockfd, &data_encode[0], nSize);
        sendto(sockfd,&data_encode[0],nSize,0,(struct sockaddr*)&serv_addr, sizeof(serv_addr));
    }
    close(sockfd);
    ROS_INFO("No error.");
    return 0;
}
