import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:get/get.dart';

class UserIndex extends StatefulWidget {
  const UserIndex({Key? key}) : super(key: key);

  @override
  State<UserIndex> createState() => _UserIndexState();
}

class _UserIndexState extends State<UserIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("用户管理"),
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              sortColumnIndex: 1,
              sortAscending: true,
              dataRowHeight: 30,
              horizontalMargin: 5,
              columnSpacing: 10,
              dividerThickness: 1.0,
              columns: const [
                DataColumn(label: Text('用户编号')),
                DataColumn(
                  label: Text('用户名称'),
                ),
                DataColumn(label: Text('用户昵称')),
                DataColumn(label: Text('部门')),
                DataColumn(label: Text('手机号')),
                DataColumn(label: Text('状态')),
                DataColumn(label: Text('创建时间')),
                DataColumn(label: Text('操作')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('admin')),
                  DataCell(Text('若依')),
                  DataCell(Text('研发部门')),
                  DataCell(Text('13888888888')),
                  DataCell(Text('正常')),
                  DataCell(Text('2022-08-02 15:39:45')),
                  DataCell(Text('---')),
                ]),
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('ry')),
                  DataCell(Text('若依')),
                  DataCell(Text('测试')),
                  DataCell(Text('13888888888')),
                  DataCell(Text('正常')),
                  DataCell(Text('2022-08-02 15:39:45')),
                  DataCell(Text('---')),
                ]),
              ],
            ),
          ),
        ),
        drawer: Container(
          color: Colors.white,
          width: 260,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: ClipOval(
                      child: Image.asset("static/images/profile.jpg"),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('设置'),
              ),
              TreeView(nodes: [
                TreeNode(
                  content: Text("若依科技"),
                  children: [
                    TreeNode(content: Text("深圳总公司"), children: [
                      TreeNode(content: Text("研发部门")),
                      TreeNode(content: Text("市场部门")),
                      TreeNode(content: Text("测试部门")),
                      TreeNode(content: Text("财务部门")),
                      TreeNode(content: Text("运维部门")),
                    ]),
                    TreeNode(content: Text("长沙分公司"), children: [
                      TreeNode(content: Text("市场部门")),
                      TreeNode(content: Text("财务部门")),
                    ]),
                  ],
                ),
              ]),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.back();
          },
          child: const Text("返回"),
        ));
  }
}
