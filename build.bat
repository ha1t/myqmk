@echo on

set current_dir=%~dp0
set target=crkbd/rev1/common:via

docker run --rm -it -w /qmk_firmware -v %current_dir%qmk/qmk_firmware:/qmk_firmware qmkfm/qmk_cli make -j8 %target%

pause
