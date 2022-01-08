@256
D=A
@SP
M=D
@0
D=A
@R14
M=D
@Sys.init
D=A
@R13
M=D
@return0
D=A
@CALL
0;JMP
(return0)
(HALT)
@HALT
0;JMP
(RETURN)
@LCL
D=M
@R13
M=D
@R13
D=M
@5
A=D-A
D=M
@R14
M=D
@SP
A=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R13
AM=M-1
D=M
@THAT
M=D
@R13
AM=M-1
D=M
@THIS
M=D
@R13
AM=M-1
D=M
@ARG
M=D
@R13
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
(CALL)
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@R14
A=M
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@R13
A=M
0;JMP

(Memory.init)
@0
D=A
(Memory.init_LOOP)
@Memory.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Memory.init_LOOP
0;JMP
(Memory.init_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@Memory.0
M=D
@2048  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Memory.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@6142  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@2049  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@Memory.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2050  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Memory.peek)
@0
D=A
(Memory.peek_LOOP)
@Memory.peek_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Memory.peek_LOOP
0;JMP
(Memory.peek_END)

@Memory.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Memory.poke)
@0
D=A
(Memory.poke_LOOP)
@Memory.poke_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Memory.poke_LOOP
0;JMP
(Memory.poke_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Memory.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Memory.alloc)
@1
D=A
(Memory.alloc_LOOP)
@Memory.alloc_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Memory.alloc_LOOP
0;JMP
(Memory.alloc_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt0
D;JLT
@SP
A=M-1
M=0
(lt0)
@SP
AM=M-1
D=M
@Memory.alloc$if1
D;JNE
@Memory.alloc$ifelse1
0;JMP
(Memory.alloc$if1)
@5  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return1
D=A
@CALL
0;JMP
(return1)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Memory.alloc$ifelse1)
@2048  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Memory.alloc$while7)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt1
D;JLT
@SP
A=M-1
M=0
(lt1)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Memory.alloc$whileend7
D;JNE
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Memory.alloc$while7
0;JMP
(Memory.alloc$whileend7)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@8187  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt2
D;JGT
@SP
A=M-1
M=0
(gt2)
@SP
AM=M-1
D=M
@Memory.alloc$if10
D;JNE
@Memory.alloc$ifelse10
0;JMP
(Memory.alloc$if10)
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return2
D=A
@CALL
0;JMP
(return2)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Memory.alloc$ifelse10)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt3
D;JGT
@SP
A=M-1
M=0
(gt3)
@SP
AM=M-1
D=M
@Memory.alloc$if15
D;JNE
@Memory.alloc$ifelse15
0;JMP
(Memory.alloc$if15)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq4
D;JEQ
@SP
A=M-1
M=0
(eq4)
@SP
AM=M-1
D=M
@Memory.alloc$if16
D;JNE
@Memory.alloc$ifelse16
0;JMP
(Memory.alloc$if16)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@4  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Memory.alloc$ifend16
0;JMP
(Memory.alloc$ifelse16)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Memory.alloc$ifend16)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Memory.alloc$ifelse15)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@RETURN
0;JMP

(Memory.deAlloc)
@2
D=A
(Memory.deAlloc_LOOP)
@Memory.deAlloc_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Memory.deAlloc_LOOP
0;JMP
(Memory.deAlloc_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq5
D;JEQ
@SP
A=M-1
M=0
(eq5)
@SP
AM=M-1
D=M
@Memory.deAlloc$if1
D;JNE
@Memory.deAlloc$ifelse1
0;JMP
(Memory.deAlloc$if1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Memory.deAlloc$ifend1
0;JMP
(Memory.deAlloc$ifelse1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq6
D;JEQ
@SP
A=M-1
M=0
(eq6)
@SP
AM=M-1
D=M
@Memory.deAlloc$if4
D;JNE
@Memory.deAlloc$ifelse4
0;JMP
(Memory.deAlloc$if4)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Memory.deAlloc$ifend4
0;JMP
(Memory.deAlloc$ifelse4)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Memory.deAlloc$ifend4)
(Memory.deAlloc$ifend1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Sys.init)
@0
D=A
(Sys.init_LOOP)
@Sys.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Sys.init_LOOP
0;JMP
(Sys.init_END)

@0
D=A
@R14
M=D
@GPIO.init
D=A
@R13
M=D
@return3
D=A
@CALL
0;JMP
(return3)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@UART.init
D=A
@R13
M=D
@return4
D=A
@CALL
0;JMP
(return4)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Memory.init
D=A
@R13
M=D
@return5
D=A
@CALL
0;JMP
(return5)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Array.init
D=A
@R13
M=D
@return6
D=A
@CALL
0;JMP
(return6)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Math.init
D=A
@R13
M=D
@return7
D=A
@CALL
0;JMP
(return7)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Main.main
D=A
@R13
M=D
@return8
D=A
@CALL
0;JMP
(return8)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Sys.halt
D=A
@R13
M=D
@return9
D=A
@CALL
0;JMP
(return9)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Sys.halt)
@0
D=A
(Sys.halt_LOOP)
@Sys.halt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Sys.halt_LOOP
0;JMP
(Sys.halt_END)

@0
D=A
@R14
M=D
@GPIO.getLed
D=A
@R13
M=D
@return10
D=A
@CALL
0;JMP
(return10)
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@1
D=A
@R14
M=D
@GPIO.setLed
D=A
@R13
M=D
@return11
D=A
@CALL
0;JMP
(return11)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Sys.halt$while4)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Sys.halt$whileend4
D;JNE
@Sys.halt$while4
0;JMP
(Sys.halt$whileend4)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Sys.wait)
@1
D=A
(Sys.wait_LOOP)
@Sys.wait_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Sys.wait_LOOP
0;JMP
(Sys.wait_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt7
D;JLT
@SP
A=M-1
M=0
(lt7)
@SP
AM=M-1
D=M
@Sys.wait$if1
D;JNE
@Sys.wait$ifelse1
0;JMP
(Sys.wait$if1)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return12
D=A
@CALL
0;JMP
(return12)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Sys.wait$ifelse1)
(Sys.wait$while7)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt8
D;JGT
@SP
A=M-1
M=0
(gt8)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Sys.wait$whileend7
D;JNE
@500  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Sys.wait$while9)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt9
D;JGT
@SP
A=M-1
M=0
(gt9)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Sys.wait$whileend9
D;JNE
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Sys.wait$while9
0;JMP
(Sys.wait$whileend9)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@ARG //pop argument
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Sys.wait$while7
0;JMP
(Sys.wait$whileend7)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Sys.error)
@0
D=A
(Sys.error_LOOP)
@Sys.error_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Sys.error_LOOP
0;JMP
(Sys.error_END)

@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@GPIO.setLed
D=A
@R13
M=D
@return13
D=A
@CALL
0;JMP
(return13)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return14
D=A
@CALL
0;JMP
(return14)
@69  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return15
D=A
@CALL
0;JMP
(return15)
@82  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return16
D=A
@CALL
0;JMP
(return16)
@82  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return17
D=A
@CALL
0;JMP
(return17)
@1
D=A
@R14
M=D
@UART.printString
D=A
@R13
M=D
@return18
D=A
@CALL
0;JMP
(return18)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.printInt
D=A
@R13
M=D
@return19
D=A
@CALL
0;JMP
(return19)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@Sys.halt
D=A
@R13
M=D
@return20
D=A
@CALL
0;JMP
(return20)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Array.init)
@0
D=A
(Array.init_LOOP)
@Array.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Array.init_LOOP
0;JMP
(Array.init_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Array.new)
@0
D=A
(Array.new_LOOP)
@Array.new_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Array.new_LOOP
0;JMP
(Array.new_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt10
D;JGT
@SP
A=M-1
M=0
(gt10)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Array.new$if1
D;JNE
@Array.new$ifelse1
0;JMP
(Array.new$if1)
@2  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return21
D=A
@CALL
0;JMP
(return21)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(Array.new$ifelse1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Memory.alloc
D=A
@R13
M=D
@return22
D=A
@CALL
0;JMP
(return22)
@RETURN
0;JMP

(Array.dispose)
@0
D=A
(Array.dispose_LOOP)
@Array.dispose_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Array.dispose_LOOP
0;JMP
(Array.dispose_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@R3 //push pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Memory.deAlloc
D=A
@R13
M=D
@return23
D=A
@CALL
0;JMP
(return23)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.init)
@0
D=A
(String.init_LOOP)
@String.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.init_LOOP
0;JMP
(String.init_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.new)
@0
D=A
(String.new_LOOP)
@String.new_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.new_LOOP
0;JMP
(String.new_END)

@3  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Memory.alloc
D=A
@R13
M=D
@return24
D=A
@CALL
0;JMP
(return24)
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt11
D;JLT
@SP
A=M-1
M=0
(lt11)
@SP
AM=M-1
D=M
@String.new$if1
D;JNE
@String.new$ifelse1
0;JMP
(String.new$if1)
@14  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return25
D=A
@CALL
0;JMP
(return25)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.new$ifelse1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt12
D;JGT
@SP
A=M-1
M=0
(gt12)
@SP
AM=M-1
D=M
@String.new$if6
D;JNE
@String.new$ifelse6
0;JMP
(String.new$if6)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.new
D=A
@R13
M=D
@return26
D=A
@CALL
0;JMP
(return26)
@THIS    //pop this
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.new$ifelse6)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //pop this
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@R3 //push pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.dispose)
@0
D=A
(String.dispose_LOOP)
@String.dispose_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.dispose_LOOP
0;JMP
(String.dispose_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt13
D;JGT
@SP
A=M-1
M=0
(gt13)
@SP
AM=M-1
D=M
@String.dispose$if1
D;JNE
@String.dispose$ifelse1
0;JMP
(String.dispose$if1)
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.dispose
D=A
@R13
M=D
@return27
D=A
@CALL
0;JMP
(return27)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.dispose$ifelse1)
@R3 //push pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Memory.deAlloc
D=A
@R13
M=D
@return28
D=A
@CALL
0;JMP
(return28)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.length)
@0
D=A
(String.length_LOOP)
@String.length_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.length_LOOP
0;JMP
(String.length_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.charAt)
@0
D=A
(String.charAt_LOOP)
@String.charAt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.charAt_LOOP
0;JMP
(String.charAt_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt14
D;JLT
@SP
A=M-1
M=0
(lt14)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt15
D;JGT
@SP
A=M-1
M=0
(gt15)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq16
D;JEQ
@SP
A=M-1
M=0
(eq16)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@SP
AM=M-1
D=M
@String.charAt$if1
D;JNE
@String.charAt$ifelse1
0;JMP
(String.charAt$if1)
@15  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return29
D=A
@CALL
0;JMP
(return29)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.charAt$ifelse1)
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.setCharAt)
@0
D=A
(String.setCharAt_LOOP)
@String.setCharAt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.setCharAt_LOOP
0;JMP
(String.setCharAt_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt17
D;JLT
@SP
A=M-1
M=0
(lt17)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt18
D;JGT
@SP
A=M-1
M=0
(gt18)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq19
D;JEQ
@SP
A=M-1
M=0
(eq19)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@SP
AM=M-1
D=M
@String.setCharAt$if1
D;JNE
@String.setCharAt$ifelse1
0;JMP
(String.setCharAt$if1)
@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return30
D=A
@CALL
0;JMP
(return30)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.setCharAt$ifelse1)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.appendChar)
@0
D=A
(String.appendChar_LOOP)
@String.appendChar_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.appendChar_LOOP
0;JMP
(String.appendChar_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq20
D;JEQ
@SP
A=M-1
M=0
(eq20)
@SP
AM=M-1
D=M
@String.appendChar$if1
D;JNE
@String.appendChar$ifelse1
0;JMP
(String.appendChar$if1)
@17  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return31
D=A
@CALL
0;JMP
(return31)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.appendChar$ifelse1)
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@R3 //push pointer
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.eraseLastChar)
@0
D=A
(String.eraseLastChar_LOOP)
@String.eraseLastChar_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.eraseLastChar_LOOP
0;JMP
(String.eraseLastChar_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq21
D;JEQ
@SP
A=M-1
M=0
(eq21)
@SP
AM=M-1
D=M
@String.eraseLastChar$if1
D;JNE
@String.eraseLastChar$ifelse1
0;JMP
(String.eraseLastChar$if1)
@18  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return32
D=A
@CALL
0;JMP
(return32)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.eraseLastChar$ifelse1)
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.intValue)
@5
D=A
(String.intValue_LOOP)
@String.intValue_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.intValue_LOOP
0;JMP
(String.intValue_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq22
D;JEQ
@SP
A=M-1
M=0
(eq22)
@SP
AM=M-1
D=M
@String.intValue$if1
D;JNE
@String.intValue$ifelse1
0;JMP
(String.intValue$if1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.intValue$ifelse1)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@45  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq23
D;JEQ
@SP
A=M-1
M=0
(eq23)
@SP
AM=M-1
D=M
@String.intValue$if4
D;JNE
@String.intValue$ifelse4
0;JMP
(String.intValue$if4)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.intValue$ifelse4)
(String.intValue$while8)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt24
D;JLT
@SP
A=M-1
M=0
(lt24)
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //and
AM=M-1
D=M
A=A-1
M=D&M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@String.intValue$whileend8
D;JNE
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //pop local
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt25
D;JLT
@SP
A=M-1
M=0
(lt25)
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@9  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt26
D;JGT
@SP
A=M-1
M=0
(gt26)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@SP  //not
A=M-1
M=!M
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@String.intValue$if9
D;JNE
@String.intValue$ifelse9
0;JMP
(String.intValue$if9)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return33
D=A
@CALL
0;JMP
(return33)
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.intValue$ifelse9)
@String.intValue$while8
0;JMP
(String.intValue$whileend8)
@LCL //push local
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@String.intValue$if14
D;JNE
@String.intValue$ifelse14
0;JMP
(String.intValue$if14)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.intValue$ifelse14)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.setInt)
@4
D=A
(String.setInt_LOOP)
@String.setInt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.setInt_LOOP
0;JMP
(String.setInt_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop pointer
AM=M-1
D=M
@THIS
M=D
@THIS    //push this
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq27
D;JEQ
@SP
A=M-1
M=0
(eq27)
@SP
AM=M-1
D=M
@String.setInt$if1
D;JNE
@String.setInt$ifelse1
0;JMP
(String.setInt$if1)
@19  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return34
D=A
@CALL
0;JMP
(return34)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.setInt$ifelse1)
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.new
D=A
@R13
M=D
@return35
D=A
@CALL
0;JMP
(return35)
@LCL //pop local
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt28
D;JLT
@SP
A=M-1
M=0
(lt28)
@SP
AM=M-1
D=M
@String.setInt$if6
D;JNE
@String.setInt$ifelse6
0;JMP
(String.setInt$if6)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@ARG //pop argument
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.setInt$ifelse6)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.setInt$while10)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt29
D;JGT
@SP
A=M-1
M=0
(gt29)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@String.setInt$whileend10
D;JNE
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.divide
D=A
@R13
M=D
@return36
D=A
@CALL
0;JMP
(return36)
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return37
D=A
@CALL
0;JMP
(return37)
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //pop argument
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@String.setInt$while10
0;JMP
(String.setInt$whileend10)
@LCL //push local
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@String.setInt$if13
D;JNE
@String.setInt$ifelse13
0;JMP
(String.setInt$if13)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@45  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.setInt$ifelse13)
@THIS    //push this
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt30
D;JLT
@SP
A=M-1
M=0
(lt30)
@SP
AM=M-1
D=M
@String.setInt$if16
D;JNE
@String.setInt$ifelse16
0;JMP
(String.setInt$if16)
@19  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.error
D=A
@R13
M=D
@return38
D=A
@CALL
0;JMP
(return38)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
(String.setInt$ifelse16)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq31
D;JEQ
@SP
A=M-1
M=0
(eq31)
@SP
AM=M-1
D=M
@String.setInt$if21
D;JNE
@String.setInt$ifelse21
0;JMP
(String.setInt$if21)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@48  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@String.setInt$ifend21
0;JMP
(String.setInt$ifelse21)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(String.setInt$while25)
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt32
D;JLT
@SP
A=M-1
M=0
(lt32)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@String.setInt$whileend25
D;JNE
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@THIS    //push this
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@THIS    //pop this
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@String.setInt$while25
0;JMP
(String.setInt$whileend25)
(String.setInt$ifend21)
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.dispose
D=A
@R13
M=D
@return39
D=A
@CALL
0;JMP
(return39)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.newLine)
@0
D=A
(String.newLine_LOOP)
@String.newLine_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.newLine_LOOP
0;JMP
(String.newLine_END)

@128  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.backSpace)
@0
D=A
(String.backSpace_LOOP)
@String.backSpace_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.backSpace_LOOP
0;JMP
(String.backSpace_END)

@129  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(String.doubleQuote)
@0
D=A
(String.doubleQuote_LOOP)
@String.doubleQuote_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@String.doubleQuote_LOOP
0;JMP
(String.doubleQuote_END)

@34  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Main.main)
@0
D=A
(Main.main_LOOP)
@Main.main_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Main.main_LOOP
0;JMP
(Main.main_END)

(Main.main$while2)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Main.main$whileend2
D;JNE
@500  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Sys.wait
D=A
@R13
M=D
@return40
D=A
@CALL
0;JMP
(return40)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@GPIO.getLed
D=A
@R13
M=D
@return41
D=A
@CALL
0;JMP
(return41)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@1
D=A
@R14
M=D
@GPIO.setLed
D=A
@R13
M=D
@return42
D=A
@CALL
0;JMP
(return42)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@Main.main$while2
0;JMP
(Main.main$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.init)
@0
D=A
(UART.init_LOOP)
@UART.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.init_LOOP
0;JMP
(UART.init_END)

@8194  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@UART.0
M=D
@6  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return43
D=A
@CALL
0;JMP
(return43)
@SP  //pop static
AM=M-1
D=M
@UART.1
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.readChar)
@1
D=A
(UART.readChar_LOOP)
@UART.readChar_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.readChar_LOOP
0;JMP
(UART.readChar_END)

@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(UART.readChar$while2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq33
D;JEQ
@SP
A=M-1
M=0
(eq33)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@UART.readChar$whileend2
D;JNE
@UART.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@UART.readChar$while2
0;JMP
(UART.readChar$whileend2)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@UART.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.writeChar)
@1
D=A
(UART.writeChar_LOOP)
@UART.writeChar_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.writeChar_LOOP
0;JMP
(UART.writeChar_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(UART.writeChar$while2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //not
A=M-1
M=!M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@UART.writeChar$whileend2
D;JNE
@UART.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@UART.writeChar$while2
0;JMP
(UART.writeChar$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@UART.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.printString)
@1
D=A
(UART.printString_LOOP)
@UART.printString_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.printString_LOOP
0;JMP
(UART.printString_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(UART.printString$while2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.length
D=A
@R13
M=D
@return44
D=A
@CALL
0;JMP
(return44)
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt34
D;JLT
@SP
A=M-1
M=0
(lt34)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@UART.printString$whileend2
D;JNE
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.charAt
D=A
@R13
M=D
@return45
D=A
@CALL
0;JMP
(return45)
@1
D=A
@R14
M=D
@UART.writeChar
D=A
@R13
M=D
@return46
D=A
@CALL
0;JMP
(return46)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@UART.printString$while2
0;JMP
(UART.printString$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.printInt)
@0
D=A
(UART.printInt_LOOP)
@UART.printInt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.printInt_LOOP
0;JMP
(UART.printInt_END)

@UART.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.setInt
D=A
@R13
M=D
@return47
D=A
@CALL
0;JMP
(return47)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@UART.1   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.printString
D=A
@R13
M=D
@return48
D=A
@CALL
0;JMP
(return48)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.println)
@0
D=A
(UART.println_LOOP)
@UART.println_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.println_LOOP
0;JMP
(UART.println_END)

@13  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.writeChar
D=A
@R13
M=D
@return49
D=A
@CALL
0;JMP
(return49)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@10  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.writeChar
D=A
@R13
M=D
@return50
D=A
@CALL
0;JMP
(return50)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(UART.input)
@2
D=A
(UART.input_LOOP)
@UART.input_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@UART.input_LOOP
0;JMP
(UART.input_END)

@80  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@String.new
D=A
@R13
M=D
@return51
D=A
@CALL
0;JMP
(return51)
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0
D=A
@R14
M=D
@UART.readChar
D=A
@R13
M=D
@return52
D=A
@CALL
0;JMP
(return52)
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(UART.input$while2)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@13  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq35
D;JEQ
@SP
A=M-1
M=0
(eq35)
@SP  //not
A=M-1
M=!M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@UART.input$whileend2
D;JNE
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@String.appendChar
D=A
@R13
M=D
@return53
D=A
@CALL
0;JMP
(return53)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@UART.writeChar
D=A
@R13
M=D
@return54
D=A
@CALL
0;JMP
(return54)
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@0
D=A
@R14
M=D
@UART.readChar
D=A
@R13
M=D
@return55
D=A
@CALL
0;JMP
(return55)
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@UART.input$while2
0;JMP
(UART.input$whileend2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(GPIO.init)
@0
D=A
(GPIO.init_LOOP)
@GPIO.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@GPIO.init_LOOP
0;JMP
(GPIO.init_END)

@8192  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop static
AM=M-1
D=M
@GPIO.0
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(GPIO.getBut)
@0
D=A
(GPIO.getBut_LOOP)
@GPIO.getBut_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@GPIO.getBut_LOOP
0;JMP
(GPIO.getBut_END)

@GPIO.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(GPIO.getLed)
@0
D=A
(GPIO.getLed_LOOP)
@GPIO.getLed_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@GPIO.getLed_LOOP
0;JMP
(GPIO.getLed_END)

@GPIO.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(GPIO.setLed)
@0
D=A
(GPIO.setLed_LOOP)
@GPIO.setLed_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@GPIO.setLed_LOOP
0;JMP
(GPIO.setLed_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@GPIO.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.init)
@2
D=A
(Math.init_LOOP)
@Math.init_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.init_LOOP
0;JMP
(Math.init_END)

@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Array.new
D=A
@R13
M=D
@return56
D=A
@CALL
0;JMP
(return56)
@SP  //pop static
AM=M-1
D=M
@Math.0
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.init$while2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt36
D;JLT
@SP
A=M-1
M=0
(lt36)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Math.init$whileend2
D;JNE
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //pop temp
AM=M-1
D=M
@R5
M=D
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@R5 //push temp
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT    //pop that
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Math.init$while2
0;JMP
(Math.init$whileend2)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.abs)
@0
D=A
(Math.abs_LOOP)
@Math.abs_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.abs_LOOP
0;JMP
(Math.abs_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt37
D;JLT
@SP
A=M-1
M=0
(lt37)
@SP
AM=M-1
D=M
@Math.abs$if1
D;JNE
@Math.abs$ifelse1
0;JMP
(Math.abs$if1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Math.abs$ifelse1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.multiply)
@2
D=A
(Math.multiply_LOOP)
@Math.multiply_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.multiply_LOOP
0;JMP
(Math.multiply_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.multiply$while2)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@16  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt38
D;JLT
@SP
A=M-1
M=0
(lt38)
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Math.multiply$whileend2
D;JNE
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //and
AM=M-1
D=M
A=A-1
M=D&M
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=D-M
M=-1
@eq39
D;JEQ
@SP
A=M-1
M=0
(eq39)
@SP
AM=M-1
D=M
@Math.multiply$if3
D;JNE
@Math.multiply$ifelse3
0;JMP
(Math.multiply$if3)
@Math.multiply$ifend3
0;JMP
(Math.multiply$ifelse3)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.multiply$ifend3)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //pop argument
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Math.multiply$while2
0;JMP
(Math.multiply$whileend2)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.divide)
@2
D=A
(Math.divide_LOOP)
@Math.divide_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.divide_LOOP
0;JMP
(Math.divide_END)

@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt40
D;JLT
@SP
A=M-1
M=0
(lt40)
@SP
AM=M-1
D=M
@Math.divide$if1
D;JNE
@Math.divide$ifelse1
0;JMP
(Math.divide$if1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Math.abs
D=A
@R13
M=D
@return57
D=A
@CALL
0;JMP
(return57)
@ARG //pop argument
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //not
A=M-1
M=!M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.divide$ifelse1)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt41
D;JLT
@SP
A=M-1
M=0
(lt41)
@SP
AM=M-1
D=M
@Math.divide$if4
D;JNE
@Math.divide$ifelse4
0;JMP
(Math.divide$if4)
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@R14
M=D
@Math.abs
D=A
@R13
M=D
@return58
D=A
@CALL
0;JMP
(return58)
@ARG //pop argument
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //not
A=M-1
M=!M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.divide$ifelse4)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt42
D;JLT
@SP
A=M-1
M=0
(lt42)
@SP
AM=M-1
D=M
@Math.divide$if7
D;JNE
@Math.divide$ifelse7
0;JMP
(Math.divide$if7)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.divide$ifelse7)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt43
D;JLT
@SP
A=M-1
M=0
(lt43)
@SP
AM=M-1
D=M
@Math.divide$if10
D;JNE
@Math.divide$ifelse10
0;JMP
(Math.divide$if10)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@Math.divide$if11
D;JNE
@Math.divide$ifelse11
0;JMP
(Math.divide$if11)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Math.divide$ifelse11)
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.divide$ifelse10)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2
D=A
@R14
M=D
@Math.divide
D=A
@R13
M=D
@return59
D=A
@CALL
0;JMP
(return59)
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return60
D=A
@CALL
0;JMP
(return60)
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@ARG //push argument
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@R14
M=D
@Math.divide
D=A
@R13
M=D
@return61
D=A
@CALL
0;JMP
(return61)
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@Math.divide$if16
D;JNE
@Math.divide$ifelse16
0;JMP
(Math.divide$if16)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //neg
A=M-1
M=-M
@RETURN
0;JMP

(Math.divide$ifelse16)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.sqrt)
@3
D=A
(Math.sqrt_LOOP)
@Math.sqrt_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.sqrt_LOOP
0;JMP
(Math.sqrt_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt44
D;JLT
@SP
A=M-1
M=0
(lt44)
@SP
AM=M-1
D=M
@Math.sqrt$if1
D;JNE
@Math.sqrt$ifelse1
0;JMP
(Math.sqrt$if1)
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.sqrt$ifelse1)
@7  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.sqrt$while5)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt45
D;JLT
@SP
A=M-1
M=0
(lt45)
@SP  //not
A=M-1
M=!M
@SP  //not
A=M-1
M=!M
@SP
AM=M-1
D=M
@Math.sqrt$whileend5
D;JNE
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@2
D=A
@R14
M=D
@Math.multiply
D=A
@R13
M=D
@return62
D=A
@CALL
0;JMP
(return62)
@LCL //pop local
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@0  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt46
D;JLT
@SP
A=M-1
M=0
(lt46)
@LCL //push local
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt47
D;JGT
@SP
A=M-1
M=0
(gt47)
@SP  //or
AM=M-1
D=M
A=A-1
M=D|M
@SP
AM=M-1
D=M
@Math.sqrt$if6
D;JNE
@Math.sqrt$ifelse6
0;JMP
(Math.sqrt$if6)
@Math.sqrt$ifend6
0;JMP
(Math.sqrt$ifelse6)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@SP  //pop pointer
AM=M-1
D=M
@THAT
M=D
@THAT    //push that
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  //add
AM=M-1
D=M
A=A-1
M=D+M
@LCL //pop local
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(Math.sqrt$ifend6)
@LCL //push local
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@1  //push constant
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP  //sub
AM=M-1
D=M
A=A-1
M=M-D
@LCL //pop local
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@Math.sqrt$while5
0;JMP
(Math.sqrt$whileend5)
@LCL //push local
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.max)
@0
D=A
(Math.max_LOOP)
@Math.max_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.max_LOOP
0;JMP
(Math.max_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@gt48
D;JGT
@SP
A=M-1
M=0
(gt48)
@SP
AM=M-1
D=M
@Math.max$if1
D;JNE
@Math.max$ifelse1
0;JMP
(Math.max$if1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.max$ifelse1)
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.min)
@0
D=A
(Math.min_LOOP)
@Math.min_END
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
D=D-1
@Math.min_LOOP
0;JMP
(Math.min_END)

@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@lt49
D;JLT
@SP
A=M-1
M=0
(lt49)
@SP
AM=M-1
D=M
@Math.min$if1
D;JNE
@Math.min$ifelse1
0;JMP
(Math.min$if1)
@ARG //push argument
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

(Math.min$ifelse1)
@Math.0   //push static
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN
0;JMP

