# AppBar

![](images/app_bar.png)

## props

leading -> Widget  在title前展示的widget, 具体位置请参考上图

automaticallyImplyLeading -> bool 是否自动添加leading, 如果是true并且leading为null, flutter会自动推断leading应该是什么。 如果是false并且leading为null,将把leading的空间送给title。

title -> Widget 展示title, 具体位置参考上图

titleSpacing -> double 

centerTitle -> bool  title是否应该居中显示

textTheme -> TextTheme  设置AppBar的文本样式

actions -> List<Widget> 在title之后展示的widget, 具体位置参考上图

actionsIconTheme -> IconThemeData  设置actions的icon的样式

flexibleSpace -> Widget 

bottom -> PreferredSizeWidget  看图中位置

bottomOpacity -> double 设置appBar bottom的透明度

brightness -> Brightness

elevation -> double

iconTheme -> IconThemeData  设置AppBar的Icon样式

backgroundColor -> Color  设置appBar的背景颜色

primary -> bool

shape -> ShapeBorder

toolbarOpacity -> double


