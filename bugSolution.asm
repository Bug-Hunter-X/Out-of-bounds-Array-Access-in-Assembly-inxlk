mov ecx, [array_length] ; Get the length of the array
mov eax, [array_index] ; Get the index
cmp eax, ecx ; Compare the index with the length
jge out_of_bounds_handler ; Jump to the error handler if index is out of bounds
mov esi, [array_address] ; Get the array's base address
mov eax, [esi + eax*4] ; Access the array element correctly
jmp continue_execution ; Jump to the continuation point
out_of_bounds_handler:
; Handle the out-of-bounds error appropriately (e.g., display an error message, exit the program)
; ... error handling code ...
continue_execution:
; ... rest of the program ... 