#line 1 "/Users/xuzhengda/Documents/codespace/zfb/zfb/zfb.xm"
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
















#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class UISwitch; @class ImmPaySettingService; @class BioRemoteLogger; 
static bool (*_logos_orig$_ungrouped$ImmPaySettingService$uploadFingerprintSwitch$)(_LOGOS_SELF_TYPE_NORMAL ImmPaySettingService* _LOGOS_SELF_CONST, SEL, bool); static bool _logos_method$_ungrouped$ImmPaySettingService$uploadFingerprintSwitch$(_LOGOS_SELF_TYPE_NORMAL ImmPaySettingService* _LOGOS_SELF_CONST, SEL, bool); static UISwitch* (*_logos_orig$_ungrouped$UISwitch$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UISwitch*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UISwitch* _logos_method$_ungrouped$UISwitch$initWithFrame$(_LOGOS_SELF_TYPE_INIT UISwitch*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UISwitch* (*_logos_orig$_ungrouped$UISwitch$initWithCoder$)(_LOGOS_SELF_TYPE_INIT UISwitch*, SEL, NSCoder *) _LOGOS_RETURN_RETAINED; static UISwitch* _logos_method$_ungrouped$UISwitch$initWithCoder$(_LOGOS_SELF_TYPE_INIT UISwitch*, SEL, NSCoder *) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$UISwitch$setOn$animated$)(_LOGOS_SELF_TYPE_NORMAL UISwitch* _LOGOS_SELF_CONST, SEL, BOOL, BOOL); static void _logos_method$_ungrouped$UISwitch$setOn$animated$(_LOGOS_SELF_TYPE_NORMAL UISwitch* _LOGOS_SELF_CONST, SEL, BOOL, BOOL); static void (*_logos_meta_orig$_ungrouped$BioRemoteLogger$report$log$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, int, id); static void _logos_meta_method$_ungrouped$BioRemoteLogger$report$log$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, int, id); 

#line 28 "/Users/xuzhengda/Documents/codespace/zfb/zfb/zfb.xm"

static bool _logos_method$_ungrouped$ImmPaySettingService$uploadFingerprintSwitch$(_LOGOS_SELF_TYPE_NORMAL ImmPaySettingService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1){
    XLog(@"- (_Bool)uploadFingerprintSwitch:(_Bool)arg1 ") psta
    return _logos_orig$_ungrouped$ImmPaySettingService$uploadFingerprintSwitch$(self, _cmd, arg1);
}



static UISwitch* _logos_method$_ungrouped$UISwitch$initWithFrame$(_LOGOS_SELF_TYPE_INIT UISwitch* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    XLog(@"UISwitch initWithFrame")psta
    return _logos_orig$_ungrouped$UISwitch$initWithFrame$(self, _cmd, frame);
}
static UISwitch* _logos_method$_ungrouped$UISwitch$initWithCoder$(_LOGOS_SELF_TYPE_INIT UISwitch* __unused self, SEL __unused _cmd, NSCoder * aDecoder) _LOGOS_RETURN_RETAINED {
    XLog(@"UISwitch initWithCoder")
    return _logos_orig$_ungrouped$UISwitch$initWithCoder$(self, _cmd, aDecoder);
}

static void _logos_method$_ungrouped$UISwitch$setOn$animated$(_LOGOS_SELF_TYPE_NORMAL UISwitch* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL on, BOOL animated){
    XLog(@"UISwitch setOn %d,%d",on,animated)
    psta
    return _logos_orig$_ungrouped$UISwitch$setOn$animated$(self, _cmd, on, animated);
}

































static void _logos_meta_method$_ungrouped$BioRemoteLogger$report$log$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1, id arg2){
    XLog(@"report %d %@",arg1,arg2)
}


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

    long rev=wannaCutieSugar();
    XLog(@"wannaCutieSugar %d",rev)
    psta
    return rev;
}
__int64 (*isJailbroken)();
__int64 ne_isJailbroken(){
    long rev=0; 
    XLog(@"isJailbroken %d",rev)
    psta
    return rev;
}

CDStruct_e6af4fdc *  (*APSecurityUtilImpl_shared)(int a);
CDStruct_e6af4fdc *  ne_APSecurityUtilImpl_shared(int a){
    CDStruct_e6af4fdc *  rev=APSecurityUtilImpl_shared(a);
















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
     long rev=0;
     XLog(@"sub_10115C558 %d",rev)
     return rev;
}
void constructor() __attribute__((constructor));
void constructor(void)
{
    XLog(@"inject")

    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x10115C29C), (void*)ne_sub_10115C29C_sysctl, (void**)&sub_10115C29C_sysctl);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x1007D96F4), (void*)ne_wannaCutieSugar, (void**)&wannaCutieSugar);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x1034D5A3C), (void*)ne_isJailbroken, (void**)&isJailbroken);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x1007D2B10), (void*)ne_setDiagnoseCode, (void**)&setDiagnoseCode);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x10115C1A4), (void*)ne_APSecurityUtilImpl_shared, (void**)&APSecurityUtilImpl_shared);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x10115C47C), (void*)ne_sub_10115C47C, (void**)&sub_10115C47C);
    MSHookFunction((void*)( _dyld_get_image_vmaddr_slide(0)+ 0x10115C558), (void*)ne_sub_10115C558, (void**)&sub_10115C558);



}
static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ImmPaySettingService = objc_getClass("ImmPaySettingService"); MSHookMessageEx(_logos_class$_ungrouped$ImmPaySettingService, @selector(uploadFingerprintSwitch:), (IMP)&_logos_method$_ungrouped$ImmPaySettingService$uploadFingerprintSwitch$, (IMP*)&_logos_orig$_ungrouped$ImmPaySettingService$uploadFingerprintSwitch$);Class _logos_class$_ungrouped$UISwitch = objc_getClass("UISwitch"); MSHookMessageEx(_logos_class$_ungrouped$UISwitch, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$UISwitch$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$UISwitch$initWithFrame$);MSHookMessageEx(_logos_class$_ungrouped$UISwitch, @selector(initWithCoder:), (IMP)&_logos_method$_ungrouped$UISwitch$initWithCoder$, (IMP*)&_logos_orig$_ungrouped$UISwitch$initWithCoder$);MSHookMessageEx(_logos_class$_ungrouped$UISwitch, @selector(setOn:animated:), (IMP)&_logos_method$_ungrouped$UISwitch$setOn$animated$, (IMP*)&_logos_orig$_ungrouped$UISwitch$setOn$animated$);Class _logos_class$_ungrouped$BioRemoteLogger = objc_getClass("BioRemoteLogger"); Class _logos_metaclass$_ungrouped$BioRemoteLogger = object_getClass(_logos_class$_ungrouped$BioRemoteLogger); MSHookMessageEx(_logos_metaclass$_ungrouped$BioRemoteLogger, @selector(report:log:), (IMP)&_logos_meta_method$_ungrouped$BioRemoteLogger$report$log$, (IMP*)&_logos_meta_orig$_ungrouped$BioRemoteLogger$report$log$);} }
#line 177 "/Users/xuzhengda/Documents/codespace/zfb/zfb/zfb.xm"
