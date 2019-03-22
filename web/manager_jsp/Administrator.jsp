<%@ page import="com.mybean.ProjectBean" %>
<%@ page import="com.dao.AdProjectDao" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/5
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>外包管理平台-Administrator</title>

    <link rel="icon" type="image/png" sizes="96x96" href="../assets/images/icon/ArcSoft_icon.png">
    <link href="../assets/css/main.css" type="text/css" rel="stylesheet">
    <link href="../assets/css/administrator.css" type="text/css" rel="stylesheet">
    <link href="../assets/font-awesome-4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">
    <link href="../assets/jquery-ui-1.12.1.custom/jquery-ui.css" type="text/css" rel="stylesheet">
    <link href="//at.alicdn.com/t/font_762060_905j2m67bm4.css" type="text/css" rel="stylesheet">

    <script src="../assets/jQuery/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="../assets/jQuery/jQuery1.7.js" type="text/javascript"></script>
    <script src="../assets/jquery-ui-1.12.1.custom/jquery-ui.js" type="text/javascript"></script>
    <script src="../assets/javascript/getXmlHttpRequest.js" type="text/javascript"></script>
    <script src="../assets/jQuery-slimScroll-1.3.8/jquery.slimscroll.js" type="text/javascript"></script>
    <script src="../assets/javascript/navbar.js" type="text/javascript"></script>
    <script src="../assets/javascript/sidebar.js" type="text/javascript"></script>
    <script src="../assets/javascript/administrator.js" type="text/javascript"></script>
    <style>
        .iconfont{
            font-size: 24px;
            vertical-align: middle;
        }
        .icon-jiantouzuo{
            color: rgba(120,120,120,1);
        }
        .icon-lingdang{
            font-size: 22px;
            font-weight: 500;
        }
        .icon-jiantou2{
            font-size: 15px;
        }
        .icon-ziyuan{
            font-size: 14px;
            margin-right: 5px;
        }
        .icon-youjian{
            font-size: 14px;
            margin-right: 8px;
        }
        .page-nav .iconfont{
            font-size: 18px;
            color: #AEB7C2;
            margin-right: 10px;
        }
        .page-nav .icon-jiantou2{
            font-size: 14px;
            position: relative;
            margin: 0;
            display: inline-block;
            float: right;
            line-height: 1.5;
        }
        .page-nav .icon-biaoji{
            font-size: 15px;
        }

        .fa{
        }
        .fa-sign-out{
            color: #fff;
            font-size: 20px;
            vertical-align: middle;
        }
    </style>

</head>
<body>
<div id="container">
    <nav class="navbar">
        <div class="brand">
            <a href="http://www.arcsoft.com.cn/" target="_blank"><img src="../assets/images/logo/ArcSoft.png" alt="ArcSoft" class="brand-img logo"></a>
        </div>
        <div class="navbar-container-fluid">
            <div class="navbar-btn">
                <button class="btn-toggle"><i class="iconfont icon-jiantouzuo"></i></button>
            </div>
            <form class="navbar-form">
                <div class="input-group">
                    <input type="text"
                           class="input-control"
                           placeholder="Search...">
                    <span class="input-group-btn">
                            <button type="button" class="btn input-btn">Go</button>
                        </span>
                </div>
            </form>
            <div class="navbar-logout">
                <a class="btn-logout"><i class="fa fa-sign-out"></i><span>SIGN OUT</span></a>
            </div>
            <div class="navbar-menu">
                <ul class="navbar-nav">
                    <li class="navbar-dropdown navbar-dropdown-notifications">
                        <a href="javascript:" class="dropdown-toggle notifications-toggle">
                            <i class="iconfont icon-lingdang"></i>
                            <span class="notice bg-danger">5</span>
                        </a>
                        <ul class="navbar-dropdown-menu notifications-menu">
                            <li>
                                <a href="javascript:" class="notifications">
                                    <span class="dot bg-danger"></span>
                                    System space is almost full
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="notifications">
                                    <span class="dot bg-success"></span>
                                    You have 9 unfinished tasks
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="notifications">
                                    <span class="dot bg-success"></span>
                                    Monthly report is available
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="notifications">
                                    <span class="dot bg-warning"></span>
                                    Weekly meeting in 1 hour
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="notifications">
                                    <span class="dot bg-danger"></span>
                                    Your request has been approved,you can try again
                                </a>
                            </li>
                            <li class="more">
                                <a href="javascript:" class="more-notifications">
                                    See all notifications
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="navbar-dropdown">
                        <a href="javascript:" class="dropdown-toggle help-toggle">
                            <i class="iconfont icon-bangzhu"></i>
                            <span>Help</span>
                            <i class="iconfont icon-jiantou2"></i>
                        </a>
                        <ul class="navbar-dropdown-menu help-menu">
                            <li>
                                <a href="javascript:" class="help">
                                    Basic Use
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="help">
                                    Working With Data
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="help">
                                    Troubleshooting
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="navbar-dropdown">
                        <a href="javascript:" class="dropdown-toggle person-toggle">
                            <img src="../assets/images/profile_photos/bear.png" class="head-image">
                            <span>Jackson</span>
                            <i class="iconfont icon-jiantou2"></i>
                        </a>
                        <ul class="navbar-dropdown-menu person-menu">
                            <li>
                                <a href="javascript:" class="person">
                                    <i class="iconfont icon-ziyuan"></i>
                                    <span>My Profile</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="person">
                                    <i class="iconfont icon-youjian"></i>
                                    <span>Message</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="sidebar">
        <div class="sidebar-scroll">
            <nav>
                <ul class="page-nav">
                    <li>
                        <a href="HomePage.jsp" class="">
                            <i class="iconfont icon-home"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="Charts.jsp" class="">
                            <i class="iconfont icon-tubiao"></i>
                            <span>Charts</span>
                        </a>
                    </li>
                    <li class="sidebar-dropdown">
                        <a class="">
                            <i class="iconfont icon-xiangmu"></i>
                            <span>Projects</span>
                            <i class="iconfont icon-jiantou2"></i>
                        </a>
                        <ul class="sidebar-dropdown-menu">
                            <li>
                                <a href="Establish.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Establish</span>
                                </a>
                            </li>
                            <li>
                                <a href="ViewProjects.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Overview</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-dropdown">
                        <a class="">
                            <i class="iconfont icon-renyuan"></i>
                            <span>Employees</span>
                            <i class="iconfont icon-jiantou2"></i>
                        </a>
                        <ul class="sidebar-dropdown-menu">
                            <li>
                                <a href="Additions.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Additions</span>
                                </a>
                            </li>
                            <li>
                                <a href="ViewEmployees.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Overview</span>
                                </a>
                            </li>
                            <li>
                                <a href="Authorization.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Authorization</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="Notifications.jsp" class="">
                            <i class="iconfont icon-lingdang"></i>
                            <span>Notifications</span>
                        </a>
                    </li>
                    <li class="sidebar-dropdown">
                        <a class="">
                            <i class="iconfont icon-shezhi"></i>
                            <span>Settings</span>
                            <i class="iconfont icon-jiantou2"></i>
                        </a>
                        <ul class="sidebar-dropdown-menu">
                            <li>
                                <a href="Account.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Account</span>
                                </a>
                            </li>
                            <li>
                                <a href="Password.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Password</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="Companies.jsp" class="">
                            <i class="iconfont icon-gongsi1"></i>
                            <span>Companies</span>
                        </a>
                    </li>
                    <li>
                        <a href="Administrator.jsp" class="current">
                            <i class="iconfont icon-guanliyuan"></i>
                            <span>Administrators</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="panel panel-profile">
                    <div class="myprofile">
                        <div class="profile-left">
                            <div class="profile-head">
                                <div class="overlay"></div>
                                <div class="profile-main">
                                    <img src="../assets/images/profile_photos/bear.png" class="img-circle head-image" title="点击更换头像">
                                    <h3 class="name">Jackson</h3>
                                    No.  <span class="register-time">15001</span>
                                </div>
                                <div class="profile-state">
                                    <div class="row">
                                        <div class="col-md-4 state-item">
                                            <span>45</span>
                                            <span>Projects</span>
                                        </div>
                                        <div class="col-md-4 state-item">
                                            <span>250,000</span>
                                            <span>Funds</span>
                                        </div>
                                        <div class="col-md-4 state-item">
                                            <span>17</span>
                                            <span>Workdays</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="profile-detail">
                                <div class="profile-info">
                                    <h4 class="heading">Basic Info</h4>
                                    <ul class="list-unstyle list-profile">
                                        <li>Birthday<span class="basic-info" id="birthday">1997-02-19</span></li>
                                        <li>Mobile<span class="basic-info" id="mobile">15868141740</span></li>
                                        <li>Email<span class="basic-info" id="email">731801843@qq.com</span></li>
                                        <li>Education<span class="basic-info" id="education">Master</span></li>
                                        <li>Registration<span>2018-09-01</span></li>
                                    </ul>
                                </div>
                                <div class="profile-info">
                                    <h4 class="heading">Social</h4>
                                    <ul class="list-inline social-icons">
                                        <li>
                                            <a class="wechat">
                                                <i class="iconfont icon-weixin"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="qq">
                                                <i class="iconfont icon-qq"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="text-center">
                                    <a class="btn btn-edit">Edit profile</a>
                                </div>
                            </div>
                        </div>
                        <div class="profile-right">
                            <h4 class="heading"><span>Jackson</span>'s Awards</h4>
                            <div class="awards">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="awards-item">
                                            <div class="hexagon">
                                                <span class="iconfont icon-rongyu award-icon"></span>
                                            </div>
                                            <span>懒人</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="awards-item">
                                            <div class="hexagon">
                                                <span class="iconfont icon-rongyu award-icon"></span>
                                            </div>
                                            <span>胖子</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <a class="btn btn-awards">See all awards</a>
                                </div>
                            </div>
                            <div class="custom-tabs-line tabs-line-bottom left-align">
                                <ul class="nav table-list">
                                    <li class="active">
                                        <a>Projects</a>
                                    </li>
                                    <li class="">
                                        <a>Recent</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-panel">
                                    <div class="tab-container">
                                        <table class="table project-table thead-container">
                                            <thead>
                                            <tr>
                                                <th>Project</th>
                                                <th>Progress</th>
                                                <th>Leader</th>
                                                <th>Status</th>
                                            </tr>
                                            </thead>
                                        </table>
                                        <table class="table project-table tbody-container">
                                            <tbody>
                                            <tr>
                                                <td class="tbody-td">
                                                    <div class="table-container">
                                                        <div class="scrollbar">
                                                            <table class="table">
                                                                <tbody>
                                                                <%
                                                                    ProjectBean projectBean = null;
                                                                    if (request.getSession().getAttribute("adProjectBean") != null){
                                                                        projectBean = (ProjectBean)request.getSession().getAttribute("adProjectBean");
                                                                    }
                                                                    else {
                                                                        AdProjectDao adProjectDao = new AdProjectDao();
                                                                        projectBean = adProjectDao.getAdproject();
                                                                        request.getSession().setAttribute("adProjectBean",projectBean);
                                                                    }
                                                                    String[][] adProjectRecord = projectBean.getProjectRecord();
                                                                    for (int i = 0;i < projectBean.getRowNumber();i++){
                                                                        String percentage;
                                                                        String judge = adProjectRecord[i][3];
                                                                        out.print("<tr>");
                                                                        for (int j = 0;j < projectBean.getColumnNumber();j++){
                                                                            %>
                                                                                <td><a class="project-name"><%=adProjectRecord[i][j]%></a></td>
                                                                                <td>
                                                                                    <div class="progress">
                                                                                        <%
                                                                                            percentage = adProjectRecord[i][++j] + "%";
                                                                                        %>
                                                                                        <div class="progressbar <%=judge%>" style="width: <%=percentage%>">
                                                                                            <span class="progress-number"><%=percentage%></span>
                                                                                        </div>
                                                                                    </div>
                                                                                </td>
                                                                                <td>
                                                                                    <a><%=adProjectRecord[i][++j]%></a>
                                                                                </td>
                                                                                <td>
                                                                                    <span class="label label-<%=adProjectRecord[i][++j]%>"><%=adProjectRecord[i][j]%></span>
                                                                                </td>
                                                                            <%
                                                                        }
                                                                        out.print("</tr>");
                                                                    }
                                                                %>
                                                                <tr>
                                                                    <td><a class="project-name">丑团外卖</a></td>
                                                                    <td>
                                                                        <div class="progress">
                                                                            <div class="progressbar" style="width: 60%">
                                                                                <span class="progress-number">60%</span>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <a>Michael</a>
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-processing">PROCESSING</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a class="project-name">丑团外卖</a></td>
                                                                    <td>
                                                                        <div class="progress">
                                                                            <div class="progressbar" style="width: 0">
                                                                                <span class="progress-number">0%</span>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <a class="leader">Michael</a>
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-notyet">NOT YET</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a class="project-name">低德地图</a></td>
                                                                    <td>
                                                                        <div class="progress">
                                                                            <div class="progressbar review" style="width: 100%">
                                                                                <span class="progress-number">100%</span>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <a class="leader">Michael</a>
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-review">REVIEW</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a class="project-name">穿越火坑</a></td>
                                                                    <td>
                                                                        <div class="progress">
                                                                            <div class="progressbar complete" style="width: 100%">
                                                                                <span class="progress-number">100%</span>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <a class="leader">Michael</a>
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-complete">COMPLETE</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a class="project-name">地下城与美女</a></td>
                                                                    <td>
                                                                        <div class="progress">
                                                                            <div class="progressbar complete" style="width: 100%">
                                                                                <span class="progress-number">100%</span>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <a class="leader">Michael</a>
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-complete">COMPLETE</span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a class="project-name">泡泡堂</a></td>
                                                                    <td>
                                                                        <div class="progress">
                                                                            <div class="progressbar complete" style="width: 100%">
                                                                                <span class="progress-number">100%</span>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <a class="leader">Michael</a>
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-complete">COMPLETE</span>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modify-bg location screenBgDiv">
    <ul>
        <li><a><img src="../assets/images/background/01.jpg"></a></li>
        <li><a><img src="../assets/images/background/42.jpg"></a></li>
        <li><a><img src="../assets/images/background/03.jpg"></a></li>
        <li><a><img src="../assets/images/background/29.jpg"></a></li>
        <li><a><img src="../assets/images/background/59.jpg"></a></li>
    </ul>
</div>
<div class="modify location basic-info-text">

    <form action="../UpdateProfileServlet" method="post">
        <div class="modify-title">
            <span class="">Modify Personal Information</span>
            <a class="cancel"><i class="iconfont icon-cha"></i></a>
        </div>
        <div class="modify-basic-info modify-info-first-div">
            <span class="label-info">Birthday</span>
            <input type="text"
                   maxlength="20"
                   name="birth"
                   class="input-info birth"
                   id="birth"
                   autocomplete="off"
                   placeholder="Choose your date of birth.">
        </div>
        <div class="modify-basic-info">
            <span class="label-info">Mobile</span>
            <input type="text"
                   maxlength="11"
                   name="mobile"
                   class="input-info mobile"
                   placeholder="Enter your phone number.">
        </div>
        <div class="modify-basic-info">
            <span class="label-info">Email</span>
            <input type="text"
                   maxlength="20"
                   name="email"
                   class="input-info email"
                   placeholder="Enter your email address">
        </div>
        <div class="modify-basic-info">
            <span class="label-info">Wechat</span>
            <input type="text"
                   maxlength="20"
                   name="wechat"
                   class="input-info wechat" placeholder="Enter your WeChat account">
        </div>
        <div class="modify-basic-info">
            <span class="label-info">Education</span>
            <select class="input-info " name="education">
                <option>Undergraduate</option>
                <option>Master</option>
                <option>Doctor</option>
            </select>
        </div>
        <div class="modify-basic-info-submit">
            <input type="submit" class="">
        </div>
    </form>

</div>
<div class="modify location avatar">
    <div class="modify-title">
        <span>Change the Avatar</span>
        <a class="cancel"><i class="iconfont icon-cha"></i></a>
    </div>
    <div class="current-image">
        <span class="show-image"><img src="../assets/images/profile_photos/bear.png"></span>
    </div>
    <div class="input-image">
        <input type="file">
    </div>
    <div class="modify-basic-info-submit">
        <input type="submit">
    </div>
</div>
<%--<div id="test1" style="position: fixed;z-index: 9999;width: 200px;height: 200px;background: #8d9093">111</div>--%>
<%--<div id="test2" style="position: fixed;z-index: 9999;width: 200px;height: 200px;background: #8d9093;left: 300px;">111</div>--%>

<script type="text/javascript">
    $(function () {
        $(".sidebar-scroll,.scrollbar").slimScroll({
            height: "95%"
        })

        $(".birth").datepicker({dateFormat:'yy-mm-dd',changeYear:true,yearRange:"c-50:c"});

        $(".screenBgDiv ul li").each(function(){
            $(this).css("opacity","0");
        });
        $(".screenBgDiv ul li:first").css("opacity","1");
        var index = 0;
        var t;
        var li = $(".screenBgDiv ul li");
        var number = li.size();
        function change(index){
            li.css("visibility","visible");
            li.eq(index).siblings().animate({opacity:0},3000);
            li.eq(index).animate({opacity:1},3000);
        }
        function show(){
            index = index + 1;
            if(index <= number-1){
                change(index);
            }else{
                index = 0;
                change(index);
            }
        }
        t = setInterval(show,3000);
        //根据窗口宽度生成图片宽度
        var width = $(window).width();
        $(".screenBgDiv ul img").css("width",width+"px");
    })
</script>

<script>
    //获取管理员信息
    function getAdministratorInfo() {
        var xhr = getXmlHttpRequest();/*document.getElementById("test").innerText ="232134";*/
        var getInfo;
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4){
                if (xhr.status == 200) {
                    // document.getElementById("test").innerText = xhr.responseText;
                    getInfo = xhr.responseText;
                    var info = getInfo.split(",");
                    $("#birthday").text(info[1]);
                    $("#mobile").text(info[2]);
                    $("#email").text(info[0]);
                    $("#education").text(info[3]);
                }
            }
        };
        xhr.open("POST","../GetAdInfoServlet");
        xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
        xhr.send("");
    }

    function getAdProject() {
        var xhr = getXmlHttpRequest();
        xhr.onreadystatechanges = function () {
            if (xhr.ready == 4){
                if (xhr.status == 200){

                }
            }
        }
        xhr.open("POST","../GetAdProjectServlet");
        xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
        xhr.send("");
    }

    
</script>
<script>
    window.onload = function () {
        getAdministratorInfo();
    }
</script>
</body>
</html>
