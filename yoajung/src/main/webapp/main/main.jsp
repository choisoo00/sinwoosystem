<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<div class="main-page">
        <div class="main-wrap">
            <!-- <div class="popup" style="position: fixed; display: flex;">
                <div class="overlay"></div>
                <div class="popup-top">
                    <a href="#" class="popup-esc">
                        <img src="../image/a_23.png" alt="esc이미지">
                    </a>
                </div>
                <div class="popup-bottom">
                    <div class="popup-bottom-img">
                        <img src="../image/a_25.png" alt="남사장님">
                    </div>
                    <div class="popup-bottom-Q&A-upper">
                        <div class="Q&A1">
                            <div class="Q1">Q. 요아정을 선택한 이유?</div>
                            <div class="A1"> 저도 처음엔 지인의 소개로 요아정을 이용한 한 명의 고객이었습니다. 그런데 너무 맛있는 거예요.<br>
                                그러다 보니 자주 요아정을 이용했어요 와이프까지 좋아하다 보니 이용 빈도가 높았습니다.<br>
                                자주 이용하다 보니 요아정에 대한 신뢰가 생기더라고요. 그러다 보니 우리도 이렇게 좋아하는데<br>
                                분명 많은 사람들도 좋아하지 않을까라는 확신이 그럼 내가 운영해 보자는 결심까지 하게 되었습니다.
                            </div>
                        </div>
                        <div class="Q&A2">
                            <div class="Q2">Q. 창업 후 삶의 변화</div>
                            <div class="A2">바쁘지만 재미있는 삶을 살고 있습니다. 저희 매장은 늦은 새벽 1시까지 운영해 피곤하지만<br>
                                늦은 시간임에도 불구하고 많은 분들이 찾아주시니 바쁘지만 재미있습니다.<br>
                                특히 요아정은 생과일만을 취급하는데 매 시즌 제철 과일을 다루고 이를 이용하는 고객님이 건강한<br>
                                아이스크림을 먹는 기분이라 항상 잘 먹고 있다는 말을 들을 때면 매우 힘이 납니다.<br>
                                그러다 보니 과일도 더욱 신선하고 높은 당고로 준비하려 더 노력하게 되고 매일을 알차게 운영하는<br>
                                제 스스로도 만족하게 되는 삶이 꽤 즐겁습니다.
                            </div>
                        </div>
                    </div>
                    <div class="popup-bottom-Q&A-lower">
                        <div class="Q&A3">
                            <div class="Q3">Q. 매장 운영하며 만족스러운 점</div>
                            <div class="A3">저희 매장은 8평 남짓입니다. 아이스크림과 과일에 집중하다 보니 많은 공간이 필요하지 않고 작은 공간에서도 효율적인 운영이 가능하고 근무 강도가 높지 않아<br>
                                매출 대비 피로도가 매우 낮은 것 같아요. 그 말인즉슨 근무강도에 비해 괜찮은 매출이 나와 가끔은 놀랍습니다.<br>
                                모든 자영업과 F&B 브랜드 운영이 쉽지 않고 꽤 고강도의 근무를 요구하지만 요아정 만큼은 근무 만족도는 상위 1%라 감히 말할 수 있을 것 같아요.<br>
                                당연히 마냥 쉽지만 앖지만 다른 업장 대비 어렵지도 않습니다.
                            </div>
                        </div>
                        <div class="Q&A4">
                            <div class="Q4">Q. 요아정만의 장점&차별화</div>
                            <div class="A4">
                                "요아정만의 장점&차별화가 제가 요아정을 선택한 결정적인 이유입니다."
                                <br>
                                <br>
                                1. 현재 국내 아이스크림 시장은 베스킨라빈스가 독점하고 있지만 다른 경쟁 브랜드도 없는 상태이고 더군다나 베스킨의 점유율이 압도적이라 딱히 비슷한 맛과 컨셉으로
                                <br>
                                경쟁하려고 하는 브랜드가 없어요 앞으로 몇 년간 없을 것이라 예상도 되고요.
                                <br>
                                그렇다면 고객은 선택의 폭이 매우 줄어들 거라 생각했습니다. 고객의 니즈는 다양한데 매일 같은 브랜드의 아이스크림은 식상할 거라 생각했습니다.
                                <br>
                                한국 시장에서 요아정은 베스킨의 하위 모델로 매우 알맞다고 생각이 들었습니다.
                                <br>
                                <br>
                                2. 아이스크림은 아주 오랜 역사를 가지고 있어요 그 말은 옛날에도 먹었고 10년 전에도 먹었고 1년 전에도 먹었고 10년 후에도 먹을 거고 20년 후에도 먹을 거라 확신했죠.
                                <br>
                                또 한국인의 특성상 겨울에도 아아를 찾듯이 여러 이유로 한겨울에도 아이스크림을 찾아요. 여름은 성수기지만 그 외 비수기라는 게 없을 거라 생각했습니다.
                                <br>
                                하지만 너무 개성이 넘치는 아이스크림은 접근이 어려워요 그런데 요아정은 싫어할 수 없는 맛에 요거트를 싫어한 사람도 요아정은 좋다고 했어요.
                                <br>
                                <br>
                                그만큼 대중적이라 판단했습니다.

                                3. 요아정의 아이스크림 제조는 점주가 할 게 없습니다.
                                <br>
                                성인이면 누구가 할 수 있으며 전문적인 기술을 요구하지도 않고 시간도 오래 쓸 일이 없습니다. 준비가 간단하고 신속하다 보니 점주는 판매와 영업에 집중할 수 있다는 게 매우 큰 장점입니다.
                                <br>
                                <br>
                                4. 차별화는 명확합니다. 국내에 요거트아이스크림 전문점이 없어요 생각나는 한두 개는 있지만 대중적이지 않아요.
                                <br>
                                요거트아이스크림전문점이라는 대체가 불가능한 영역에서 요아정이 원조로 자리매김하고 있습니다.
                                <br>
                                <br>
                                제가 요아정의 고객일 때 정말 좋아한 이유 중 하나는 텁텁하지 않고 마지막까지 깔끔한 맛이었어요. 매번 먹을 때마다 그 말이 입 밖으로 나왔어요.
                                <br>
                                어떻게 이렇게 깔끔하지 하고요 베스킨이나 다른 아이스크림 전문점의 아이스크림은 먹는 중에도 이미 부담이 되더라고요.
                                <br>
                                어느 정도 먹다 보면 느끼하거나 입이 텁텁해 계속해서 물을 찾게 되고 결국엔 다 먹지 못하고 남기는 일이 많았어요.
                                <br>
                                그런데 요아정은 유일하게 마지막 한 입까지 맛있게 먹었어요 아쉬울 정도로요 그러다 보니 다음 구매는 이미 마지막 한입 때 결정될 정도였습니다. “아 또 먹어야지”
                                <br>
                                <br>
                                요아정의 모든 과일은 반드시 생과일만 사용합니다. 계절마다 가장 맛있는 제일 과일을 취급하고요 품목은 철저히 점주가 주도하에 매입합니다.
                                <br>
                                다양하게 선보일 수 있다는 말이죠.
                                <br>
                                다양한 취향의 고객님이 있지만 다들 하나같이 말하는 게 있어요.
                                <br>
                                “과일을 잘 안 먹는데 아이스크림이 맛있어서 같이 먹다 보니 과일도 많이 먹어요“
                                <br>
                                ”과일 먹으려고 일부러 요아정을 찾아요“
                                <br>
                                ”생과일이라 비타민 가득 건강한 기분이 들어요“
                                <br>
                                결국 나도 그렇지만 다른 분들도 아이스크림도 건강하게 먹고 싶구나 생각이 들었습니다.
                                <br>
                                <br>
                                요아정이 유명해지고 유사 브랜드가 생겼지만 냉동과일을 쓰더라고요. 생과일과 냉동과일은 비교가 불가라 이점이 다른 브랜드와는 차별이라 확신합니다.
                            </div>
                        </div>
                        <div class="Q&A5">
                            <div class="Q5">Q. 본사의 만족스러운 점</div>
                            <div class="A5">
                                항상 많은 지원과 이벤트를 구상하고 실행합니다. 지점이 잘 돼야 본사가 잘 된다는 모토가 분명한 것 같아요 좋은 건 공유하고 각 지점 매출 상승에 많은 노력을 해줍니다.
                                <br>
                                매번 많은 질문에도 친절하게 응대해 주시고 매번 감사할 따름입니다. 그리고 다른 브랜드와 다르게 각 지점 운영에 대한 개입보다는 개별 운영 자유도를 주어서 제약되는
                                <br>
                                상황이 많이 없습니다. 요아정 브랜드의 원초적인 것만 지키면 그 외 영업, 경영, 매출 아이템에 대해서는 철저히 점주 입장에서 자유로이 운영을 제공하고 있습니다.
                                <br>
                                이점이 정말 다른 브랜드와는 큰 차별점 인과 동시에 큰 장점이라 생각이 듭니다.
                                <br>
                                다른 유명 브랜드는 철저히 본사 컨트롤 안에서 운영하게 제약을 두어 점주와의 마찰이 많은데 요아정은 그럴 일이 없습니다. 최고
                            </div>
                        </div>
                        <div class="Q&A6">
                            <div class="Q6">Q. 예비점주님께 전합니다.</div>
                            <div class="A6">
                                요아정은 경쟁없는 대체불가의 영역에서 요거트아이스크림 전문점 1위 브랜드입니다.
                                <br>
                                누구나 사랑할 수밖에 없는 맛과 생과일을 사용해 건강한 아이스크림으로 굳건한 이미지를 구축하고 있어요. 강민경, 입짧은햇님, 오눅 등 정말 유명한 연예인&인플루언서가
                                <br>
                                극찬한 맛입니다. 앞으로 가능성이 큰 브랜드라 자부할 수 있고 이미 해외 진출까지 했고 앞으로 전 세계를 사로잡을 수 있는 맛이라고 보장합니다.
                                <br>
                                매장을 운영하는 저도 진짜 매일 요거트 아이스크림을 먹어요 건강하고 맛있으니까
                                <br>
                                매장을 운영하지 않는 날이면 집 근처 가까운 요아정에서 사 먹습니다. 그 정도입니다 여러분
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->

            <div class="main-first"> 신선하고 건강한 디저트</div>
            <div class="main-second"> 요아정혜택과 매장검색</div>
            <div class="main-third"> 베스트 메뉴 네개 </div>
            <div class="main-fourth">
                <div class="interview">
                    <div class="interview-left">
                        <div class="describe">
                            <img src="../image/a_18.png" alt="interview" >
                            <span class="interview-title">INTERVIEW</span>
                            <span>요아정과 함께 하고 있는<br>
                                <br> 점주님의 솔직담백 이야기</span>
                        </div>
                    </div>
                    <div class="interview-center">
                        <img src="../image/a_21.jpg" alt="남사장님">
                        <div class="center-left">
                            <div class="story_1">
                                <p>STORY 02</p>
                                <img src="../image/a_19.png" alt="바닥작대기">
                            </div>
                            <div class="story_2">
                                <p>8평 소형 평수에서<br></p>
                                <span>즐겁고 편안하게<br>운영하고 있어요.</span>
                            </div>
                            <div class="story_3">
                                <span>
                                    #소형평수가능<br>
                                    <br>
                                    #효율적인 운영
                                </span>
                            </div>
                            <div class="detail">
                                <div class="details">
                                    <p>
                                        <a href="#">자세히보기</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="center-right">
                        </div>
                    </div>
                    <div class="interview-right">
                        <div class="upper">
                            <div class="now">
                                <p>STORY 02</p>
                            </div>
                            <img src="../image/a_19.png" alt="바닥작대기">
                            <p>8평 소형 평수에서</p>
                            <span>즐겁고 편안하게<br>운영하고 있어요.</span>
                        </div>
                        <div class="lower">
                            <div class="next">
                                <p>STORY 03</p>
                            </div>
                            <img src="../image/a_19.png" alt="바닥작대기">
                            <p>확실하게 재구매가</p>
                            <span>일어나는 요아정<br>든든해요!</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-fifth">
                <div class="community">
                    <div class="community-left">
                        <div class="community-left-upper">
                            <div class="logo"><img src="../image/a_13.png" alt="community-로고"></div>
                            <span>community</span>
                        </div>
                        <div class="community-left-lower">
                            <span>요아정의 다양한 소식과<br>이벤트를 확인해보세요!</span>
                        </div>
                    </div>
                    <div class="community-right">
                        <div class="homepage-renewal">
                            <span class="title">[OPEN]요아정 홈페이지 리뉴얼</span>
                            <span class="date">24-08-06</span>
                        </div>
                        <div class="detail">
                            <div class="details">
                                <a href="./community.jsp">자세히보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-last">
                <div class="center">
                    <div class="sns">
                        <div id="logo"><img src="../image/a_13.png" alt="sns-로고"></div>
                        <span>sns</span>
                    </div>
                    <div class="insta_official">
                        <p>
                            <a href="https://www.instagram.com/yoajung_official/" target="_blank">@yoajung_official</a>
                        </p>    
                    </div>
                    <div class="insta-picture">
                        <div class="picture-upper">
                            <div class="insta-picture-1">
                                <a href="https://www.instagram.com/yoajung_official/" target="_blank">
                                    <img src="../image/450424089_1485995938988301_5972059249787995566_n.jfif" alt="요아정과 함께 시원하게">
                                </a>
                            </div>
                            <div class="insta-picture-2">
                                <a href="https://www.instagram.com/yoajung_official/" target="_blank">
                                    <img src="../image/448155240_1233026141011711_3129197489457184296_n.jfif" alt="요아정HAWAII">
                                </a>
                            </div>
                            <div class="insta-picture-3">
                                <a href="https://www.instagram.com/yoajung_official/" target="_blank">
                                    <img src="../image/441185006_990148622480821_3212549173075564763_n.jfif" alt="요아정을 찾아라!">
                                </a>
                            </div>
                            <div class="insta-picture-4">
                                <a href="https://www.instagram.com/yoajung_official/" target="_blank">
                                    <img src="../image/436380174_346288574575100_5989417595700567199_n.jfif" alt="돗자리위의 요아정">
                                </a>
                            </div>
                            <div class="insta-picture-5">
                                <a href="https://www.instagram.com/yoajung_official/" target="_blank">
                                    <img src="../image/435314694_441234901741816_4513485677241437638_n.jfif" alt="1만 팔로워 EVENT">
                                </a>
                            </div>
                        </div>
                        <div class="picture-lower">
                            <div class="insta-picture-6">
                                <a href="https://www.instagram.com/yoajung_official/" target="_blank">
                                    <img src="../image/432569289_7094508927344050_5229038741688036328_n.jfif" alt="WHITE DAY">
                                </a>
                            </div>
                            <div class="insta-picture-7">
                                <a href="https://www.instagram.com/yoajung_official/" target="_blank">
                                    <img src="../image/431057612_422832226985263_448542666979877112_n.jfif" alt="요아정 서포터즈 1기 모집">
                                </a>
                            </div>
                            <div class="insta-picture-8">
                                <a href="https://www.instagram.com/yoajung_official/" target="_blank">
                                    <img src="../image/430661516_951478039828893_4294458231657198921_n.jfif" alt="3.1절">
                                </a>
                            </div>
                            <div class="insta-picture-9">
                                <a href="https://www.instagram.com/yoajung_official/" target="_blank">
                                    <img src="../image/429340619_1047664436345140_810021940344573736_n.jfif" alt="블루베리">
                                </a>
                            </div>
                            <div class="insta-picture-10">
                                <a href="https://www.instagram.com/yoajung_official/" target="_blank">
                                    <img src="../image/427415179_1440901233167045_8383055377494835233_n.jfif" alt="순간포착">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/footer.jsp" %>
</body>
</html>