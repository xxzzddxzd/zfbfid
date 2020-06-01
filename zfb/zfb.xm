#import "p_inc.h"
#include <dirent.h>
#include <sys/param.h>
#include <sys/mount.h>
#include <sys/stat.h>
#import <UIKit/UIKit.h>
#import <substrate.h>
#import <mach-o/dyld.h>
#include <sys/xattr.h>
#define __int64 long
#define XLog(FORMAT, ...) NSLog(@"#pc %@" , [NSString stringWithFormat:FORMAT, ##__VA_ARGS__]);
#define psta XLog(@"%lx,%@",_dyld_get_image_vmaddr_slide(0),[NSThread callStackSymbols]);

/*
 MSHookFunction(&sysctlbyname, DShjBYwJLRUJn, &original_sysctlbyname);
 MSHookFunction(&uname, UcViJDEcBFZUH, &original_uname);
 MSHookFunction(&CNCopyCurrentNetworkInfo, ewMPcgQcbJeow0ba, &original_CNCopyCurrentNetworkInfo);
 MSHookFunction(&SCNetworkReachabilityGetFlags, TBTtGzPzfX, &original_SCNetworkReachabilityGetFlags);
 MSHookFunction(&_dyld_get_image_name, sub_1285a4, &sub_27c3b);
 MSHookFunction(&strstr, sub_2576c, &sub_176c42);
 MSHookFunction(&stat, sub_26206, &sub_2bc45);
 MSHookFunction(&getenv, sub_13c46, &sub_376a4);
 MSHookFunction(&fopen, sub_2c4b6, &sub_41ca4);
 MSHookFunction(&_system, r_system, &o_system);
 */


%hook ImmPaySettingService
- (bool)uploadFingerprintSwitch:(bool)arg1{
    XLog(@"- (_Bool)uploadFingerprintSwitch:(_Bool)arg1 ") psta
    return %orig;
}
%end

%hook UISwitch
- (instancetype)initWithFrame:(CGRect)frame {
    XLog(@"UISwitch initWithFrame")psta
    return %orig;
}
- ( instancetype)initWithCoder:(NSCoder *)aDecoder {
    XLog(@"UISwitch initWithCoder")
    return %orig;
}

- (void)setOn:(BOOL)on animated:(BOOL)animated{
    XLog(@"UISwitch setOn %d,%d",on,animated)
    psta
    return %orig;
}
%end

//%hook UIViewController
//- (void)triggerFingerprintSwitch:(bool)arg1{
//    XLog(@"- (void)triggerFingerprintSwitch:(_Bool)arg1  %d",arg1)
//
//    %orig;
//}
//- (void)configureFingerprintClickableLabel:(id)arg1{
//    XLog(@"- (void)configureFingerprintClickableLabel:(id)arg1  %@",arg1)
//        %orig;
//}
//- (void)onFingerprintPaySwitchValueChanged:(id)arg1{
//    XLog(@"- (void)onFingerprintPaySwitchValueChanged:(id)arg1  %@",arg1)
//    %orig;
//}
//- (void)viewDidLoad{
//    XLog(@"- (void)viewDidLoad  %@",self)
//    %orig;
//}
//- (void)updateUIWithResponse:(id)arg1{
//    XLog(@"updateUIWithResponse %@",arg1);
//}
//%end

//%hook APSecurityUtilImpl
//+ (CDStruct_e6af4fdc * )shared{
//    CDStruct_e6af4fdc * rev= %orig;
//    XLog(@"APSecurityUtilImpl shared")
//    return rev;
//}
//%end
%hook BioRemoteLogger
+ (void)report:(int)arg1 log:(id)arg2{
    XLog(@"report %d %@",arg1,arg2)
}
%end

int (*ori_sysctlbyname)(const char *name, void *oldp, size_t *oldlenp, void *newp, size_t newlen);
int replace_sysctlbyname(const char *name, void *oldp, size_t *oldlenp, void *newp, size_t newlen){
    int rev = ori_sysctlbyname(name,oldp,oldlenp,newp,newlen);
    XLog(@"sysctlbyname rev %d %s",rev,name);
    return rev;
}

__int64 __fastcall (*sub_10115C29C_sysctl)();
__int64 __fastcall ne_sub_10115C29C_sysctl(){
    long rev=sub_10115C29C_sysctl();
    XLog(@"sub_10115C29C_sysctl %d",rev);
    return rev;
    
}
__int64 (*setDiagnoseCode)(int a);
__int64 ne_setDiagnoseCode(int a){
    long rev=setDiagnoseCode(a);
    XLog(@"setDiagnoseCode %d",a)
    psta
    return rev;
}
__int64 (*wannaCutieSugar)();
__int64 ne_wannaCutieSugar(){
//    [APSecurityUtilImpl shared];
    long rev=wannaCutieSugar();
    XLog(@"wannaCutieSugar %d",rev)
    psta
    return rev;
}
__int64 (*isJailbroken)();
__int64 ne_isJailbroken(){
    long rev=0; //isJailbroken();
    XLog(@"isJailbroken %d",rev)
    psta
    return rev;
}

CDStruct_e6af4fdc *  (*APSecurityUtilImpl_shared)(int a);
CDStruct_e6af4fdc *  ne_APSecurityUtilImpl_shared(int a){
    CDStruct_e6af4fdc *  rev=APSecurityUtilImpl_shared(a);
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field1-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field2-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field3-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field4-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field5-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field6-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field7-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field8-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field9-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field10-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field11-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field12-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field13-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field14-_dyld_get_image_vmaddr_slide(0))
//    XLog(@"APSecurityUtilImpl_shared %lx",rev->_field15-_dyld_get_image_vmaddr_slide(0))
//    psta
    return rev;
}


bool __fastcall (*sub_10115C47C)(__int64 a1, __int64 a2);
bool __fastcall ne_sub_10115C47C(__int64 a1, __int64 a2){
    bool rev=sub_10115C47C(a1,a2);
    XLog(@"sub_10115C47C %d",rev);
    return rev;
    
}
 __int64 (*sub_10115C558)();
 __int64 ne_sub_10115C558(){
     long rev=0;//sub_10115C558();
     XLog(@"sub_10115C558 %d",rev)
     return rev;
}
void constructor() __attribute__((constructor));
void constructor(void)
{
    XLog(@"inject")
//    MSHookFunction((void*)MSFindSymbol(NULL, "_sysctlbyname"), (void*)replace_sysctlbyname, (void**)&ori_sysctlbyname);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x10115C29C), (void*)ne_sub_10115C29C_sysctl, (void**)&sub_10115C29C_sysctl);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x1007D96F4), (void*)ne_wannaCutieSugar, (void**)&wannaCutieSugar);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x1034D5A3C), (void*)ne_isJailbroken, (void**)&isJailbroken);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x1007D2B10), (void*)ne_setDiagnoseCode, (void**)&setDiagnoseCode);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x10115C1A4), (void*)ne_APSecurityUtilImpl_shared, (void**)&APSecurityUtilImpl_shared);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x10115C47C), (void*)ne_sub_10115C47C, (void**)&sub_10115C47C);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x10115C558), (void*)ne_sub_10115C558, (void**)&sub_10115C558);
//    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x10115C29C), (void*)ne_sub_10115C29C_sysctl, (void**)&sub_10115C29C_sysctl);
//    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x10115C29C), (void*)ne_sub_10115C29C_sysctl, (void**)&sub_10115C29C_sysctl);
//
}
