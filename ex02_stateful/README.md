# ex02_stateful

- StatelessWidget

  - 상태를 가지지 않는 위젯
  - 상태 변화를 감지하지 않기 때문에 화면을 구성할 때 최초 한 번만 build()함수를 호출한 후 다시 호출하지 않는다.

- StatefulWidget

  - State객체를 가지며 createState()함수를 통해서 State 객체를 만든다.
  - 이 객체는 변경이 가능하다는 특징을 지녔기 때문에 상태 변경에 대한 처리를 할 수 있다.

- `stful` 명령어

  - StatefulWidget 기본형이 자동 생성 된다.

- StatefulWidget 이해하기

  - const Text에는 변수를 사용할 수 없다.
  - String 변수는 직접 사용할 수 있다.
  - String 변수도 다른 내용 안에 포함되게 하려면 $변수를 사용한다.
  - Number 변수는 $변수 형태로 `'`안에 넣어서 String 변수 처럼 사용할 수 있다.

- setState 메서드

  - setState 메서드 안에서 변수의 값을 바꾸면 상태를 가지는 위젯 다시 전체 빌드 된다.
  - 이 때 값이 변한 변수를 가지고 있는 객체는 수정된 변수의 값이 적용된다.

    ```
      setState((){
        // 여기에 바뀌는 값을 명시할 수 있다.
      });
    ```
