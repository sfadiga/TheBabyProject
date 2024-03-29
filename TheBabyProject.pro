QT += qml quick svg xml core gui multimedia

android: QT += androidextras

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += \
        radialbar.h

SOURCES += \
        main.cpp \
        radialbar.cpp

RESOURCES += qml.qrc \
          images.qrc \
          sounds.qrc \
          translations.qrc

android: HEADERS += notificationclient.h
android: SOURCES += notificationclient.cpp

TRANSLATIONS += translations/theme_pt.ts

#ifdef Q_OS_ANDROID
INCLUDEPATH += D:\Dev\Qt\5.13.0\android_x86\include\
LIBS += -landroid
#endif

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml \
    android/res/values/strings.xml \
    android/res/values-pt/strings.xml \
    android/src/br/sandrofadiga/NotificationClient.java

contains(ANDROID_TARGET_ARCH,x86) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}
contains(ANDROID_TARGET_ARCH,x86_64) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}
contains(ANDROID_TARGET_ARCH, arm64-v8a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}
contains(ANDROID_TARGET_ARCH, armeabi-v7a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}


# Increment by 3!

#ITERATION=1

#android: contains(QT_ARCH, i386) {
#      win32 {
#            ITERATION = $$system("set /a $$ITERATION + 1")
#        } else:unix {
#            ITERATION = $$system("echo $(($$ITERATION + 1))")
#        }
#    manifest.input = $$PWD/android/AndroidManifest.xml.in
#    manifest.output = $$PWD/android/i386/AndroidManifest.xml
#    QMAKE_SUBSTITUTES += manifest
#}

#contains(ANDROID_TARGET_ARCH, arm64-v8a) {
#    win32 {
#        ITERATION = $$system("set /a $$ITERATION + 2")
#    } else:unix {
#        ITERATION = $$system("echo $(($$ITERATION + 2))")
#    }
#    manifest.input = $$PWD/android/AndroidManifest.xml.in
#    manifest.output = $$PWD/android/arm64/AndroidManifest.xml
#    QMAKE_SUBSTITUTES += manifest
#}

#contains(ANDROID_TARGET_ARCH, armeabi-v7a) {
#    manifest.input = $$PWD/android/AndroidManifest.xml.in
#    manifest.output = $$PWD/android/arm32/AndroidManifest.xml
#    QMAKE_SUBSTITUTES += manifest
#}
