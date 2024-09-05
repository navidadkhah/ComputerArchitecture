# Adders
In this project, I have implemented Ripple Carry and Carry Look Ahead adders with their test benches.
## Ripple Carry
Due to the image below, when we want to add two bits using Ripple carry, we add the first bit to its corresponding bit, and so on.
adding a carry bit to it and after adding two bits, we use their output carry bit to the next block's input, and so on.
<p align="center">
  <img src="https://github.com/user-attachments/assets/d54451ec-454b-48ec-aad3-e23aa79036aa">
</p>
At the end, we concat each S from each block and find the true output for the operation.

## Carry Look Ahead
In this part, we have improved Ripple Carry. The Ripple Carry problem depends on the previous block and it cannot start adding before the previous block. Carry Look Ahead solves this
problem uses Pi and Gi to do this operation for each block independently.
<p align="center">
  
```
Pi = ai xor bi
gi = ai.bi
------------------
Sum = Pi xor Ci
Carry = gi + Pi.Ci
```
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/d122edb7-36cd-472d-bb68-21b5b4041d00">
</p>

