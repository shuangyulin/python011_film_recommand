
var projectName = '电影推荐系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
        name: '我的收藏',
        url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '在线电影',
	url: './pages/zaixiandianying/list.html'
}, 
{
	name: '电影信息',
	url: './pages/pymovie/list.html'
}, 

]

var adminurl =  "http://localhost:8080/djangouops9/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["新增","查看","修改","删除","查看评论"],"menu":"在线电影","menuJump":"列表","tableName":"zaixiandianying"}],"menu":"在线电影管理"},{"child":[{"appFrontIcon":"cuIcon-goodsnew","buttons":["新增","查看","修改","删除"],"menu":"电影分类","menuJump":"列表","tableName":"dianyingfenlei"}],"menu":"电影分类管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","删除"],"menu":"电影评分","menuJump":"列表","tableName":"dianyingpingfen"}],"menu":"电影评分管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["新增","查看","修改","删除","爬取"],"menu":"电影信息","tableName":"pymovie"}],"menu":"爬虫管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","评分"],"menu":"在线电影列表","menuJump":"列表","tableName":"zaixiandianying"}],"menu":"在线电影模块"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看"],"menu":"电影信息列表","tableName":"pymovie"}],"menu":"电影信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","删除"],"menu":"电影评分","menuJump":"列表","tableName":"dianyingpingfen"}],"menu":"电影评分管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","评分"],"menu":"在线电影列表","menuJump":"列表","tableName":"zaixiandianying"}],"menu":"在线电影模块"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看"],"menu":"电影信息列表","tableName":"pymovie"}],"menu":"电影信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
