# Question, Guess, and Conclusion
## Question0
```c
// bit_operation.c
// ...
	unsigned char	a = 0xf0;
	printf("~a: 0x%x\n", ~a);
// ...
```
<수업 환경: x86 (32bit)>
교수님의 question: 위 코드를 실행하면 무엇이 출력될까?<br>
## Guess0
my guess: `0x0f`<br>
## Conclusion0
-> wrong<br>
`~`는 비트 NOT '연산자'이다.<br>
컴퓨터는 연산을 할 때 숫자를 레지스터 크기에 맞춰 승격시킨 다음에 연산을 한다.<br>
이를 '정수 승격(integer promotion)'이라고 한다.<br>
위 코드를 예로 들면, 1 byte `0xf0`을 4 byte `0xf0`으로 바꿔서 `~` 연산을 한다는 뜻이다.<br>
그래서 순서대로, 메모리에 저장되어 있던 1 byte `0xf0`을 4 byte 크기의 레지스터로 불러와서 `0x000000f0` -> `~` 연산을 한다.`0xffffff0f`.<br>
왜 승격을 시킬까?<br>
32bit 컴퓨터는 4바이트 데이터로만 연산을 할 수 있다고 한다.<br>
그래서 양수는 상위 비트를 전부 0으로, 음수는 전부 1로 채우는 것이다.<br>
