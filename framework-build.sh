#!/bin/bash 

PROJECT_PATH="$1"
FRAMEWORK_SOURCES_PATH="$2"

cd $PROJECT_PATH

mkdir archive

SIMULATOR_ARCHIVE_PATH=$PROJECT_PATH/archive/ExperienceLink-iphonesimulator.xcarchive
DEVICE_ARCHIVE_PATH=$PROJECT_PATH/archive/ExperienceLink-iphoneos.xcarchive

# build framework for simulators
  xcodebuild archive \
  -scheme ExperienceLink \
  -archivePath $SIMULATOR_ARCHIVE_PATH \
  -configuration Release \
  -sdk iphonesimulator \
  SKIP_INSTALL=NO



#build framework for devices
xcodebuild archive \
  -scheme ExperienceLink \
  -archivePath $DEVICE_ARCHIVE_PATH \
  -sdk iphoneos \
  -configuration Release \
  SKIP_INSTALL=NO



cd $FRAMEWORK_SOURCES_PATH
####################### Create fat xcarchive #############################

xcodebuild -create-xcframework \
  -framework $SIMULATOR_ARCHIVE_PATH/Products/Library/Frameworks/ExperienceLink.framework \
  -framework $DEVICE_ARCHIVE_PATH/Products/Library/Frameworks/ExperienceLink.framework \
  -output ExperienceLink.xcframework

rm -rf $PROJECT_PATH/archive