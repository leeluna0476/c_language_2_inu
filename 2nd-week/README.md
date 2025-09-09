# Question, Guess, Result, and Conclusion
## Question0
```c
// ...
	unsigned char	a = 0xf0;
	printf("0x%x\n", ~a);
// ...
```
<수업 환경: x86 (32bit)><br>
교수님의 question: 위 코드를 실행하면 무엇이 출력될까?<br>
## Guess0
my guess: `0x0f`<br>
## Result0
-> wrong<br>
```
0xffffff0f
```
## Conclusion0
`~`는 비트 NOT '연산자'이다.<br>
컴퓨터는 연산을 할 때 숫자를 레지스터 크기에 맞춰 승격시킨 다음에 연산을 한다.<br>
이를 '정수 승격(integer promotion)'이라고 한다.<br>
위 코드를 예로 들면, 1 byte `0xf0`을 4 byte `0xf0`으로 바꿔서 `~` 연산을 한다는 뜻이다.<br>
그래서 순서대로, 메모리에 저장되어 있던 1 byte `0xf0`을 4 byte 크기의 레지스터로 불러와서 `0x000000f0` -> `~` 연산을 한다.`0xffffff0f`.<br>
왜 승격을 시킬까?<br>
32bit 컴퓨터는 4바이트 데이터로만 연산을 할 수 있다고 한다.<br>
그래서 양수는 상위 비트를 전부 0으로, 음수는 전부 1로 채우는 것이다.<br>

## Question1
```c
// ...
	unsigned char	a = 0xf0;
	printf("0x%x\n", ~a);
	printf("0x%x\n", ~~a);
// ...
```
<테스트 환경: arm64 (64bit)><br>
위 코드를 실행하면 무엇이 출력될까?
## Guess1
64bit 시스템이니 첫 출력은 `0xffffffffffffff0f`가 출력될 것이고, 두번째 출력은 `~` 연산이 두번 실행되어 원래 값과 동일한 값이 출력될 것이다.<br>
각 형태는, 연산을 하면서 정수 승격이 일어나 16진수 16자리로 출력될 것으로 예상한다.
## Result1
```
0xffffff0f
0xf0
```
두가지 질문이 더 발생했다.
1. 왜 첫줄은 8자리만 출력되는가?
2. 왜 둘째줄은 `0x00000000000000f0`도, `0x000000f0`도 아니고 `0xf0`인가?
