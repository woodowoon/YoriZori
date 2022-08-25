# 요리조리
다양한 요리 레시피를 제공해주는 웹 사이트
## 기획의도

&nbsp; 최근 배달비가 부담돼서 요리를 시작하려는 사용자들을 위한, <br>
냉장고 속 재료들을 활용해 무엇을 만들어 먹어야 할지 고민되는 사용자들을 위한,<br>
레시피 제공 웹사이트입니다. <br>

냉장고 안에 재료는 많은데 무엇을 만들어 먹을지 고민되거나, 빨리 처리하고싶은 재료가 있을 때 보유한 재료를 검색하여 레시피 정보를 제공한다. 또한, 다양한 레시피를 제공하여 다양한 요리 레시피를 찾을 수 있습니다.

냉장고 속 재료들을 활용하여 긍정적인 경제 효과를 기대할 수 있고, <br>
다양한 사람들에게 요리에 대한 즐거움을 가져다 줄 수 있습니다.

## 팀원 소개
![팀원](https://user-images.githubusercontent.com/67787525/186371668-33350610-8fc2-4e3f-a9a9-f45aebb81eda.png)

## 개발 환경
![개발환경](https://user-images.githubusercontent.com/67787525/186371325-2330c28c-43f2-44e4-9bb8-ce43e2261bf6.png)

## ERD
![image](https://user-images.githubusercontent.com/67787525/186565305-cc73c7c3-fe0f-4e93-8c86-ae5b72b6bc9c.png)

## 주요기능
<b>메인화면</b><br>
![image](https://user-images.githubusercontent.com/67787525/186566489-c6891ba4-16c7-46dc-84ef-792f827796d5.png) <br>
- 메인화면에는 전체적으로 밝은 색간과 납작한 폰트를 사용하여 친숙한 느낌으로 디자인 하였고 하단에는 웹페이지 기능에대한 간략한 소개로 구성하였습니다.

<br>

<b>레시피 등록</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569838-88b30696-68f8-4172-9355-1f7570f63edb.png) <br>
- 레시피 등록화면해서 레시피를 등록할 수 있고 다양한 재료들을 통해 세세하게 재료 상세 정보를 입력할 수 있습니다.

<br>

<b>레시피 리스트</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569873-4349d053-a244-4def-828d-6f364328b6c4.png)
- 레시피 리스트화면해서 레시피의 리스트를 확인할 수 있으며, 좋아요 순으로 출력됩니다.
- 리스트 내에서 사용자가 좋아요한 레시피를 확인할 수 있습니다.
- 리스트 내에서 좋아요/좋아요취소 가 가능합니다.

<br>

<b>레시피 상세</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569883-828f70c8-05e1-4f35-bcb5-e0135d30a7bf.png)
- 레시피의 상세한 설명을 확인할 수 있습니다. 
- 댓글, 대댓글 작성 및 신고, 좋아요, 레시피 링크 복사가 가능합니다.

<br>

<b>클래스 등록</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569896-b3e5c7e4-0e31-4590-9bfb-a49640be8b6d.png)
- 클래스는 무료로 제공되는 레시피와 달리 유료로 제공되는 동영상 레시피입니다.
- 클래스 등록에서 정보를 입력받고 클래스 강의 영상의 길이를 추출해 DB에 함께 저장합니다.

<br>

<b>클래스 리스트</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569915-18502af1-9a3d-445f-8ad2-89fe2ff592d4.png)
- 클래스 강의를 등록한 셰프의 팔로워 수가 높은 순으로 출력됩니다
- 원하는 분류에 따라 리스트를 제공받을 수 있습니다.
- 찜하기 / 찜하기 취소 가 가능합니다.

<br>

<b>클래스 상세</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569929-0e666c6c-4f9d-4aa4-8b6f-2cfcd991a50e.png)
- 클래스의 상세 정보를 제공합니다.
- 클래스 상세페이지에서 쉐프의 프로필 클릭 시 해당 쉐프의 마이페이지로 이동 가능합니다.
- 결제 버튼을 클릭시 결제페이지로 이동하고 결제가 가능합니다.
- 클래스 리뷰를 확인할 수 있고 Q&A 작성이 가능합니다

<br>

<b>클래스 결제</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569945-d400947f-5d3d-48a4-8821-ec27a0909b58.png)
- 클래스 결제화면입니다.
- I'mport Api 카카오페이 를 활용하고 결제가 가능합니다.

<br>

<b>분류</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569961-7e17004c-dbda-4d40-aeb8-9beed2fd3541.png)
- 다섯가지 카테고리에서 체크박스를 통해 중복체크하여 레시피를 검색 가능합니다.
- 출력된 레시피는 좋아요, 최신순으로 정렬이 가능합니다.

<br>

<b>랭킹 - 레시피</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569974-bba764a6-4f19-408c-b514-aee03d969ee9.png)
- 좋아요 순으로 1 ~ 100위까지 레시피를 출력합니다.
- 레시피 사진 또는 제목을 클릭시 해당 레시피 상세 페이지로 이동합니다.
- 레시피 작성자 프로필을 클릭 시 회원의 마이페이지로 이동합니다.

<br>

<b>랭킹 - 셰프</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569989-d77b826c-4c1f-4681-b2c7-4c1eef6d54f5.png)
- 팔로우 순으로 1 ~ 100위까지 쉐프를 출력합니다.
- 셰프의 프로필 사진 또는 닉네임 클릭 시 해당 회원의 마이페이지로 이동합니다.

<br>

<b>냉장고파먹기</b><br>
![image](https://user-images.githubusercontent.com/67787525/186569998-fc44f885-4890-4dd1-89e5-f9f0a41a9638.png)
- 재료이미지를 클릭하여 재료선택이 가능합니다.

<br>

<b>냉장고파먹기 리스트</b><br>

![image](https://user-images.githubusercontent.com/67787525/186570020-560ed922-a844-47a4-a854-5dcb62413af0.png)
- 선택한 재료를 DB에 저장된 레시피의 재료와 대조하여 재료가 3개 이상 일치 시 레시피를 출력하도록 하였습니다.
- 출력된 레시피 클릭 시 레시피 상세보기로 이동합니다.

<br>

<b>지역축제 리스트</b><br>

![image](https://user-images.githubusercontent.com/67787525/186570033-5d359542-e765-4af7-81d1-98a0d392dcc3.png)
- 전국 지역 음식 축제를 Tab를 통해 예정, 진행, 종료로 분류하여 제공합니다.

<br>

<b>지역축제 상세</b><br>

![image](https://user-images.githubusercontent.com/67787525/186570370-aa24348a-0f2a-46b3-a538-028a8c779913.png)

- 축제 상세 정보를 제공합니다.
- 별 모양 버튼을 통해 관심등록/관심취소가 가능합니다.
- 관심 등록한 축제는 마이페이지에서 확인 가능합니다.

<br>

<b>지역축제 상세</b><br>
![image](https://user-images.githubusercontent.com/67787525/186570495-9d66f99d-cb7e-47f9-ba90-d4b8e95a22d4.png)
- 축제 위치 정보를 카카오맵Api를 통해 제공합니다.
- 이전글 다음글 이동이 가능하며, 댓글 등록 및 삭제가 가능합니다.

<br>

<b>데일리쿡</b><br>
![image](https://user-images.githubusercontent.com/67787525/186570605-c0097b9f-fef3-4e26-be95-a5d364e8ac47.png)
- 요리조리의 커뮤니티 역할을 하는 오늘의 한끼 게시판으로 회원만 이용이 가능합니다.

<br>

<b>고객센터 FAQ</b><br>
![image](https://user-images.githubusercontent.com/67787525/186571315-d9a03d99-da04-4a1b-ae39-c7a380a252f6.png)
- 질문을 카테고리별로 분류하여 FAQ를 확인할 수 있습니다.

<br>

<b>고객센터 1:1 문의</b><br>
![image](https://user-images.githubusercontent.com/67787525/186571396-81c8dd3b-8d7e-4b86-bb10-fa94e337e77f.png)
- 질문자는 질문 공개 여부 설정이 가능하며 답변등록은 관리자만 가능합니다.

<br>

<b>마이페이지</b><br>
![image](https://user-images.githubusercontent.com/67787525/186571485-5a8469fe-e9ee-47b5-b218-eacfe0b24704.png)
- 자신이 등록한 레시피, 팔로워/팔로잉 리스트 등의 정보를 제공합니다.
- 좌측 상단 리스트 버튼을 클릭하면 오프캔버스를 통해 좋아요한 레시피, 클래스주문/환불/판매 내역 등 다양한 기능이 제공됩니다.

<br>

<b>마이페이지</b><br>
![image](https://user-images.githubusercontent.com/67787525/186571619-42e05416-3230-4adb-91cf-d532c8ae79a8.png)
- 팔로잉을 클릭하면 사용자가 팔로우한 회원 리스트를 제공합니다.
- 팔로우/언팔로우가 가능합니다.

<br>

<b>마이페이지 주문내역</b><br>
![image](https://user-images.githubusercontent.com/67787525/186571693-3635ec79-64fb-410b-b43b-7f248ccb046c.png)
- 사용자가 구매한 클래스 내역을 출력합니다.
- 리뷰를 작성할 수 있습니다.

<br>

<b>관리자 페이지 회원관리</b><br>
![image](https://user-images.githubusercontent.com/67787525/186571790-0b8c929f-d5a9-48a2-a060-3e2552c185e7.png)
- 등록되어있는 회원들의 리스트를 확인할 수 있습니다.
- 회원 선택시 회원의 상세정보와 회원의 계정상태까지 확인 가능하고 회원의 상태를 변경할 수 있습니다.











