# Setup Karate Mobile

1. Setup Environment:
- Tải OpenJDK: Khuyến khích bản 17 (https://aka.ms/download-jdk/microsoft-jdk-17.0.13-windows-x64.msi)
- Tải Maven: https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.zip
- Tải Android Studio: https://developer.android.com/studio
  + Tải hết cái họ yêu cầu, để đảm bảo đầy đủ công cụ.
  + Cài đặt biến môi trường Android (Chỉ cái Android trong mục Android)
  + Truy cập vào Android Studio tải SDK tools.
- Setup biến môi trường tại path environment (Tùy theo mọi người cấu hình đường dẫn ở đâu):
  + Java: C:\Program Files\Java\jdk-17\bin
  + Maven: D:\Environments\apache-maven-3.9.9\bin
  + Android:
    + Android: C:\Users\meobo\AppData\Local\Android\Sdk
    + Android tools: C:\Users\meobo\AppData\Local\Android\Sdk\tools
    + Android tools\bin: C:\Users\meobo\AppData\Local\Android\Sdk\tools\bin
    + Android platform-tools: C:\Users\meobo\AppData\Local\Android\Sdk\platform-tools
    + Android build-tools: C:\Users\meobo\AppData\Local\Android\Sdk\build-tools
- Tải Intellij:
  + Tải plugin: Cucumber for java, gherkin
- Tạo máy ảo Android:
  + Mở ứng dụng Android Studio và tạo máy ảo. (nhớ lưu ý lại phiên bản, platform, tên máy ảo)
2.Tải ứng dụng hỗ trợ:
- Appium server desktop
- Appium inspector
3. Chạy ứng dụng
- Download source code về.
- Mở máy ảo. Mở terminal và cd vào thư mục: C:\Users\meobo\AppData\Local\Android\Sdk\emulator. Gõ emulator -avd (Tên máy ảo ở bước trên) VD: emulator -avd Medium
- Chạy Appium Server => Chọn mục advance => allow-cors => start
- Mở source code bằng intellij, load file pom.xml để maven kéo denpendency về.
- Cấu hình lại file karate-config.js (deviceName, avd, platformVersion)
4. Run test case
