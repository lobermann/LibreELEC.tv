# Downloadlocation:
# https://bitbucket.org/MergingTechnologies/ravenna-alsa-lkm/src/master/
PKG_NAME="ravenna-alsa-lkm"
PKG_VERSION="586f3d943c2fa38fcab63335341ae4481a3395db"
PKG_SHA256=""
PKG_ARCH="x86_64"
PKG_LICENSE="nonfree"
PKG_SITE="http://www.broadcom.com/"
PKG_URL="https://github.com/lobermann/ravenna-alsa-lkm/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain linux"
PKG_NEED_UNPACK="$LINUX_DEPENDS"
PKG_LONGDESC=""
PKG_TOOLCHAIN="manual"
PKG_IS_KERNEL_PKG="yes"
make_target() {
  kernel_make -C $(kernel_path) M=`pwd`/driver modules
}
makeinstall_target() {
  mkdir -p $INSTALL/$(get_full_module_dir)/$PKG_NAME
    cp driver/*.ko $INSTALL/$(get_full_module_dir)/$PKG_NAME
}
