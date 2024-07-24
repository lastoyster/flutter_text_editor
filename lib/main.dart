import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Android eline',
      debugShowCheckedModeBanner:false,
      home:const EditorEnhanced(), 
        );
  }
}

class EditorEnhanced extends StatefulWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Android aliens',
      debugShowCheckedModeBanner:false,
      home:const EditorEnhanced(),
    );
  }
  }

  class _EditorEnhancedState extends State<EditorEnhanced>{
    String result='';
    final HtmlEditorController controller =  HtmlEditorController();

    @override
 Widget build(BuildContext context){
  return GestureDetector(
    onTap:(){
      if(!KIsWeb){
        controller.clearFocus();
      }
    },
    child:Scaffold(
      appBar:Text(
        'Editor Enhanced',
      ),
    body:SingleChildScrollView(
      child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:<Widget>[
          HtmlEditor(
            controller:controller,
            htmlEditorOptions:HtmlEditorOptions(
              hint:'Your text here',
              shouldEnsureVisible:true,
              initialText:'<p>text content initial, if any</>'
            ),
            htmlToolbarOptions:HtmlToolbarOptions(
              toolbarPosition:ToolbarPosition.aboveEditor,
              toolbarType:ToolbarType.nativeScrollable,
              onButtonPressed:(ButtonType type, bool? status,Function? updateStatus)
            print('button ${describeEnum(type)}' pressed,the current selected status in 
            ${status});
            return true;
 },
 onDropdownchanged:(DropdownType type,dynamic changed,  
 Function(dynamic)?  updateSelectedItem){
  print('dropdown '${describeEnum(type)}' changed to ${changed');
  return true;
 },

 mediaUploadInterceptor: 
 (PlatformFile file, InsertFileType type) async{
  print(file.name);
  print(file.size);
  print(file.extension);
  return true;
 },
 ),
 otherOptions: OtherOptions(height:550),
 callbacks:Callbacks (onBeforeCommand:(String? currentHtml){
    print('html before change is $currentHtml');
    }, onChangeContent:(String? changed){
      print('content changed to $changed');
    }, onChangeSelection:(EditorSettings settings){
      print('parent element is ${settings.parentElement}');
      print('font name is ${settings.parentElement}');
    }, onDialogShown:(){
      print('dialog shown');
    }, onEnter:(){
      print('enter/return pressed');
    }, onFocus:(){
      print('editor focused');
    }, onBlur:(){
      print('editor unfocused');
    }, onBlurCodeview:(){
      print('codeview either focused or unfocused');
    }, onInit:(){
      print('init');
    }, onImageLinkInsert:(String ? url){
      print(url?? 'unknown url');
    }, onImageUpload:(FIleUpload? file, String? 
    base64Str, UploadError error){
      if(file!= null){
        print(file.name);
        print(file.size);
        print(file.type);
      }
    }, onKeyDown:(int? keyCode){
      print('$keyCode key downed');
      print(')
      print('current character count:${controller.characterCount}');
 }, onKeyUp: (int? keyCode){
  print('$keyCode key released');
 }, onMouseDown:(){
  print('mouse downed');
 }, onMouseUp:(){
  print('mouse released');
  }, onNavigationRequestMobile:(String url){
    print(url);
    return NavigationActionPolicy.ALLOW;
  }, onPaste:(){
    print('paseted into editor');
  }, onScroll:(){
    print('editor scrolled');
  }),
  plugins:[
    SummernoteAtMension(
      getSuggestionsMobile:(String value){
        var mentions =<String>['test1','test2','test3'];
        return mentions.where((element)=> 
        element.contains(value))
        .toList();
      },
      mentionsWeb:['test1','test2','test3'],
      onSelect:(String value){
        print(value);
      }),
  ],
  ),
 
 Padding(
  padding:const EdgeInsets.all(8.0),
  child:Row(
    mainAxisAlignment:MainAxisAlignment.center,
    children:<Widget>[
      TextButton(
        style:TextButton.styleFrom(
          backgroundColor:Colors.blueGrey),
      onPressed:(){
        controller.undo();
      },
      child:Text('Undo',style:TextStyle(color:Colors.white)).
        ),
      SizedBox(
        width:16,
      ),
      TextButton(
        style:TextButton.styleFrom(
          backgroundColor:Colors.blueGray),
          onPressed:(){
            controller.clear();
          },
        child:Text('Reset',style:TextStyle(color:Colors.white)),
        ),
      SizedBox(
        width:16,
      ),
      TextButton(
        style:TextButton.styleFrom(
          backgroundColor:Theme.of(context).colorScheme.secondary),
          onPressed:()async{
            var txt = await controller.getText();
            if(txt.contains('src='data:')){
              txt = '<text removed due to base-64 data,displaying the text could cause the app to crash'>;
            }
          setState((){
            result = 'txt',
          });
          },
          child:Text(
            'Submit',
            style:TextStyle(color:Colors.white),
          ),
        ),
      SizedBox(
        width:16,
      ),
      TextButton(
        style:TextButton.styleFrom(
          backgroundColor:Theme.of(context).colorScheme.secondary),
        ),
      ),
    ],
    ),
  ),
  Padding(
    padding:const EdgeInsets.all(8.0),
    child:Text(result),
  ),
  Padding (
    padding:const EdgeInsets.all(8.0),
    child:Text(result);
  ),
  Padding(
    padding:const EdgeInsets.all(8.0),
    child:Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children:<Widget>[
        TextButton(
          style:TextButton.styleFrom(
            backgroundColor:Colors.blueGrey),
            onPressed:(){
              controller.disable();
            }
          )
        )
      ]
    )
  ),
  )
  
 )