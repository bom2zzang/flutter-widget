# ex10_layout

1. Button 추가

```
   body: ElevatedButton(
      child: const Text('Button'),
      onPressed: (){}
   ),
```

2. Button 여러 개 추가
   - 위젯 감싸기
   - `Ctrl + .`
   - 감쌀 위젯 추가하기
     - Row : 여러 개를 넣을 것이므로 children 사용
     - child를 사용하여 한 개만 사용할거면 굳이 사용할 필요가 없다.

```
   body: Row(children:[
      ElevatedButton(
         child: const Text('Button'),
         onPressed: (){},
      ),
   ]),
```

```
   body: Row(
      // 높이 확인, 좌우 정렬 확인
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisSize: MainAxisSize.max, // Row 내부에서 크기 조정
      children:[
      ElevatedButton( child: const Text('Button'), onPressed: (){},),
      // 거리 띄기
      SizedBox(width:10,),
      ElevatedButton( child: const Text('Button'), onPressed: (){},),
      // 간격 조정
      Spacer(flex:1,),
      ElevatedButton( child: const Text('Button'), onPressed: (){},),
   ]),
```

```
   // 외부에서 Row 크기 조정 - Container로 감싸 크기를 조정한다
   body: Container(
      color: Colors.yellow,
      width: 280,
      height: 100,
      child: Row(),
   )
```

3. Container 하나 더 추가

   - Container를 감싸고 `Ctrl + .`
   - Column 위젯 추가
   - child -> children으로 변경

4. 두 개의 컨테이너가 균일한 공간을 차지하면서 공간을 모두 사용하게 배치하기
   - Expanded로 감싸기
     - 컨테이너의 높이지정이 무시되고 크기가 확대된다.
     - 비율을 지정하지 않았기 때문에 1:1로 늘어난다.
   - Expanded 위젯의 크기비율 지정하여 배치하기
     - flex지정
     ```
     // 위젯간 간격, 내부 요소 위치 조정
        child: Container(
           margin: EdgeInsets.all(5),
           padding: EdgeInsets.fromLTRB(0,0,0,10),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children:[],
           ),
        ),
     ```
5. SafeArea -폰의 노치, 카메라, 상하단 모서리의 영역에 안전한 화면이 구성된다.

   ```
      body: SafeArea(),
   ```

6. Stack
   - Stack 위젯을 사용하면, 위젯 위에 위젯을 표시할 수 있다.
