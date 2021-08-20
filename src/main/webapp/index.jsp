<%@ page language="java" pageEncoding="utf-8" import="java.util.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>

    <script src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>

<!--头部导航-->

<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="row">
            <div class="navbar-header col-md-offset-1 col-xs-offset-1">
                <span class="navbar-brand" style="color: white;">重财校园二手交易网</span>
            </div>
            <form class="navbar-form col-md-4 col-xs-4" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <a type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span> </a>
            </form>
            <div class="navbar-header">
                </span><a class="navbar-brand" href="index.html">首页</a>
                </span><a class="navbar-brand" href="store.html">商城</a>
                </span><a class="navbar-brand" href="wanting_buying.html">求购商城</a>
                </span><a class="navbar-brand" href="feedback.html">反馈</a>
                </span><a class="navbar-brand" href="contact_us.html">联系我们</a>
                </span><a class="navbar-brand" href="login.html">登录</a>
                </span><a class="navbar-brand" href="register.html">注册</a>
                </span><a class="navbar-brand" href="shopping_cars.html">购物车</a>
            </div>
        </div>
    </div>
</nav>

<!--主体部分-->
<div class="container" style=" height: 1520px;">
    <!--  轮播图-->
    <div id="slidershow" class="carousel slide container" data-ride="carousel" data-interval = 4000 data-pause = "hover" data-wrap="true" >
        <!-- 设置图片轮播的顺序，图片下面的小点-->
        <ol class="carousel-indicators">
            <li class="active" data-target="#slidershow" data-slide-to="0" ></li>
            <li data-target="#slidershow" data-slide-to="1"></li>
            <li data-target="#slidershow" data-slide-to="2"></li>
        </ol>
        <!--设置轮播的图片,这里的width:1170px;是调整轮播图的图片的大小的-->
        <div class="carousel-inner turn-left" style="width:1170px;">
            <div class="item active">
                <a href="##"><img src="images/1.jpg" alt="cat1" style="height: 400px; width: 100%;"></a>
            </div>
            <div class="item">
                <a href="##"><img src="images/1.jpg" alt="cat2" style="height: 400px; width: 100%;"></a>
            </div>
            <div class="item">
                <a href="##"><img src="images/1.jpg" alt="cat3" style="height: 400px; width: 100%;"></a>
            </div>
        </div>
        <!--  设置图片上的箭头，调整图片方向-->
        <a class="left carousel-control" href="#slidershow" role="button" data-slide="prev" >
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#slidershow" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>

    <hr/>

    <!--  精选商品-->
    <div class="container turn-left">
        <!--面板-->
        <div class="panel panel-warning container turn-left">
            <div class="panel-heading">
                <h2 class="text-center">精选商品</h2>
            </div>
            <div class="panel-body">

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/1.jpg">
                        <h3>周雨彤</h3>
                        <p title="出生于安徽省，中国内地女演员国内地女演员国内地女演员。" style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">出生于安徽省，中国内地女演员国内地女演员国内地女演员。</p>
                    </div>
                    <button class="btn btn-default" style="margin-left: 55px;margin-bottom: 10px;">
                        <span class="glyphicon glyphicon-shopping-cart" style="color: #c9302c;"></span> 加入购物车
                    </button>
                </div>

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/1.jpg">
                        <h3>周雨彤</h3>
                        <p title="出生于安徽省，中国内地女演员国内地女演员国内地女演员。" style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">出生于安徽省，中国内地女演员国内地女演员国内地女演员。</p>
                    </div>
                    <button class="btn btn-default" style="margin-left: 55px;margin-bottom: 10px;">
                        <span class="glyphicon glyphicon-shopping-cart" style="color: #c9302c;"></span> 加入购物车
                    </button>
                </div>

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/1.jpg">
                        <h3>周雨彤</h3>
                        <p title="出生于安徽省，中国内地女演员国内地女演员国内地女演员。" style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">出生于安徽省，中国内地女演员国内地女演员国内地女演员。</p>
                    </div>
                    <button class="btn btn-default" style="margin-left: 55px;margin-bottom: 10px;">
                        <span class="glyphicon glyphicon-shopping-cart" style="color: #c9302c;"></span> 加入购物车
                    </button>
                </div>

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/1.jpg">
                        <h3>周雨彤</h3>
                        <p title="出生于安徽省，中国内地女演员国内地女演员国内地女演员。" style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">出生于安徽省，中国内地女演员国内地女演员国内地女演员。</p>
                    </div>
                    <button class="btn btn-default" style="margin-left: 55px;margin-bottom: 10px;">
                        <span class="glyphicon glyphicon-shopping-cart" style="color: #c9302c;"></span> 加入购物车
                    </button>
                </div>

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/1.jpg">
                        <h3>周雨彤</h3>
                        <p title="出生于安徽省，中国内地女演员国内地女演员国内地女演员。" style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">出生于安徽省，中国内地女演员国内地女演员国内地女演员。</p>
                    </div>
                    <button class="btn btn-default" style="margin-left: 55px;margin-bottom: 10px;">
                        <span class="glyphicon glyphicon-shopping-cart" style="color: #c9302c;"></span> 加入购物车
                    </button>
                </div>

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/1.jpg">
                        <h3>周雨彤</h3>
                        <p title="出生于安徽省，中国内地女演员国内地女演员国内地女演员。" style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">出生于安徽省，中国内地女演员国内地女演员国内地女演员。</p>
                    </div>
                    <button class="btn btn-default" style="margin-left: 55px;margin-bottom: 10px;">
                        <span class="glyphicon glyphicon-shopping-cart" style="color: #c9302c;"></span> 加入购物车
                    </button>
                </div>

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/1.jpg">
                        <h3>周雨彤</h3>
                        <p title="出生于安徽省，中国内地女演员国内地女演员国内地女演员。" style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">出生于安徽省，中国内地女演员国内地女演员国内地女演员。</p>
                    </div>
                    <button class="btn btn-default" style="margin-left: 55px;margin-bottom: 10px;">
                        <span class="glyphicon glyphicon-shopping-cart" style="color: #c9302c;"></span> 加入购物车
                    </button>
                </div>

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="images/1.jpg">
                        <h3>周雨彤</h3>
                        <p title="出生于安徽省，中国内地女演员国内地女演员国内地女演员。" style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">出生于安徽省，中国内地女演员国内地女演员国内地女演员。</p>
                    </div>
                    <button class="btn btn-default" style="margin-left: 55px;margin-bottom: 10px;">
                        <span class="glyphicon glyphicon-shopping-cart" style="color: #c9302c;"></span> 加入购物车
                    </button>
                </div>
            </div>
        </div>
    </div>

    <hr/>

    <div class="container turn-left" style="background-color: #9acfea; height: 200px;">
        <div class="row">
            <div class="col-md-4" style="border: 1px black dotted;height: 200px;">
                <h4 class="text-center"><b>关于我们</b></h4>
                <p>&nbsp;&nbsp;该网站成立于2021年，是重庆财经学院最大的校内二手交易网站，拥有2万人的注册用户，
                    日常在线1万人，交易金额达到了100万人民币，</p>
            </div>
            <div class="col-md-4" style="border: 1px black dotted;height: 200px;">
                <h4 class="text-center"><b>特色服务</b></h4>
                <p>&nbsp;&nbsp;每一位在本网站上的交易都会受到监测，每一个货物都是线下校园里面交易。</p>
            </div>
            <div class="col-md-4" style="border: 1px black dotted;height: 200px;">
                <h4 class="text-center"><b>版权申明</b></h4>
                <p>&nbsp;&nbsp;本网站社区发的所有的信息，都是视为发布者同意本网站免费使用；同时发布的信息侵害了国家个人的利益，本
                    网站有权责令修改或删除。</p>
            </div>
        </div>
    </div>
</div>

<!--底部部分-->
<div class="container" style="background-color: #9acfea; height: 100px; margin-top: 10px;">
    <h2 class="text-center">Copyright © 2021.Company name All rights reserved.</h2>
</div>

</body>
</html>
