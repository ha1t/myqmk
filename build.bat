@echo on

set current_dir=%~dp0
set target=crkbd/rev1/common:via

docker run --rm -it -v %current_dir%qmk/qmk_firmware:/qmk_firmware qmkfm/base_container /bin/bash -c "cd /qmk_firmware && make %target%"

pause
