const base = {
    get() {
        return {
            url : "http://localhost:8080/djangouops9/",
            name: "djangouops9",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "电影推荐系统"
        } 
    }
}
export default base
