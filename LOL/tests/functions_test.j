.class public newtons_method
.super java/lang/Object


.method public static mul(FF)F
.limit stack 2
.limit locals 2
fload_0
fload_1
fmul
freturn
.end method

.method public static add(FF)F
.limit stack 2
.limit locals 2
fload_0
fload_1
fadd
freturn
.end method

.method public static div(FF)F
.limit stack 2
.limit locals 2
fload_0
fload_1
fdiv
freturn
.end method

.method public static sub(FF)F
.limit stack 2
.limit locals 2
fload_0
fload_1
fsub
freturn
.end method

.method public static pow(FF)F
.limit stack 4
.limit locals 3
ldc 1.0
fstore_2
ldc 1.0
LOOP:
ldc 0.0
fload_1
fcmpg
ifeq END_LOOP
fload_2
fload_0
invokestatic newtons_method/mul(FF)F
fstore_2
fload_1
ldc 1.0
invokestatic newtons_method/sub(FF)F

fstore_1
goto LOOP
END_LOOP:
pop
fload_2
freturn
.end method


.method public static square(F)F
.limit locals 15

.limit stack 15

fload 0
ldc 2.0
invokestatic newtons_method/pow(FF)F

fstore 2

fload 2
freturn
.end method



.method public static invert(F)F
.limit locals 15

.limit stack 15

ldc 0.0
fstore 2

ldc 0.0
fstore 3

fload 3
ldc 1.0
invokestatic newtons_method/sub(FF)F

fstore 3
fload 3
fload 0
invokestatic newtons_method/mul(FF)F

fstore 2
fload 2
freturn
.end method



.method public static newtonSqrtEpsilon(F)F
.limit locals 15

.limit stack 15

ldc 0.0
fstore 2

LABEL_2:
fload 0
ldc 1.0
fcmpg
ifne COND_0
ldc 1.0
fstore 2
goto COND_1
COND_0:
fload 0
ldc 2000.0
invokestatic newtons_method/newtonSqrt(FF)F
fstore 2
COND_1:
fload 2
freturn
.end method



.method public static newtonSqrt(FF)F
.limit locals 15

.limit stack 15

ldc 1.0
fstore 3

ldc 0.0
fstore 4

LABEL_0:
fload 4
fload 1
swap
fcmpg
iconst_1
isub
iflt LABEL_1
fload 3
fload 0
fload 3
invokestatic newtons_method/div(FF)F

invokestatic newtons_method/add(FF)F

ldc 2.0
invokestatic newtons_method/div(FF)F

fstore 3
fload 4
ldc 1.0
invokestatic newtons_method/add(FF)F

fstore 4
goto LABEL_0
LABEL_1:
fload 3
freturn
.end method



.method public static main([Ljava/lang/String;)V

.limit stack 86
.limit locals 4

ldc "going to attempt to calculate a square root of 168 number using 1500 iterations"
getstatic java/lang/System/out Ljava/io/PrintStream;
swap
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

ldc 168.0
fstore 1

ldc 70.0
fstore 2

ldc 168.0
ldc 1500.0
invokestatic newtons_method/newtonSqrt(FF)F
fstore 3

ldc ""
getstatic java/lang/System/out Ljava/io/PrintStream;
dup
ldc " "
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
swap
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

ldc "result is: "
getstatic java/lang/System/out Ljava/io/PrintStream;
swap
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

fload 3
getstatic java/lang/System/out Ljava/io/PrintStream;
swap
invokevirtual java/io/PrintStream/print(F)V

ldc "lets take the opposite: "
getstatic java/lang/System/out Ljava/io/PrintStream;
dup
ldc " "
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
swap
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

fload 3
invokestatic newtons_method/invert(F)F
fstore 3
fload 3
getstatic java/lang/System/out Ljava/io/PrintStream;
swap
invokevirtual java/io/PrintStream/print(F)V

ldc "Next we will let the computer do the heavy lifting to find the square root of 1426:"
getstatic java/lang/System/out Ljava/io/PrintStream;
dup
ldc " "
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
swap
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

ldc 1426.0
fstore 1
fload 1
invokestatic newtons_method/newtonSqrtEpsilon(F)F
fstore 3
fload 3
getstatic java/lang/System/out Ljava/io/PrintStream;
dup
ldc " "
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
swap
invokevirtual java/io/PrintStream/print(F)V

ldc "just to make sure lets square them: "
getstatic java/lang/System/out Ljava/io/PrintStream;
dup
ldc " "
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
swap
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

fload 3
invokestatic newtons_method/square(F)F
fstore 3
fload 3
getstatic java/lang/System/out Ljava/io/PrintStream;
swap
invokevirtual java/io/PrintStream/print(F)V

ldc " "
getstatic java/lang/System/out Ljava/io/PrintStream;
swap
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

fload 1
getstatic java/lang/System/out Ljava/io/PrintStream;
swap
invokevirtual java/io/PrintStream/print(F)V


return
.end method

