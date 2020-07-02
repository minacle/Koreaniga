import XCTest
@testable import Koreaniga

final class KoreanigaTests: XCTestCase {

    func testTibetanSandFox() {
        let mountain = "산"
        let water = "물"
        let mortal = "중생"
        let `where` = "어디"
        XCTAssertEqual("\(mountain.은) \(mountain.이)요, \(water.은) \(water.이)로다.",
                       "산은 산이요, 물은 물이로다.")
        XCTAssertEqual("\(mortal.아), 네 \(`where`.을) 방황하고 있느냐.",
                       "중생아, 네 어디를 방황하고 있느냐.")
    }

    func testSydneyOperaHouse() {
        let sydneyOperaHouse = "시드니 오페라 하우스"
        let removingResources = ["게", "어선"]
        XCTAssertEqual("이곳에 \(sydneyOperaHouse.을.를) 건설하겠습니까?",
                       "이곳에 시드니 오페라 하우스를 건설하겠습니까?")
        XCTAssertEqual("이 타일에서 \(removingResources[0].이.가) 제거됩니다.",
                       "이 타일에서 게가 제거됩니다.")
        XCTAssertEqual("이 타일에서 \(removingResources[1].이.가) 제거됩니다.",
                       "이 타일에서 어선이 제거됩니다.")
    }

    func testUDHR1() {
        let human = "인간"
        let dignity = "존엄"
        let reason = "이성"
        let conscience = "양심"
        let spirit = "정신"
        XCTAssertEqual("모든 \(human.는) 태어날 때부터 자유로우며 그 \(dignity.과) 권리에 있어 동등하다. \(human.는) 천부적으로 \(reason.과) \(conscience.를) 부여받았으며 서로 형제애의 \(spirit.로) 행동하여야 한다.",
                       "모든 인간은 태어날 때부터 자유로우며 그 존엄과 권리에 있어 동등하다. 인간은 천부적으로 이성과 양심을 부여받았으며 서로 형제애의 정신으로 행동하여야 한다.")
    }
}
