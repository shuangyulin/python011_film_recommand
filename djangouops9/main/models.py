#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class yonghu(BaseModel):
    __doc__ = u'''yonghu'''
    __tablename__ = 'yonghu'

    __loginUser__='zhanghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='zhanghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    zhanghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='账号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    chengshi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='城市' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    touxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='头像' )
    '''
    zhanghao=VARCHAR
    mima=VARCHAR
    xingming=VARCHAR
    xingbie=VARCHAR
    chengshi=VARCHAR
    shouji=VARCHAR
    touxiang=VARCHAR
    '''
    class Meta:
        db_table = 'yonghu'
        verbose_name = verbose_name_plural = '用户'
class zaixiandianying(BaseModel):
    __doc__ = u'''zaixiandianying'''
    __tablename__ = 'zaixiandianying'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='是'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='是'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    dianyingmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='电影名称' )
    dianyingleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='电影类型' )
    daoyan=models.CharField ( max_length=255, null=True, unique=False, verbose_name='导演' )
    zhuyan=models.CharField ( max_length=255, null=True, unique=False, verbose_name='主演' )
    zhipiandiqu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='制片地区' )
    dianyingshipin=models.CharField ( max_length=255, null=True, unique=False, verbose_name='电影视频' )
    shangyingriqi=models.DateField   (  null=True, unique=False, verbose_name='上映日期' )
    dianyingmiaoshu=models.TextField   (  null=True, unique=False, verbose_name='电影描述' )
    dianyinghaibao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='电影海报' )
    thumbsupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='赞' )
    crazilynum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='踩' )
    clicktime=models.DateTimeField  (  null=True, unique=False, verbose_name='最近点击时间' )
    '''
    dianyingmingcheng=VARCHAR
    dianyingleixing=VARCHAR
    daoyan=VARCHAR
    zhuyan=VARCHAR
    zhipiandiqu=VARCHAR
    dianyingshipin=VARCHAR
    shangyingriqi=Date
    dianyingmiaoshu=Text
    dianyinghaibao=VARCHAR
    thumbsupnum=Integer
    crazilynum=Integer
    clicktime=DateTime
    '''
    class Meta:
        db_table = 'zaixiandianying'
        verbose_name = verbose_name_plural = '在线电影'
class dianyingfenlei(BaseModel):
    __doc__ = u'''dianyingfenlei'''
    __tablename__ = 'dianyingfenlei'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    leixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='类型' )
    '''
    leixing=VARCHAR
    '''
    class Meta:
        db_table = 'dianyingfenlei'
        verbose_name = verbose_name_plural = '电影分类'
class dianyingpingfen(BaseModel):
    __doc__ = u'''dianyingpingfen'''
    __tablename__ = 'dianyingpingfen'



    __authTables__={'zhanghao':'yonghu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    dianyingmingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='电影名称' )
    dianyingleixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='电影类型' )
    daoyan=models.CharField ( max_length=255, null=True, unique=False, verbose_name='导演' )
    zhuyan=models.CharField ( max_length=255, null=True, unique=False, verbose_name='主演' )
    pingfen=models.FloatField   (  null=True, unique=False, verbose_name='评分' )
    pingfenshijian=models.DateTimeField  (  null=True, unique=False, verbose_name='评分时间' )
    zhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='账号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    '''
    dianyingmingcheng=VARCHAR
    dianyingleixing=VARCHAR
    daoyan=VARCHAR
    zhuyan=VARCHAR
    pingfen=Float
    pingfenshijian=DateTime
    zhanghao=VARCHAR
    xingming=VARCHAR
    '''
    class Meta:
        db_table = 'dianyingpingfen'
        verbose_name = verbose_name_plural = '电影评分'
class storeup(BaseModel):
    __doc__ = u'''storeup'''
    __tablename__ = 'storeup'



    __authTables__={}
    __authSeparate__='是'#后台列表权限
    __foreEndListAuth__='是'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    refid=models.BigIntegerField  (  null=True, unique=False, verbose_name='收藏id' )
    tablename=models.CharField ( max_length=255, null=True, unique=False, verbose_name='表名' )
    name=models.CharField ( max_length=255,null=False, unique=False, verbose_name='收藏名称' )
    picture=models.CharField ( max_length=255,null=False, unique=False, verbose_name='收藏图片' )
    type=models.CharField ( max_length=255, null=True, unique=False,default='1', verbose_name='类型(1:收藏,21:赞,22:踩)' )
    inteltype=models.CharField ( max_length=255, null=True, unique=False, verbose_name='推荐类型' )
    '''
    userid=BigInteger
    refid=BigInteger
    tablename=VARCHAR
    name=VARCHAR
    picture=VARCHAR
    type=VARCHAR
    inteltype=VARCHAR
    '''
    class Meta:
        db_table = 'storeup'
        verbose_name = verbose_name_plural = '收藏表'
class pymovie(BaseModel):
    __doc__ = u'''pymovie'''
    __tablename__ = 'pymovie'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    url=models.CharField ( max_length=255, null=True, unique=False, verbose_name='网址' )
    title=models.CharField ( max_length=255,null=False, unique=False, verbose_name='电影名' )
    category=models.CharField ( max_length=255, null=True, unique=False, verbose_name='电影分类' )
    actor=models.CharField ( max_length=255, null=True, unique=False, verbose_name='主演' )
    director=models.CharField ( max_length=255, null=True, unique=False, verbose_name='导演' )
    language=models.CharField ( max_length=255, null=True, unique=False, verbose_name='语言' )
    region=models.CharField ( max_length=255, null=True, unique=False, verbose_name='发行地区' )
    issuedate=models.CharField ( max_length=255, null=True, unique=False, verbose_name='发行年份' )
    picture=models.CharField ( max_length=255, null=True, unique=False, verbose_name='图片' )
    synopsis=models.TextField   (  null=True, unique=False, verbose_name='简介' )
    intro=models.TextField   (  null=True, unique=False, verbose_name='介绍' )
    '''
    url=VARCHAR
    title=VARCHAR
    category=VARCHAR
    actor=VARCHAR
    director=VARCHAR
    language=VARCHAR
    region=VARCHAR
    issuedate=VARCHAR
    picture=VARCHAR
    synopsis=Text
    intro=Text
    '''
    class Meta:
        db_table = 'pymovie'
        verbose_name = verbose_name_plural = '电影信息'
class discusszaixiandianying(BaseModel):
    __doc__ = u'''discusszaixiandianying'''
    __tablename__ = 'discusszaixiandianying'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    refid=models.BigIntegerField  ( null=False, unique=False, verbose_name='关联表id' )
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    nickname=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    content=models.TextField   ( null=False, unique=False, verbose_name='评论内容' )
    reply=models.TextField   (  null=True, unique=False, verbose_name='回复内容' )
    '''
    refid=BigInteger
    userid=BigInteger
    nickname=VARCHAR
    content=Text
    reply=Text
    '''
    class Meta:
        db_table = 'discusszaixiandianying'
        verbose_name = verbose_name_plural = '在线电影评论表'
