<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="/tools" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%
		Map hotMap = (Map)request.getAttribute("hotMap"); 
		Map soonMap = (Map)request.getAttribute("soonMap"); 
		Map playMap = (Map)request.getAttribute("playMap"); 
		Map boxOfficeMap = (Map)request.getAttribute("boxOfficeMap"); 
		Map wantWatchMap = (Map)request.getAttribute("wantWatchMap"); 
		Map userGradeMap = (Map)request.getAttribute("userGradeMap"); 
	%>
    <title>猫眼电影 - 一网打尽好电影</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="./css/image.css">
    <style>
        @font-face {
            font-family: stonefont;
            src: url('./font/maoyan-font.eot');
            src: url('./font/maoyan-font.eot?#iefix') format('embedded-opentype'), url('./font/maoyan-font.woff') format('woff');
        }

        .stonefont {
            font-family: stonefont;
        }
    </style>
</head>

<body>
    <div class="header">
        <div class="header-inner">
            <a href="/" class="logo" data-act="icon-click"></a>
            <div class="city-container" data-val="{currentcityid:59 }">
                <div class="city-selected">
                    <div class="city-name">
                        成都
                        <span class="caret"></span>
                    </div>
                </div>
                <div class="city-list" data-val="{ localcityid: 59 }">
                    <div class="city-list-header">定位城市：<a class="js-geo-city">成都</a></div>

                </div>
            </div>


            <div class="nav">
                <ul class="navbar">
                    <li><a href="/" data-act="home-click" class="active">首页</a></li>

                    <li><a href="/films" data-act="movies-click">电影</a></li>

                    <li><a href="/board" data-act="board-click">榜单</a></li>
                    <li><a href="/news" data-act="hotNews-click">热点</a></li>
                </ul>
            </div>

            <div class="user-info">
                <div class="user-avatar J-login">
                    <img src="http://p0.meituan.net/movie/7dd82a16316ab32c8359debdb04396ef2897.png">
                    <span class="caret"></span>
                    <ul class="user-menu">
                        <li>
                        <c:if test="${ user != null}"><a href="logout">${user.username }</a></c:if>
                        <c:if test="${ user == null}"><a href="login.jsp">登录</a></c:if>
                        
                        
                        </li>
                    </ul>
                </div>
            </div>

            <form action="/query" target="_blank" class="search-form" data-actform="search-click">
                <input name="kw" class="search" type="search" maxlength="32" placeholder="找影视剧、影人、影院" autocomplete="off">
                <input class="submit" type="submit" value="">
            </form>

            <div class="app-download">
                <a href="/app" target="_blank">
                    <span class="iphone-icon"></span>
                    <span class="apptext">APP下载</span>
                    <span class="caret"></span>
                    <div class="download-icon">
                        <p class="down-title">扫码下载APP</p>
                        <p class="down-content">选座更优惠</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="header-placeholder"></div>

    <div class="banner">
        <div class="slider single-item slider-banner slick-initialized slick-slider slick-dotted" role="toolbar">
            <button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: none;">Previous</button>
            <div aria-live="polite" class="slick-list draggable">
                <div class="slick-track" role="listbox" style="opacity: 1; width: 5120px;">
                    <!-- <a href="" style="width:1280px;display:block;position:relative;left:0;top:0;background:url(./images/e060c3d527d7cb1be1c4c61809db2c84194177.jpg)"></a> -->
                    <a target="_blank" class="slick-slide" data-index="0" href="/films/news/20463" style="width: 1280px; position: relative; left: 0; top: 0px; z-index: 999; opacity: 1; background: url(&quot;./images/b8ced276e8b2b0e30dc90f6791c24c02151630.jpg&quot;) center top no-repeat;  transition: opacity 500ms ease;"></a>
                    <a target="_blank" class="slick-slide" data-index="1" href="/films/news/20463" style="width: 1280px; position: relative; left: -1280px; top: 0px; z-index: 998; opacity: 0; background: url(&quot;./images/e060c3d527d7cb1be1c4c61809db2c84194177.jpg&quot;) center top no-repeat;transition: opacity 500ms ease;"></a>
                    <a target="_blank" class="slick-slide" data-index="2" href="/films/news/20463" style="width: 1280px; position: relative; left: -2560px; top: 0px; z-index: 998; opacity: 0; background: url(&quot;./images/c66e798a871b7bed62941e7e30edfcbb186088.jpg&quot;) center top no-repeat;transition: opacity 500ms ease;"></a>
                    <a target="_blank" class="slick-slide" data-index="3" href="/films/news/20463" style="width: 1280px; position: relative; left: -3840px; top: 0px; z-index: 998; opacity: 0; background: url(&quot;./images/0a6054bf32bc2497bf3c817fbb4a68bf85910.jpg&quot;) center top no-repeat;transition: opacity 500ms ease;"></a>


                    <!-- <a target="_blank" href="/films/news/20476" class="slick-slide"  style="width: 1280px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1; background: url(&quot;http://p1.meituan.net/mmc/b8ced276e8b2b0e30dc90f6791c24c02151630.jpg.webp&quot;) center top no-repeat; "></a>
                    <a target="_blank" href="/films/news/20463" class="slick-slide " style="width: 1280px; position: relative; left: -1280px; top: 0px; z-index: 998; opacity: 0; background: url(&quot;http://p0.meituan.net/mmc/e060c3d527d7cb1be1c4c61809db2c84194177.jpg.webp&quot;) center top no-repeat; "></a> -->

                </div>
            </div>



            <button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: none;">Next</button>
            <ul class="slick-dots" style="display: block;" role="tablist">
                <li aria-hidden="true" role="presentation" aria-selected="true" aria-controls="navigation00" id="slick-slide00" class="slick-active">
                    <button type="button" data-role="none" role="button" tabindex="0">0</button>
                </li>
                <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation01" id="slick-slide01" class="">
                    <button type="button" data-role="none" role="button" tabindex="0">1</button>
                </li>
                <li aria-hidden="false" role="presentation" aria-selected="false" aria-controls="navigation02" id="slick-slide02" class="">
                    <button type="button" data-role="none" role="button" tabindex="0">2</button>
                </li>
                <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation03" id="slick-slide03" class="">
                    <button type="button" data-role="none" role="button" tabindex="0">3</button>
                </li>
            </ul>
        </div>

    </div>

    <div class="container" id="app">
        <div class="content">
            <div class="aside">
                <div class="ranking-box-wrapper">
                    <div class="panel">
                        <div class="panel-header">
                            <span class="panel-title">
        <span class="textcolor_red">今日票房</span>
                            </span>
                        </div>
                        <div class="panel-content">
                            <ul class="ranking-wrapper ranking-box">
                            	<c:forEach items="${boxOfficeMap.boxOfficeList }" var="boxOffice" varStatus="i">
                            		<c:if test="${i.index == 0 }">
                            			<li class="ranking-item ranking-top ranking-index-1">
		                                    <a href="/films/248683" target="_blank" data-act="ticketList-movie-click" data-val="{movieid:248683}">
		                                        <div class="ranking-top-left">
		                                            <i class="ranking-top-icon"></i>
		                                            <img class="ranking-img  default-img" src="images/film/${boxOffice.indexImage }">
		                                        </div>
		                                        <div class="ranking-top-right">
		                                            <div class="ranking-top-right-main">
		                                                <span class="ranking-top-moive-name">${boxOffice.name }</span>
		
		
		                                                <p class="ranking-top-wish">
		                                                    <span class="stonefont">${boxOffice.boxOffice }</span>万
		                                                </p>
		                                            </div>
		                                        </div>
		                                    </a>
		                                </li>
                            		</c:if>
                            		<c:if test="${i.index != 0 }">
                            			 <li class="ranking-item ranking-index-${i.index+1 }">
		                                    <a href="/films/588362" target="_blank" data-act="ticketList-movie-click" data-val="{movieid:588362}">
		                                        <span class="normal-link">
		            <i class="ranking-index">${i.index+1 }</i>
		            <span class="ranking-movie-name">${boxOffice.name }</span>
		
		                                        <span class="ranking-num-info">
		                <span class="stonefont">${boxOffice.boxOffice }</span>万
		                                        </span>
		                                        </span>
		                                    </a>
		                                </li>
                            		</c:if>
                            	</c:forEach>
                            </ul>


                        </div>
                    </div>
                </div>

                <div class="box-total-wrapper clearfix">
                    <h3>今日大盘</h3>
                    <div>
                        <p>
                            <span class="num"><span class="stonefont">.</span></span>万
                            <a class="more" target="_blank" data-act="moreDayTip-click" href="https://piaofang.maoyan.com/">查看更多 <span class="panel-arrow panel-arrow-red"></span></a>
                        </p>
                        <p class="meta-info">
                            北京时间 17:17:04
                            <span class="pull-right">猫眼专业版实时票房数据</span>
                        </p>
                    </div>
                </div>

                <div class="most-expect-wrapper">
                    <div class="panel">
                        <div class="panel-header">
                            <span class="panel-more">
        <a href="/board/6" class="textcolor_orange" data-act="all-mostExpect-click">
          <span>查看完整榜单</span>
                            </a>
                            <span class="panel-arrow panel-arrow-orange"></span>
                            </span>
                            <span class="panel-title">
        <span class="textcolor_orange">最受期待</span>
                            </span>
                        </div>
                        <div class="panel-content">
                            <ul class="ranking-wrapper ranking-mostExpect">
                            	<c:forEach items="${wantWatchMap.wantWatchList }" var="wantWatch" varStatus="i">
                            		<c:if test="${i.index == 0 }">
                            			<li class="ranking-item ranking-top ranking-index-1">
		                                    <a href="/films/248645" target="_blank" data-act="mostExpect-movie-click" data-val="{movieid:248645}">
		                                        <div class="ranking-top-left">
		                                            <i class="ranking-top-icon"></i>
		                                            <img class="ranking-img  default-img" src="images/film/${wantWatch.indexImage }">
		                                        </div>
		                                        <div class="ranking-top-right">
		                                            <div class="ranking-top-right-main">
		                                                <span class="ranking-top-moive-name">${wantWatch.name }</span>
		
		                                                <p class="ranking-release-time">上映时间：${wantWatch.showTime }</p>
		
		                                                <p class="ranking-top-wish">
		                                                    <span class="stonefont">${wantWatch.wantWatch }</span>人想看
		                                                </p>
		                                            </div>
		                                        </div>
		                                    </a>
		                                </li>
                            			
                            		</c:if>
                            		<c:if test="${i.index == 1 || i.index == 2 }">
                            			<li class="ranking-item ranking-index-${i.index+1 }">
		                                    <a href="/films/246012" target="_blank" data-act="mostExpect-movie-click" data-val="{movieid:246012}">
		                                        <i class="ranking-index">${i.index+1 }</i>
		                                        <span class="img-link"><img class="ranking-img default-img" src="images/film/${wantWatch.indexImage }"></span>
		                                        <div class="name-link ranking-movie-name">${wantWatch.name }</div>
		
		                                        <span class="ranking-num-info"><span class="stonefont">${wantWatch.wantWatch }</span>人想看</span>
		                                    </a>
		                                </li>
                            		</c:if>
                            		<c:if test="${i.index > 2 }">
                            			<li class="ranking-item ranking-index-${i.index+1 }">
		                                    <a href="/films/246896" target="_blank" data-act="mostExpect-movie-click" data-val="{movieid:246896}">
		                                        <i class="ranking-index">${i.index+1 }</i>
		                                        <span class="img-link"></span>
		                                        <div class="name-link ranking-movie-name">${wantWatch.name }</div>
		
		                                        <span class="ranking-num-info"><span class="stonefont">${wantWatch.wantWatch }</span>人想看</span>
		                                    </a>
		                                </li>
                            		</c:if>
                            	</c:forEach>
                                
                            </ul>


                        </div>
                    </div>
                </div>

                <div class="top100-wrapper">
                    <div class="panel">
                        <div class="panel-header">
                            <span class="panel-more">
        <a href="/board/4" class="textcolor_orange" data-act="all-TOP100-click">
          <span>查看完整榜单</span>
                            </a>
                            <span class="panel-arrow panel-arrow-orange"></span>
                            </span>
                            <span class="panel-title">
        <span class="textcolor_orange">TOP 100</span>
                            </span>
                        </div>
                        <div class="panel-content">
                            <ul class="ranking-wrapper ranking-top100">
                            	<c:forEach items="${userGradeMap.userGradeList }" var="userGrade" varStatus="i">
                            		<c:if test="${i.index == 0 }">
                            			<li class="ranking-item ranking-top ranking-index-1">
		                                    <a href="/films/1203" target="_blank" data-act="TOP100-movie-click" data-val="{movieid:1203}">
		                                        <div class="ranking-top-left">
		                                            <i class="ranking-top-icon"></i>
		                                            <img class="ranking-img  default-img" src="images/film/${userGrade.indexImage }">
		                                        </div>
		                                        <div class="ranking-top-right">
		                                            <div class="ranking-top-right-main">
		                                                <span class="ranking-top-moive-name">${userGrade.name }</span>
		
		
		                                                <p class="ranking-top-wish">
		                                                    <span class="stonefont">${userGrade.userGrade }</span>分
		                                                </p>
		                                            </div>
		                                        </div>
		                                    </a>
		                                </li>
                            		</c:if>
                            		<c:if test="${i.index >0 }">
                            			<li class="ranking-item ranking-index-${i.index+1 }">
		                                    <a href="/films/1297" target="_blank" data-act="TOP100-movie-click" data-val="{movieid:1297}">
		                                        <span class="normal-link">
		            <i class="ranking-index">${i.index+1 }</i>
		            <span class="ranking-movie-name">${userGrade.name }</span>
		
		                                        <span class="ranking-num-info">
		                <span class="stonefont">${userGrade.userGrade }</span>分
		                                        </span>
		                                        </span>
		                                    </a>
		                                </li>
                            		</c:if>
                            	</c:forEach>
                               
                            </ul>


                        </div>
                    </div>
                </div>

            </div>
            <div class="main">
                <div class="movie-grid">
                    <div class="panel">
                        <div class="panel-header">
                            <span class="panel-more">
        <a href="/films?showType=1" class="textcolor_red" data-act="all-playingMovie-click">
          <span>全部</span>
                            </a>
                            <span class="panel-arrow panel-arrow-red"></span>
                            </span>
                            <span class="panel-title">
        <span class="textcolor_red">正在热映（${hotMap.hotCount }部）</span>
                            </span>
                        </div>
                        <div class="panel-content">
                            <dl class="movie-list">
                            	<c:forEach items="${hotMap.hotList }" var="hot" >
                            	
                            	
                                <dd>
                                    <div class="movie-item">
                                        <a href="/films/248683" target="_blank" data-act="playingMovie-click" data-val="{movieid:248683}">
                                            <div class="movie-poster">
                                                <img src="images/film/${hot.indexImage }">
                                                <div class="movie-overlay movie-overlay-bg">
                                                    <div class="movie-info">
                                                        <div class="movie-score"><i class="integer">${t:split(hot.userGrade)[0] }.</i><i class="fraction">${t:split(hot.userGrade)[1] }</i></div>
                                                        <div class="movie-title movie-title-padding" title="${hot.name }">${hot.name }</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="movie-detail movie-detail-strong movie-sale">
                                            <a href="http://www.meituan.com/dianying/248683?#content" class="active" target="_blank" data-act="salePlayingMovie-click" data-val="{movieid:248683}">购 票</a>
                                        </div>
                                        <div class="movie-ver"><i class="imax3d"></i></div>
                                    </div>

                                </dd>
                                </c:forEach>
                               
                            </dl>


                        </div>
                    </div>

                    <div class="panel">
                        <div class="panel-header">
                            <span class="panel-more">
        <a href="/films?showType=2" class="textcolor_blue" data-act="all-upcomingMovie-click">
          <span>全部</span>
                            </a>
                            <span class="panel-arrow panel-arrow-blue"></span>
                            </span>
                            <span class="panel-title">
        <span class="textcolor_blue">即将上映（${soonMap.soonCount }部）</span>
                            </span>
                        </div>
                        <div class="panel-content">
                            <dl class="movie-list">
                                <c:forEach items="${soonMap.soonList }" var="soon">
                                	<dd>
                                		<div class="movie-item">
                                        <a href="/films/1197452" target="_blank" data-act="upcomingMovie-click" data-val="{movieid:1197452}">
                                            <div class="movie-poster">
                                                <img src="images/film/${soon.indexImage }">
                                                <div class="movie-overlay movie-overlay-bg">
                                                    <div class="movie-info">
                                                        <div class="movie-title" title="${soon.name }">${soon.name }</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="movie-detail movie-wish"><span class="stonefont">${soon.wantWatch }</span>人想看</div>
                                        <div class="movie-detail movie-detail-strong movie-presale">
                                            <a class="movie-presale-sep">预告片
  </a><a href="http://www.meituan.com/dianying/1197452?#content" class="active" target="_blank" data-act="presaleUpcomingMovie-click" data-val="{movieid:1197452}">预 售</a>
                                        </div>
                                        <div class="movie-ver"></div>
                                    </div>
                                    <div class="movie-detail movie-rt">${soon.showTime }上映</div>
                                   </dd>
                                </c:forEach>
                                
                            </dl>


                        </div>
                    </div>

                    <div class="panel">
                        <div class="panel-header">
                            <span class="panel-more">
        <a href="/films?isPlay=1" class="textcolor_red" data-act="all-hotMovie-click">
          <span>全部</span>
                            </a>
                            <span class="panel-arrow panel-arrow-red"></span>
                            </span>
                            <span class="panel-title">
        <span class="textcolor_red">热播电影</span>
                            </span>
                            <span class="panel-subtitle">
        <a href="/films?isPlay=1&amp;catId=3" data-act="tag-hotMovie-click" data-val="{TagName:'爱情'}">爱情</a>
      </span> <span class="panel-subtitle">
        <a href="/films?isPlay=1&amp;catId=2" data-act="tag-hotMovie-click" data-val="{TagName:'喜剧'}">喜剧</a>
      </span> <span class="panel-subtitle">
        <a href="/films?isPlay=1&amp;catId=5" data-act="tag-hotMovie-click" data-val="{TagName:'动作'}">动作</a>
      </span> <span class="panel-subtitle">
        <a href="/films?isPlay=1&amp;catId=6" data-act="tag-hotMovie-click" data-val="{TagName:'恐怖'}">恐怖</a>
      </span> <span class="panel-subtitle">
        <a href="/films?isPlay=1&amp;catId=4" data-act="tag-hotMovie-click" data-val="{TagName:'动画'}">动画</a>
      </span> </div>
                        <div class="panel-content">
                            <dl class="movie-list">
                            	<c:forEach items="${playMap.playList }" var="play" varStatus="i"  >
	                            	<dd>
	                                    <div class="movie-item ">
	                                        <a href="/films/248683" target="_blank" data-act="hotMovie-click" data-val="{movieid:248683}">
	                                            <div class="movie-poster ${i.first ? 'movie-poster-long' : ''}">
	                                   
	                                                <img src="images/film/${play.indexImage }">
	                                                <div class="movie-overlay movie-overlay-bg">
	                                                    <div class="movie-info">
	                                                        <div class="movie-score"><i class="integer">9.</i><i class="fraction">1</i></div>
	                                                        <div class="movie-title movie-title-padding" title="${play.name }">${play.name }</div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </a>
	                                        <div class="movie-ver"><i class="imax3d"></i></div>
	                                    </div>
	
	                                </dd>
                            	</c:forEach>
                                
                                
                            </dl>


                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="footer" style="visibility: visible;">
        <p class="friendly-links">
            友情链接 :
            <a href="http://www.meituan.com" data-query="utm_source=wwwmaoyan" target="_blank">美团网</a>
            <span></span>
            <a href="http://i.meituan.com/client" data-query="utm_source=wwwmaoyan" target="_blank">美团下载</a>
        </p>
        <p>
            ©2016 猫眼电影 maoyan.com
            <a href="https://tsm.miit.gov.cn/pages/EnterpriseSearchList_Portal.aspx?type=0&amp;keyword=京ICP证160733号&amp;pageNo=1" target="_blank">京ICP证160733号</a>
            <a href="http://www.miibeian.gov.cn" target="_blank">京ICP备16022489号-1</a> 京公网安备 11010502030881号
            <a href="/about/licence" target="_blank">网络文化经营许可证</a>
            <a href="http://www.meituan.com/about/rules" target="_blank">电子公告服务规则</a>
        </p>
        <p>北京猫眼文化传媒有限公司</p>
    </div>

<script src="js/tools.js"></script>
</body>

</html>