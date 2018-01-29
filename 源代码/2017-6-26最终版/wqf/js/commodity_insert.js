//判断浏览器是否支持FileReader接口
if (typeof FileReader == 'undefined') {
    document.getElementById("xmTanDiv").InnerHTML = "<h1>当前浏览器不支持FileReader接口</h1>";
    //使选择控件不可操作
    document.getElementById("xdaTanFileImg").setAttribute("disabled", "disabled");
}
$("#xdaTanFileImg").change(function () {
    var obj = this;
    var file = obj.files[0];
    console.log(obj); console.log(file);
    console.log("file.size = " + file.size);  //file.size 单位为byte
    var reader = new FileReader();
    //读取文件过程方法
    reader.onloadstart = function (e) {
        console.log("开始读取....");
    }
    reader.onprogress = function (e) {
        console.log("正在读取中....");
    }
    reader.onabort = function (e) {
        console.log("中断读取....");
    }
    reader.onerror = function (e) {
        console.log("读取异常....");
    }
    reader.onload = function (e) {
        console.log("成功读取....");
        var img = document.getElementById("xmTanImg");
        img.src = e.target.result;
        //或者 img.src = this.result;  //e.target == this
    }
    reader.readAsDataURL(file)
})
$("#Button2").click(function () {
    var name = $("#exampleInputEmail1").val();
    $("#lab_name").text('');
    var name_text = $("#exampleInputEmail1");
    name_text.css('border', 'solid 1px green');
    if (name.trim().length == 0) {

        name_text.css('border', 'solid 1px red');
        $("#lab_name").text('名称不可为空');
        return false;
    }
    var guanjian = $("#exampleInputPassword1");
    var guanjiantishi = $("#lab_guanjian");
    guanjian.css('border', 'solid 1px green');
    guanjiantishi.text('');
    if (guanjian.val().trim().length == 0) {
        guanjian.css('border', 'solid 1px red');
        guanjiantishi.text('名称不可为空');
        return false;
    }
    var guanjian = $("#exampleInputAmount");
    var guanjiantishi = $("#lab_jiage");
    guanjian.css('border', 'solid 1px green');
    guanjiantishi.text('');
    if (guanjian.val().trim().length == 0) {
        guanjian.css('border', 'solid 1px red');
        guanjiantishi.text('价格不可为空');
        return false;
    }
    var guanjian = $("#exas");
    var guanjiantishi = $("#lab_cankao");
    guanjian.css('border', 'solid 1px green');
    guanjiantishi.text('');
    if (guanjian.val().trim().length == 0) {
        guanjian.css('border', 'solid 1px red');
        guanjiantishi.text('参考价不可为空');
        return false;
    }
    var guanjian = $("#guige");
    var guanjiantishi = $("#lab_guige");
    guanjian.css('border', 'solid 1px green');
    guanjiantishi.text('');
    if (guanjian.val().trim().length == 0) {
        guanjian.css('border', 'solid 1px red');
        guanjiantishi.text('规格不可为空');
        return false;
    }
    var guanjian = $("#leixing");
    var guanjiantishi = $("#lab_leixing");
    guanjian.css('border', 'solid 1px green');
    guanjiantishi.text('');
    if (guanjian.val().trim().length == 0) {
        guanjian.css('border', 'solid 1px red');
        guanjiantishi.text('类型不可为空');
        return false;
    }
    var guanjian = $("#baozhiqi");
    var guanjiantishi = $("#lab_baozhiqi");
    guanjian.css('border', 'solid 1px green');
    guanjiantishi.text('');
    if (guanjian.val().trim().length == 0) {
        guanjian.css('border', 'solid 1px red');
        guanjiantishi.text('保质期不可为空');
        return false;
    }
    var guanjian = $("#chengfen");
    var guanjiantishi = $("#lab_chengfen");
    guanjian.css('border', 'solid 1px green');
    guanjiantishi.text('');
    if (guanjian.val().trim().length == 0) {
        guanjian.css('border', 'solid 1px red');
        guanjiantishi.text('成分不可为空');
        return false;
    }
    var guanjian = $("#chandi");
    var guanjiantishi = $("#lab_chandi");
    guanjian.css('border', 'solid 1px green');
    guanjiantishi.text('');
    if (guanjian.val().trim().length == 0) {
        guanjian.css('border', 'solid 1px red');
        guanjiantishi.text('产地不可为空');
        return false;
    }
    var up = $("#xdaTanFileImg");

    if (up.val() == '') {
        alert('请选择要上传的文件');
        return false;
    }
    if (up.files[0].size > (4 * 1024 * 1024)) {
        alert("文件过大！！！");
        return false;
    }
    var name = up.val().substring(up.val().length, 3);
    if (name != "jpg" && name != "png") {
        alert('请选择正确的图片格式');
        return false;
    }
})