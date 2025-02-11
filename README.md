# CounterApp
CounterApp은 숫자를 증가, 감소, 초기화하는 기능을 가진 iOS 애플리케이션이다.  
사용자는 `+` 버튼을 눌러 숫자를 증가시키고, `-` 버튼을 눌러 숫자를 감소시킬 수 있으며, `RESET` 버튼을 눌러 숫자를 0으로 초기화할 수 있다.

## 주요 기능
- **숫자 증가/감소**: `+` 버튼을 클릭하면 숫자가 1 증가하고, `-` 버튼을 클릭하면 1 감소한다.
- **초기화 기능**: `RESET` 버튼을 누르면 숫자가 0으로 초기화된다.
- **최대/최소 값 설정**: 숫자는 `-10 ~ 10` 범위를 초과할 수 없다.
- **버튼 활성화/비활성화**:
  - 숫자가 `-10`일 때 `-` 버튼이 비활성화된다.
  - 숫자가 `10`일 때 `+` 버튼이 비활성화된다.
- **코드베이스로 UI 구현**: `UIView`, `UILabel`, `UIButton`을 코드로 구성한다.

## 기술 스택
- **프레임워크**: UIKit
- **설계 패턴**: MVC (Model-View-Controller)
- **UI 구성**: 코드베이스

## 스크린샷
| 초기 화면 | 숫자 -10일 때 | 숫자 10일 때 |
|----------|---------|---------|
| <img src="https://github.com/user-attachments/assets/6b2ce379-67dc-413a-9db0-5851c4513c82" width="200" height="400"/> | <img src="https://github.com/user-attachments/assets/5c590408-c776-44fb-a4ef-96cbd31d61da" width="200" height="400"/> | <img src="https://github.com/user-attachments/assets/64a8f74f-d453-4d7e-89f3-019b15b5dfef" width="200" height="400"/> |

## 프로젝트 구조
```
📦 CounterApp
├── 📂 CounterApp
│   ├── AppDelegate.swift
│   ├── SceneDelegate.swift
|   ├── MainView.swift
│   ├── MainViewController.swift
|   ├── LaunchScreen.storyboard
│   ├── Assets.xcassets
│   ├── Info.plist
└── README.md
```
