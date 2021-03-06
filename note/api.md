## 用户信息接口列表
   
---

#### 读取接口

|  |  |
|:-------------:|:-------------|
| [users/mobile](#users-mobile) | 获取用户手机号 |


#### 写入接口

|  |  |
|:-------------:|:-------------|
| [users/mobile/put](#users-mobile-put) | 上传用户手机号 |


## 用户信息接口详情

* #### users/mobile

---

获取用户手机号

##### 是否需要权限验证

---

是

##### 请求参数

---

| | 必选 | 类型 | 说明 |
|:-------------:|:-------------|:-------------|
| userId | true | int | 用户ID |

##### 请求方法

---

GET

##### 调用样例

---

` ``
users/mobile?userId=214
` ``

##### 返回结果

---

*** JSON示例 ***

` ``

{

"code": 0,

"msg": "",

"data": {

"mobile": 150888888888

}

}

` ``

*** 错误返回值 ***

| code | msg | 说明 |
|:-------------:|:-------------|
| 1010 | xxxx | xxxx |

关于其它错误返回值与错误代码，参见 [错误代码说明](#errorcode)



## ErrorCode

### 错误代码对照表

---

##### 系统级错误

---

| 错误代码 | 返回msg | 详细描述 |
|:-------------:|:-------------|
| 400 | 系统错误，请稍候再试 | 请求参数有误 |
| 401 | 系统错误，请稍候再试 | 用户未登录 |
| 404 | 系统错误，请稍候再试 | 资源未找到 |
| 405 | 系统错误，请稍候再试 | 请求方法不支持 |
| 500 | 系统错误，请稍候再试 | 服务器错误 |

##### 业务级错误

---

| 错误代码 | 详细描述 |
|:-------------:|:-------------|
| 1010 | xxxx |