#
# mitk
#

REPLACEME_SV_SPECIAL_COMPILER_SCRIPT

export CC=REPLACEME_CC
export CXX=REPLACEME_CXX

rm -Rf REPLACEME_SV_TOP_BIN_DIR_MITK
mkdir -p REPLACEME_SV_TOP_BIN_DIR_MITK
chmod u+w,a+rx REPLACEME_SV_TOP_BIN_DIR_MITK

rm -Rf REPLACEME_SV_TOP_BLD_DIR_MITK
mkdir -p REPLACEME_SV_TOP_BLD_DIR_MITK
pushd REPLACEME_SV_TOP_BLD_DIR_MITK

REPLACEME_SV_CMAKE_CMD -G REPLACEME_SV_CMAKE_GENERATOR \
  -DMITK_USE_SUPERBUILD=1 \
  -DMITK_USE_GDCM=1 \
  -DMITK_BUILD_EXAMPLES=0 \
  -DBUILD_TESTING=0 \
  -DMITK_USE_Python=1 \
  -DMITK_USE_SWIG=1 \
  -DMITK_USE_SimpleITK=1 \
  -DMITK_USE_VMTK=0 \
  -DMITK_USE_Numpy=1 \
  -DBUILD_SHARED_LIBS=1 \
  -DMITK_USE_SYSTEM_PYTHON=1 \
  -DMITK_PYTHON_SITE_DIR:PATH=REPLACEME_SV_TOP_BIN_DIR_PYTHON/lib/site-packages \
  -DCMAKE_CXX_FLAGS:STRING="-fpermissive -DVCL_CAN_STATIC_CONST_INIT_FLOAT=0" \
  -DCMAKE_C_FLAGS:STRING="-fpermissive -DVCL_CAN_STATIC_CONST_INIT_FLOAT=0" \
  -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
\
  -DEXTERNAL_GDCM_DIR:PATH=REPLACEME_SV_TOP_BIN_DIR_GDCM/REPLACEME_SV_GDCM_CMAKE_LIB_DIR \
  -DEXTERNAL_ITK_DIR:PATH=REPLACEME_SV_TOP_BIN_DIR_ITK/REPLACEME_SV_ITK_CMAKE_LIB_DIR \
  -DEXTERNAL_VTK_DIR:PATH=REPLACEME_SV_TOP_BIN_DIR_VTK/REPLACEME_SV_VTK_CMAKE_LIB_DIR \
  -DEXTERNAL_Numpy_DIR:PATH=REPLACEME_SV_TOP_BIN_DIR_PYTHON/lib/site-packages/numpy \
\
  -DSWIG_EXECUTABLE:FILEPATH=REPLACEME_SV_SWIG_EXECUTABLE \
  -DSWIG_DIR:PATH=REPLACEME_SV_SWIG_DIR \
  -DSWIG_VERSION:STRING=REPLACEME_SV_SWIG_VERSION \
\
  -DPYTHON_DEBUG_LIBRARY:FILEPATH="" \
  -DPYTHON_EXECUTABLE:FILEPATH=REPLACEME_SV_TOP_BIN_DIR_PYTHON/REPLACEME_SV_PYTHON_EXECUTABLE \
  -DPYTHON_INCLUDE_DIR:PATH=REPLACEME_SV_TOP_BIN_DIR_PYTHON/REPLACEME_SV_PYTHON_INCLUDE_DIR \
  -DPYTHON_INCLUDE_DIR2:PATH=REPLACEME_SV_TOP_BIN_DIR_PYTHON/REPLACEME_SV_PYTHON_INCLUDE_DIR \
  -DPYTHON_LIBRARY:FILEPATH=REPLACEME_SV_TOP_BIN_DIR_PYTHON/REPLACEME_SV_PYTHON_LIBRARY \
  -DPYTHON_LIBRARY_RELEASE:FILEPATH=REPLACEME_SV_TOP_BIN_DIR_PYTHON/REPLACEME_SV_PYTHON_LIBRARY \
  -DPYTHON_LIBRARY_DEBUG:FILEPATH="" \
\
   -DQt5_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5 \
   -DQt5Concurrent_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Concurrent \
   -DQt5Core_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Core \
   -DQt5Designer_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Designer \
   -DQt5Gui_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Gui \
   -DQt5Help_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Help \
   -DQt5Network_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Network \
   -DQt5OpenGL_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5OpenGL \
   -DQt5PrintSupport_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5PrintSupport \
   -DQt5Script_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Script \
   -DQt5Sql_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Sql \
   -DQt5Svg_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Svg \
   -DQt5UiTools_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5UiTools \
   -DQt5WebKitWidgets_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5WebKitWidgets \
   -DQt5WebKit_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5WebKit \
   -DQt5Widgets_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Widgets \
   -DQt5XmlPatterns_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5XmlPatterns \
   -DQt5Xml_DIR:PATH=REPLACEME_SV_QT5_DIR/lib/cmake/Qt5Xml \
   -DQT_QMAKE_EXECUTABLE:FILEPATH=REPLACEME_SV_QT5_DIR/REPLACEME_SV_QMAKE_EXECUTABLE \
\
  -DCMAKE_INSTALL_PREFIX:PATH=REPLACEME_SV_TOP_BIN_DIR_MITK \
  -DCMAKE_BUILD_TYPE:STRING=REPLACEME_SV_CMAKE_BUILD_TYPE \
  -DCMAKE_OBJECT_PATH_MAX:STRING=REPLACEME_SV_CMAKE_OBJECT_PATH_MAX \
REPLACEME_SV_TOP_SRC_DIR_MITK

REPLACEME_SV_MAKE_CMD REPLACEME_SV_MITK_MAKE_FILENAME REPLACEME_SV_MAKE_BUILD_PARAMETERS

REPLACEME_SV_MAKE_CMD REPLACEME_SV_MITK_MAKE_FILENAME REPLACEME_SV_MAKE_INSTALL_PARAMETERS

popd



