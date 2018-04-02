# SandboxHelper

### 沙盒机制
沙盒是一个独立、封闭、安全的空间，每个应用程序都有自己的存储空间，应用程序不可访问别的存储空间（越狱除外）

### 沙盒目录
- **Documents**：iTunes会备份该目录。一般用来存储需要持久化的数据。

- **Library/Caches**：缓存，iTunes不会备份该目录。内存不足时会被清除，应用没有运行时，可能会被清除，。一般存储体积大、不需要备份的非重要数据。

- **Library/Preference**：iTunes同会备份该目录，可以用来存储一些偏好设置。

- **tmp**： iTunes不会备份这个目录，用来保存临时数据，应用退出时会清除该目录下的数据。

##### 获取Document目录路径
```Objective-c
NSString *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
//NSDocumentDirectory: 第一个参数代表要查找哪个文件，是一个枚举，点进去看一下发现有很多选择，为了直接找到沙盒中的Documents目录，我们一般用
//NSUserDomainMask: 也是一个枚举，表示搜索的范围限制于当前应用的沙盒目录。我们一般就选择NSUserDomainMask。
//YES (expandTilde): 第三个参数是一个BOOL值。iOS中主目录的全写形式是/User/userName，这个参数填YES就表示全写，填NO就是写成‘‘~’’，我们一般填YES。
```
##### 获取Library/Caches目录路径
```Objective-c
NSString *path = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
NSString *filePath = [path stringByAppendingPathComponent:@"test.data"];
```

##### 获取目录路径
```Objective-c
NSString *homePath = NSHomeDirectory();
```
##### 获取temp目录路径
```Objective-c
NSString *tmp= NSTemporaryDirectory();
NSString *filePath = [tmp stringByAppendingPathComponent:@"test.data"];
```
