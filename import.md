1. 将 **导入excel** 进行数据清理，设置 `code`,`name`,`sup_name`,`mod_name`的 title
2. 将 `sup_name`,`mod_name` 插入到数据库[判断是否有重复数据]
3. 修改 **导入excel** 数据的 `sup_name`和`mod_name`,替换成id
4. 将 **导入excel** 的其他列表 编码成 JSON 格式， 插入数据库