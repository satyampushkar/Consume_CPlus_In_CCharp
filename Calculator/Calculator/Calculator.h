// Calculator.h - Contains declarations of calculator functions
#pragma once

/*#ifdef CALCULATORDLL_EXPORTS  
#define CALCULATOR_API __declspec(dllexport)   
#else  
#define CALCULATOR_API __declspec(dllimport)   
#endif */ 
//class  CALCULATOR_API CALCULATORApi
//{
//public:
//    int Add(int a, int b);
//    int Subtract(int a, int b);
//    int Multiply(int a, int b);
//    int Divide(int a, int b);
//};

extern "C" __declspec(dllexport)  int __stdcall Add(int a, int b) {
	return a + b;
}
extern "C" __declspec(dllexport)  int __stdcall Subtract(int a, int b) {
	return a - b;
}
extern "C" __declspec(dllexport)  int __stdcall Multiply(int a, int b) {
	return a * b;
}
extern "C" __declspec(dllexport)  int __stdcall Divide(int a, int b) {
	return a / b;
}