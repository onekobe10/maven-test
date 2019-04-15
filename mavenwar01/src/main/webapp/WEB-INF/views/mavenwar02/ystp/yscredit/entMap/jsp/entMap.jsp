<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>企业图谱</title>
    <link rel="icon" href="/comfavico.ico">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/js/lib/ion-rangeslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/js/lib/ion-rangeslider/ion.rangeSlider.skinSimple.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/css/entMap.css">
    <script>
        var resData = {};
        var resMessage = "";
    </script>
</head>

<body>
    <div class="entMap-wraper">
        <div id="company_name"></div>
        <div class="big-title-info"><span class="big-title"></span></div>

        <div class="menu def_color">
            <div class="tuli">
                <div class="tuli-i">
                    <div class="tuli-i-icon icon-gd-color" style="width: 16px;height:16px;border-radius:100%;"></div>
                    <span>股东</span>
                </div>
                <div class="tuli-i">
                    <div style="width: 16px;height:16px;border-radius:100%;" class="tuli-i-icon icon-inv-color"></div>
                    <span>投资公司</span>
                </div>
                <div class="tuli-i">
                    <div class="tuli-i-icon" style="width: 16px;height:16px;border-radius:100%;overflow:hidden;">
                        <div class="icon-gd-color" style="width:50%;display:inline-block;height:100%;float: left;"></div>
                        <div class="icon-inv-color" style="width:50%;display:inline-block;height:100%;"></div>
                    </div>
                    <span>交叉持股</span>
                </div>
                <div class="tuli-i">
                    <div class="tuli-i-icon icon-target-color" style="width: 16px;height:16px;border-radius:100%;"></div>
                    <span>当前节点</span>
                </div>
                <div class="tuli-i">
                    <div style="width: 16px;height:16px;border-radius:100%;" class="tuli-i-icon icon-people-color"></div>
                    <span>董监高法</span>
                </div>
                <div class="tuli-i">
                    <div class="tuli-i-icon" style="width: 16px;height:16px;border-radius:100%;overflow:hidden;">
                        <div class="icon-gd-color" style="width:50%;display:inline-block;height:100%;float: left;"></div>
                        <div class="icon-people-color" style="width:50%;display:inline-block;height:100%;"></div>
                    </div>
                    <span>任职股东</span>
                </div>
                <div class="tuli-i">
                    <div class="tzbiaozhi tuli-i-icon" style="height: 8px;left: 2px;top: 5px;;"></div>
                    <span>投资</span>
                </div>
                <div class="tuli-i">
                    <div style="margin-top:10px;font-size:16px;height:1px;width:16px;border:1px dashed #5e5c5c;top:-1px;" class="tuli-i-icon"></div>
                    <span>任职</span>
                </div>
                <div class="tuli-i">
                    <div style="width: 16px;height:16px;background-size: 18px 8px;left: 2px;" class="tuli-i-icon dbbiaozhi"></div>
                    <span>投资任职</span>
                </div>
            </div>
            <span class="tab">筛选<img src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/jt-down.png" /></span>
            <div class="menu-contant">
                <span class="menu-title">度数：</span>
                <input type="radio" name="cengshu" class="menu-title cengshu" value="0">
                <span class="menu-item">一度</span>
                <input type="radio" name="cengshu" class="menu-title cengshu" value="1" checked>
                <span class="menu-item">二度</span>
                <input type="radio" name="cengshu" class="menu-title cengshu hidden" value="2" disabled="disabled" title="该功能即将上线，敬请期待！">
                <span class="menu-item hidden">三度</span>
                <input type="radio" name="cengshu" class="menu-title cengshu hidden" value="3" disabled="disabled" title="该功能即将上线，敬请期待！">
                <span class="menu-item hidden">四度</span><br>
                <span class="menu-title">状态：</span>
                <input type="checkbox" class="menu-title zhuangtai">
                <span class="menu-item">吊销</span>
                <input type="checkbox" class="menu-title zhuangtai">
                <span class="menu-item">注销</span>
                <span class="menu-title">持股：</span>
                <input type="text" id="touzibili" value='0'>
                <div class="range-div">
                    <div class="range-left">
                        <div class="range-text range-text-2 range-text-small">
                            <span id='defuse_point' class="hidden">0%</span>
                        </div>
                    </div>
                    <div class="range-right">
                        <input type="text" id="range" value="" name="range" style="display:none;"/>
                        <div class="range-text">
                            <span class="range-text-point range-text-small">0</span>
                            <span></span>
                            <span class="range-defuse range-text-small" id='defuse'>去掉被持股 <span>0</span>% 的节点</span>
                            <span class="range-text-small" style="float:right;">100%</span>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <input type="checkbox"  class="menu-touzi touzileixing" checked="checked">
                <span class="menu-touzi">全部</span>
                <input type="checkbox"  class="menu-touzi touzileixing">
                <span class="menu-touzi">直接投资</span>
                <input type="checkbox"  class="menu-touzi touzileixing">
                <span class="menu-touzi">股东投资</span>
                <input type="checkbox" class="menu-touzi touzileixing">
                <span class="menu-touzi">董监高法投资</span>

                <div id="div1-1">
                    <span id="targetNodeId-1"></span>
                    <div id="targetNodeId-msg-1" style="position:absolute;top:125px;left:5px;color:red;"></div>
                    <a class="search-btn btn btn-ys" id="btn1-1" title='在图谱中显示该节点及其一度关系'>聚焦</a>
                    <div class="msg-jujiao">请输入完整的企业/个人名称，或点击下方列表中的企业/个人名称</div>
                </div>
                <div class="search-list-container">
                    <ol class="search-list-ol"></ol>
                </div>
                <img class="closebtn" src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/qx.png" />
            </div>
            <span class="tab">风险<img src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/jt-down.png" /></span>
            <div class="menu-contant">
                <img class="closebtn" src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/qx.png" />
                <div class="container-no-msg">
                    <img src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/noyc.png" />
                    <p>该功能正在完善中，敬请期待！</p>
                </div>
                <div class="container-yc-msg">
                    <div class="btn-show-yc-node">高亮风险节点</div><span>有风险的节点将被加上浅绿色边框</span>
                    <ol></ol>
                </div>
            </div>
            <span class="tab" title="企业图谱帮助说明">帮助<img src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/jt-down.png" /></span>
            <div class="menu-contant">
                <img class="closebtn" src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/qx.png" />
                <ol class="help-ol">
                    <li>图谱常规操作</li>
                    <p>滚动鼠标中键调整图谱缩放比例，让您更加清晰完整的查看图谱</p>
                    <li>度是什么意思?</li>
                    <p>对度数定义如下图所示，图谱中有两种节点：个人节点和企业节点。个人节点往外扩展为对外投资、对外任职，企业节点往外扩展为董监高法、子公司、个人/法人股东。几度的定义是代表由目标节点出发，往外扩几次。如一度，代表从目标节点出发往外扩展一度，目标节点通常是企业节点，则一度代表目标节点的董监高法、子公司、个人/法人股东；二度代表从目标节点出发往外扩展两次，第一次是目标节点的董监高法、子公司、个人/法人股东，第二次是在一度节点基础上再往外扩展一度。（点击图片放大查看）</p>
                    <img class="help-img1" src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/help1.jpg"/>
                    <li>经营状态筛选</li>
                    <p>默认会保留吊销/注销两种状态的企业，点击按钮可隐藏对应状态的企业</p>
                    <li>持股比例筛选</li>
                    <p>会去掉您选择的持股比例以下的节点。如您选择持股比例为5%，则会筛选掉图谱中持股比例小于等于5%的所有节点。</p>
                    <li>投资类型筛选</li>
                    <p>默认选择全部，其它类型可单选或多选，图谱中将出现该投资类型企业</p>
                    <li>聚焦搜索框怎么用？</li>
                    <p>点击搜索框，输入您想要查询企业/个人的关键字，或者直接选取下拉列表中的搜索项，下方搜索结果列表将展示您搜索到的企业。点击“聚焦”
                        按钮，可在图谱中高亮显示焦点企业及其一度关联关系。
                    </p>
                    <p>
                        当然，您也可以直接点击搜索列表中的企业/个人或点击图谱中的某个节点，其名称将自动填入搜索框，点击聚焦按钮，即可在图谱中高亮显示焦点企业及其一度关联关系。
                    </p>
                    <p>
                        当您不想查看聚焦企业时，可点击“取消”按钮或双击图谱空白处退出聚焦模式。
                    </p>
                    <li>搜索结果列表的用途</li>
                    <p>搜索结果列表将直接展示当前图谱中的所有节点，先企业后个人，按照层级顺序排列。</p>
                    <p>点击每一项前面的勾选按钮，可选择在图谱中隐藏/显示该节点。</p>
                    <p>鼠标划过企业/个人名称，将显示该节点的一度关联关系统计信息。点击企业/个人名称，将展开其一度关联关系的详细信息。</p>
                    <p>点击搜索列表内的任意企业名称，将在浏览器左上角显示该企业的其它基本信息，点击信息框中的企业/法人名称，可直接进入对应的企业/个人详情页。</p>
                    <li>风险列表</li>
                    <p>点击风险按钮，图谱中当前所有节点中有风险的节点将在下方列表中显示。</p>
                    <li>图谱的其它功能</li>
                    <p>在非聚焦状态下，点击图谱中任意一个节点，图谱中将高亮该节点与“目标节点”最近的关联路径</p>
                    <p><p>在非聚焦状态下，先点击图谱中一个节点，再按住键盘“ctrl”键并点击图谱中的其它节点，图谱中将高亮该节点与先前节点的最近的关联路径</p></p>
                </ol>
            </div>
            <div class="lable2" id="lable2" title="点击显示/隐藏节点名称标签"></div>
            <%-- 图谱下载此功能未开放
            <div class="tupudown " id="tupudown" title="点击导出企业图谱excel数据"></div> --%>
        </div>
        <img class="help-img2" src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/help1.jpg"/>

        <div class="company-detail-info2 ">
            <div class="close-icon"></div>
            <div class="company_name"><span></span>
                <div class="enterprise-status2"></div>
            </div>
            <div class="company-detail-item company_fr">
                <span style="float: left">法定代表人</span><div style="float: left"></div>
            </div>
            <div class="company-detail-item company_date">
                <span>成立日期</span><span></span>
            </div>
            <div class="company-detail-item company_money">
                <span>注册资本</span><span>
                    <span></span><span></span>
                </span>
            </div>
        </div>

        <div class="chart" id="demo"></div>
        <div class="map-logo" style="position: absolute; bottom: 20px; right: 62px;z-index:9">
            <img src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/logo-ys.png" />
        </div>
    </div>
    <div id="loading-modal">
        <img src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/images/companyMap/loading1.gif" />
    </div>
    <script src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/js/lib/jquery/jquery-1.11.3.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/js/lib/ion-rangeslider/ion.rangeSlider.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/js/lib/zoomcharts/zoomcharts.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/js/lib/stcombobox/stcombobox.min.js"></script>
    <!-- ajax请求所需js -->
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/js/plugins.js"></script>
	<!-- 获取根目录所需js -->
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/js/public.js"></script>
    <script src="<%=request.getContextPath()%>/assets/financial-net/ystp/dist/js/entMap.js"></script>
</body>
</html>