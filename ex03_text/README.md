# ex03_text

- 여러 개의 위젯을 표현하기 위해서는 Layout 관련 위젯을 사용해야 한다.

  - Column, Row
  - 이 때 위젯들은 child가 아닌 children키 값의 배열 데이터 안쪽에 배치한다.

- 폰트 테마 적용

  - 메인 테마에서 전체의 형태를 미리 지정할 수 있다.
  - 자주 사용되는 형태는 변수로 지정하여 사용할 수 있다.

- 폰트 적용

  - 적용되지 않으면 디폴트 폰트로 적용된다.
  - 프로젝트 최상위에 assets/fonts 폴더를 만들고 `pubspec.yaml`파일에 설정을 넣어준다.
    ```
        fonts:
            - family : D2Coding
            fonts:
                - asset: assets/fonts/D2Coding.ttf
    ```

- [높이 지정](https://api.flutter.dev/flutter/painting/TextStyle/height.html)
