# jaspOnArch
Build Jasp on Archlinux

Current Progress: Build Pass, Runtime Error!
```
➜  jasp-desktop git:(main) ✗ jasp
Making new argument list for Application startup: jasp
Starting JASP 0.16.2 from commit  and branch 
QtWebEngineQuick initialized
Application initialized
qt.webenginecontext: 

GL Type: desktop
Surface Type: OpenGL
Surface Profile: CompatibilityProfile
Surface Version: 4.6
QSG RHI Backend: OpenGL
Using Supported QSG Backend: yes
Using Software Dynamic GL: no
Using Multithreaded OpenGL: yes

Init Parameters:
  *  application-name JASP 
  *  browser-subprocess-path /usr/lib/qt6/QtWebEngineProcess 
  *  create-default-gl-context  
  *  disable-features ConsolidatedMovementXY,InstalledApp,BackgroundFetch,WebOTP,WebPayments,WebUSB,PictureInPicture 
  *  disable-setuid-sandbox  
  *  disable-speech-api  
  *  enable-features NetworkServiceInProcess,TracingServiceInProcess 
  *  enable-threaded-compositing  
  *  in-process-gpu  
  *  use-gl desktop 

Application init entered
MainWindow constructor started
TempFiles::createSessionDir(): '/home/sukanka/.JASP/temp/3629720' about to be (removed and re)created.
Going to construct the necessary models for JASP to function.
terminate called after throwing an instance of 'std::runtime_error'
  what():  Could not find *any* qm-files!
[1]    3629720 IOT instruction (core dumped)  jasp
```
It also contains reference to $srcdir
```
==> 警告： 软件包含有对 $srcdir 的引用
usr/lib/jasp-desktop/renv-root/install-jaspBase.R
usr/lib/jasp-desktop/renv-root/install-jaspGraphs.R
usr/lib/jasp-desktop/renv-root/install-jaspTools.R
usr/bin/jaspengine
usr/bin/jasp
```


Todo: tune the pkgbuilds.
for example, remove r-jaspbase

