# Korean(i)ga

![License](https://img.shields.io/badge/license-UNLICENSE-black?style=flat)
![Platform](https://img.shields.io/badge/platform-iOS%20macOS%20tvOS%20watchOS%20Linux-brightgreen?style=flat)
![Release](https://img.shields.io/github/v/release/minacle/Koreaniga?sort=semver)

A Korean postpositions processing package for *new-age*.

# 코리안(이)가

*신세대*를 위한 한국어 조사 처리 패키지.

## 들어가며

한국어는 교착어로서, 정말 많은 조사가 존재합니다. 개중에는 체언 마지막 음절에 종성이 있는가 혹은 어떤 종성인가에 따라 의미는 같더라도 형태는 바뀌는 것들이 있습니다.

**코리안(이)가**는 어떠한 단어가 들어오더라도 ~~그것이 한글로 적혀만 있다면~~ 체언에 맞는 올바른 조사를 붙여 드립니다.

## 사용법

```swift
  1> import Koreaniga
  2> "\("나".는) 내일 \("그".와) 함께 \("여행".을) 떠나요."
$R0: String = "나는 내일 그와 함께 여행을 떠나요."
  3> "\("그".를) 데리고 \("정말 먼 곳".으로) 떠날 거예요."
$R1: String = "그를 데리고 정말 먼 곳으로 떠날 거예요."
  4> "아마 \("당신".과)도 \("다시".는) 만날 수 없겠지요."
$R2: String = "아마 당신과도 다시는 만날 수 없겠지요."
  5> "부디 오늘 \("저".와) 만났다는 \("사실".은) \("비밀".로) 해 주세요."
$R3: String = "부디 오늘 저와 만났다는 사실은 비밀로 해 주세요."
  6> "아니면, 혹시 \("저".를) 따라올 \("생각".이)신 건 아니겠죠?"
$R4: String = "아니면, 혹시 저를 따라올 생각이신 건 아니겠죠?"
  7> "후후, \("농담".이에)요. \("당신".이.가) 절 따라올 이유 같은 건 없죠."
$R5: String = "후후, 농담이에요. 당신이 절 따라올 이유 같은 건 없죠."
  8> "그럼 안녕히. 잘 지내야 해요."
$R6: String = "그럼 안녕히. 잘 지내야 해요."
```

```swift
  1> import Koreaniga
  2> "태초에 \("하나님".가) \("천지".을) 창조하시니라"
$R0: String = "태초에 하나님이 천지를 창조하시니라"
  3> "\("땅".가) 혼돈하고 공허하며 \("흑암".가) 깊음 위에 있고 \("하나님의 신".는) 수면에 운행하시니라"
$R1: String = "땅이 혼돈하고 공허하며 흑암이 깊음 위에 있고 하나님의 신은 수면에 운행하시니라"
  4> "\("하나님".가) 가라사대 \("빛".가) \("있".으)라 하시매 \("빛".가) 있었고"
$R2: String = "하나님이 가라사대 빛이 있으라 하시매 빛이 있었고"
  5> "그 \("빛".가) 하나님의 보시기에 좋았더라 \("하나님".가) \("빛".과) \("어두움".를) 나누사"
$R3: String = "그 빛이 하나님의 보시기에 좋았더라 하나님이 빛과 어두움을 나누사"
  6> "\("빛".를) \("낮".이)라 칭하시고 \("어두움".를) \("밤".이)라 칭하시니라 \("저녁".가) 되며 \("아침".가) 되니 이는 \("첫째 날".이)니라"
$R4: String = "빛을 낮이라 칭하시고 어두움을 밤이라 칭하시니라 저녁이 되며 아침이 되니 이는 첫째 날이니라"
```

### `.가`, `.이.가`

- `가위` → `가위가`
- `연필` → `연필이`
- `볼펜` → `볼펜이`

### `.과`, `.와`

- `가위` → `가위와`
- `연필` → `연필과`
- `볼펜` → `볼펜과`

### `.는`, `.은`, `.은.는`

- `가위` → `가위는`
- `연필` → `연필은`
- `볼펜` → `볼펜은`

### `.로`, `.으.로`, `.으로`

- `가위` → `가위로`
- `연필` → `연필로`
- `볼펜` → `볼펜으로`

### `.를`, `.을`, `.을.를`

- `가위` → `가위를`
- `연필` → `연필을`
- `볼펜` → `볼펜을`

### `.아`, `.야`

- `가위` → `가위야`
- `연필` → `연필아`
- `볼펜` → `볼펜아`

### `.여`, `.이.어`, `.이어`

- `가위` → `가위여`
- `연필` → `연필이어`
- `볼펜` → `볼펜이어`

### `.였`, `.이.었`, `.이었`

- `가위` → `가위였`
- `연필` → `연필이었`
- `볼펜` → `볼펜이었`

### `.예`, `.이.에`, `.이에`

- `가위` → `가위예`
- `연필` → `연필이에`
- `볼펜` → `볼펜이에`

### `.으`

- `가위` → `가위`
- `연필` → `연필`
- `볼펜` → `볼펜으`

### `.이`

- `가위` → `가위`
- `연필` → `연필이`
- `볼펜` → `볼펜이`

### `.이.오`, `.이오`

- `가위` → `가위요`
- `연필` → `연필이오`
- `볼펜` → `볼펜이오`

## 주의점

### ‘요’

**코리안(이)가**에서는 ‘이오/요’ 종결 어미와 ‘요’ 연결 어미의 혼동을 최소화하기 위해 `.요` 프로퍼티를 제공하지 않습니다.

1. ‘이오/요’ 종결 어미를 사용하기 위해서는 `.이오` 프로퍼티 또는 `.이.오` 프로퍼티 체인을 사용합니다.  
   ```swift
     1> import Koreaniga
     2> "이것은 \("감".이오)."
   $R0: String = "이것은 감이오."
     3> "이것은 \("배".이오)."
   $R1: String = "이것은 배요."
   ```
2. ‘요’ 연결 어미를 사용하기 위해서는 `.이` 프로퍼티와 `"요"` 문자열을 사용합니다.  
   ```swift
     1> import Koreaniga
     2> "이것은 \("감".이)요, 저것은 \("배".이)요, 그것은 \("사과".이)다."
   $R0: String = "이것은 감이요, 저것은 배요, 그것은 사과다."
   ```
