
$(function () {
    $(":checkbox:first").click(fun1);
    $(":checkbox:gt(0)").click(fun2);
    $("tr:gt(0)").mouseover(fun3).mouseout(fun4);
})




//全选与全不选：标题行checkbox的选中状态控制住数据行checkbox
function fun1(){
    //1.获得标题行checkbox的checked
     var flag = $(":checkbox").prop("checked");
     //2.为所有数据行checkbox的checked属性统一赋值
     $(":checkbox:gt(0)").prop("checked",flag);
}

//全选与全不选:数据行checkbox的选中状态控制住标题行checkbox
function fun2(){
      //1.获得数据行checkbox个数
        var ckNum = $(":checkbox:gt(0)").length;
      //2.获得数据行被选中checkbox个数
        var checkedNum = $(":checkbox:gt(0):checked").length;
      //3.判断
        if(ckNum == checkedNum){
            $(":checkbox:first").prop("checked",true);
        }else{
            $(":checkbox:first").prop("checked",false);
        }
}

//鼠标悬停变色
function  fun3(){
    //凡是通过DOM对象与标签关联的处理函数，在运行期间其函数内部的this指向本次引起函数运行的标签的DOM
    //this:本次用户鼠标悬停的tr标签的DOM
    //jquery作者不建议开发人员直接与DOM对象进行交流。$(this)
    $(this).css("background-color","gray");
    $(this).css("color","blue");
}

//鼠标移开变色
function fun4(){
    $(this).css("background-color","white");
    $(this).css("color","black");
}





