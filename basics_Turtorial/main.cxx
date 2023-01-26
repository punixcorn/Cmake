#include <iostream>
#include<cstdlib>
#include<cmath>
#include <string>
int main(int argc, char **argv) {
  if (argc > 1) {
      try{
      const double input = std::stod(*(argv+1));
      double final = std::sqrt(input);
      std::cout<<"The squre root is "<<final<<"\n";
      }catch(...){
       std::cout<<"invalid arguments passed";
      }
    exit(0);
  }
  std::string exit_w = "No arguments passed";
  std::cout<<exit_w<<" \n";
  exit(0);
}
