# Dot-Product
###  Michael Robert G. Geronimo - S11
## Specification
![image](https://github.com/mayksel/Dot-Product/assets/115066447/ac71dff3-0030-45ab-9ed7-fefc1315399c)

## Analysis

### Comparative data of execution time of array size 1^20
![image](https://github.com/mayksel/Dot-Product/assets/115066447/7a97c2ff-dfdc-4a8e-954b-e67fa808bb5f)

### Comparative data of execution time of array size 1^24
![image](https://github.com/mayksel/asmproject_DOTproduct/assets/115066447/151f86e5-b1e4-4d08-8132-88fbf2f0fd20)

### Comparative data of execution time of array size 1^28
![image](https://github.com/mayksel/asmproject_DOTproduct/assets/115066447/8e2952d5-c508-47be-8bfb-4225671c4403)




As seen in the comparative results, As the number of vector arrays has increased, the runtime for asm and simd is also increasing. The ASM is 54 times slower than the C function while the simd is significantly slower than both the asm and the c function. It is noticeable that all the functions produced the correct output.  Lastly, despite theoretically having a faster execution time, the simd had the slowest execution time. A potential reason for a slower execution time is the add instructions in the simd function. It is also noted that the code doesnt work in release and only in debug. 
