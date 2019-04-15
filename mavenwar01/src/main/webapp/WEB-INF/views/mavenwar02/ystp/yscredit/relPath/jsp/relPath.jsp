<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>关联路径查询</title>
    <link rel="icon" href="/yscredit/comfavico.ico">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/css/lib/bootstrap/bootstrap.min.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/css/lib/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/css/lib/bootstrap-slider/bootstrap-slider.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/css/relPath.css">
    <%-------------------define config-----------------------------------------%>
    <script>
        /*关联路径颜色配置*/
        var relatedPathConfig = {
            searchButtonColor:{ //搜索按钮未选中颜色
                color:'#fff',
                backgroundColor:'#ff8b00'
            },
            searchButtonHoverColor:{ //搜索按钮获取鼠标焦点颜色
                color:'#fff',
                backgroundColor:'#ff7b00'
            },
            searchButtonClickColor:{ //搜索按钮选中颜色
                color:'#fff',
                backgroundColor:'#ff7b00'
            },
            searchNodeFillColor: 'blue', //查询节点的颜色
            nodeFillColor: 'green', //关联节点的颜色
            titleColor: '#000', //查询名称的颜色
            shortestLineColor: 'red', //最短路径的颜色
            nodeLabelColor: '#000', //节点文字的颜色
        };
    </script>
    <%-------------------define config-----------------------------------------%>
</head>

<body ng-app="relatedPathModule" ng-controller="relatedPathCtrl">
<!-- 我的反馈弹出框 -->
<div class="modal" id="feedbackDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="top:30%" >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" >建议反馈</h4>
                <span class="modal-title" id="closed" style="float:left;margin-left: 536px;margin-top: -22px;cursor: pointer;">关闭</span>
            </div>
            <div class="modal-body">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;建议内容：</p>
                <textarea id="feedContent" type="text"  style="margin-left:20px;width:500px;height:60px;" maxlength="200"></textarea>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;联系方式：</p>
                <input id="feedPhone" type="text"  style="width:500px;margin-left:20px" placeholder="请留下您的手机号码或邮箱，方便我们联系您"/>
                <span id="errorInfo" style="color:red;width:100px;height:20px;display:none"></span>
            </div>
            <div class="modal-footer">
                <button type="button" id="feedSub" class="btn btn-success" >提交</button>
                <!-- <button type="button" class="btn btn-default" data-dismiss="modal">取消</button> -->
            </div>
        </div>
    </div>
</div>

<!--关联路径-->
<div class="main-container">
    <div class="row" ng-hide="false">
        <div class="search-panel panel-group">
            <div class="slider-div hidden">
                <div><span class="box-title">层数</span></div>
                <div class="slider-container">
                    <span class="slider-left slider-start-number">2</span>
                    <div class="ln-slider slider-left slider-line">
                        <input id="layers_number_input" class="slider " type="text" class="span2" value="" data-slider-min="2" data-slider-max="10" data-slider-step="1" data-slider-value="10"/>
                    </div>
                    <span class="slider-left slider-end-number">10度</span>
                </div>
                <div class="clearfix"></div>
            </div>

            <!-- inputs -->
            <div class="from-to-div from-div">
                <div><span class="box-title">从</span></div>
                <div class="from-to-group">
                    <div class="from-to-input-group left">
                        <div class="input-group">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-default dropdown-toggle from-to-box-left"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" tabIndex="-1">
                                    <span id="from_cp_0" class="cp">企业</span><span class="caret ng-cloak" ng-cloak ng-if="false"></span>
                                </button>
                                <ul class="dropdown-menu" ng-if="false">
                                    <li class="company"><a href="#">企业</a></li>
                                    <li class="person"><a href="#">企业关联人</a></li>
                                </ul>
                            </div><!-- /btn-group -->
                            <input id="from_input_0" data-type="C" class="from-box" type="text" placeholder="请输入企业名称"></input>
                        </div><!-- /input-group -->
                        <button class="glyphicon glyphicon-remove remove-icon" tabIndex="-1"></button>
                    </div>
                    <div class="from-plus-minus-group left hidden">
                        <button class="glyphicon glyphicon-plus plus-icon"></button>
                    </div>
                    <div class="clearfix" ></div>
                    <div class="noresults-warning" style="display: none;"><span class="icon-warning">未查询到相关信息。</span></div>
                </div>

                <div class="from-to-group hidden" ng-if="false">
                    <div class="from-to-input-group left">
                        <div class="input-group">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-default dropdown-toggle from-to-box-left"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" tabIndex="-1">
                                    <span id="from_cp_1" class="cp">企业</span><span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li class="company"><a href="#">企业</a></li>
                                    <li class="person"><a href="#">企业关联人</a></li>
                                </ul>
                            </div><!-- /btn-group -->
                            <input id="from_input_1" data-type="C" class="from-box" type="text" placeholder="请输入企业名称"></input>
                        </div><!-- /input-group -->
                        <button class="glyphicon glyphicon-remove remove-icon" tabIndex="-1"></button>
                    </div>
                    <div class="from-plus-minus-group left">
                        <button class="glyphicon glyphicon-minus minus-icon" tabIndex="-1"></button>
                    </div>
                    <div class="clearfix" ></div>
                </div>
            </div>

            <div class="from-to-div to-div">
                <div><span class="box-title">至</span></div>
                <div class="from-to-group">
                    <div class="from-to-input-group left">
                        <div class="input-group">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-default dropdown-toggle from-to-box-left"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" tabIndex="-1">
                                    <span id="to_cp_1" class="cp">企业</span><span class="caret ng-cloak" ng-cloak ng-if="false" ></span>
                                </button>
                                <ul class="dropdown-menu" ng-if="false">
                                    <li class="company"><a href="#">企业</a></li>
                                    <li class="person"><a href="#">企业关联人</a></li>
                                </ul>
                            </div><!-- /btn-group -->
                            <input id="to_input_1" data-type="C" class="to-box" type="text" placeholder="请输入企业名称"></input>
                        </div><!-- /input-group -->
                        <button class="glyphicon glyphicon-remove remove-icon" tabIndex="-1"></button>
                    </div>
                    <div class="to-plus-minus-group left hidden">
                        <button class="glyphicon glyphicon-plus plus-icon" tabIndex="-1"></button>
                    </div>
                    <div class="clearfix" ></div>
                    <div class="noresults-warning" style="display: none;"><span class="icon-warning">暂未查询到相关信息。</span></div>
                </div>

                <div class="from-to-group hidden" ng-if="false">
                    <div class="from-to-input-group left">
                        <div class="input-group">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-default dropdown-toggle from-to-box-left" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span id="to_cp_1" class="cp">企业</span><span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li class="company"><a href="#">企业</a></li>
                                    <li class="person"><a href="#">企业关联人</a></li>
                                </ul>
                            </div><!-- /btn-group -->
                            <input id="to_input_1" data-type="C" class="to-box" type="text" placeholder="请输入企业名称"></input>
                        </div><!-- /input-group -->
                        <button class="glyphicon glyphicon-remove remove-icon" ></button>
                    </div>
                    <div class="to-plus-minus-group left">
                        <button class="glyphicon glyphicon-plus plus-icon"></button>
                    </div>
                    <div class="clearfix" ></div>
                </div>
            </div>
            <!-- end of inputs -->

            <div class="search-btn-group">
                <a class="search-btn btn btn-ys right" id="search_btn" data-loading-text="玩命搜索中...">搜索</a>
            </div>
            <nav class="toggle-icon-group">
                <i id="toggle_btn" class="glyphicon"></i>
            </nav>
            <div class="clearfix" ></div>
        </div>



        <div class="result-panel panel-group">
            <!-- loading mask -->
            <div class="result-loading" id="loading-mask" style="display:none;"></div>
            <div class="result-loading" id="loading-progress" style="display:none;">
                <div class="loading-css3 hidden"></div>
                <div class="loader-inner square-spin">
                    <div>
                        <div class="loader-inner ball-clip-rotate-multiple">
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                </div>
                <div></div>
            </div>

            <div class="no-results text-center" ng-show="!hasResult"><span style="color: #999;"></span></div>

            <div class="has-results" style="display:none;">
                <div class="results-header">
                    <span id="message"></span>
                    <button class="right hidden" id="exports_btn">导出</button>
                    <div class="clearfix" ></div>
                </div>
                <div class="results-body">

                </div>
            </div>
            <div class="clearfix" ></div>
        </div><!-- end of result panel -->

        <div class="course-fixed">
            <a href="" class="goto_top_feed" id="feedbackBtn"></a>
        </div>
    </div>
</div>
<div class="clearfix"></div>
  	<script src="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/js/lib/jquery/jquery-1.11.3.min.js"></script>
  	<script src="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/js/lib/jquery-ui/jquery-ui.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/js/lib/jquery.zclip/jquery.zclip.min.js"></script>
  	<script src="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/js/lib/bootstrap/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/js/lib/angular/angular.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/js/lib/bootstrap-slider/bootstrap-slider.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/js/lib/zoomcharts/zoomcharts.min.js"></script>
    <!-- ajax请求所需js -->
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/js/plugins.js"></script>
	<!-- 获取根目录所需js -->
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/js/public.js"></script>
    <script src="<%=request.getContextPath()%>/assets/financial-net/ystp/relpath/dist/js/relPath.js"></script>
</body>
</html>