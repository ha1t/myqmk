

# 全体の流れ

手元にqmk_firmwareを用意して、それを共有してqmk_cliの中でmakeするとhexが作れる。hexの書き込みはWindows上に入れたQMK Toolkitでやる。（Remapでもできるのかもしれない）

# 今のRemap用VIAを作る
BC Break直前のバージョンにしておく

~~~
git clone git@github.com:qmk/qmk_firmware.git
cd qmk_firmware
git checkout tags/0.18.17
~~~

# note

~~~
git clone --depth=1 --filter=blob:none --sparse https://github.com/qmk/qmk_firmware.git
cd qmk_firmware
git sparse-checkout init --cone
git sparse-checkout add bin drivers lib quantum tmk_core util
git sparse-checkout add keyboards/crkbd
git submodule update --init --recursive --depth=1

cp -r ha1t qmk/qmk_firmware/keyboards/crkbd/
~~~

## avrdude

~~~
cd ~/qmk
git clone --depth=1 --filter=blob:none --sparse https://github.com/qmk/qmk_toolbox.git
cd qmk_toolbox
~~~
