diancan
=======

#####19/28号楼点餐军军用设施

本程序可以有效地预防下雨时点餐人数过多点的菜不好统计导致点菜的同学手忙脚乱七上八下昏头焦额乱七八糟囫囵吞枣一下坏掉的状况。

##配置

本程序需要nodejs,并安装IcedCoffeeScript(命令如下)

    sudo npm install iced-coffee-script -g

    # 如果电脑提示你“sudo不是内部或外部命令，也不是可运行的程序……”说明你的电脑已经坏掉，请重装你的系统或者买一台新电脑

到本程序代码目录下执行

    npm install

将menu.jpg替换成你的菜单（一定要做这一步，repo里的那份菜单好像早就失效了！）。

ps.如果你使用了反向代理将diancan该放到了某个路径下，则请把你的menu.jpg放到web根目录下('/menu.jpg')

##运行

    iced ./ 3000 
    # 程序将运行在http://localhost:3000/

##贡献代码

既然这个repo是公共的，那就fork-PR吧，少年！