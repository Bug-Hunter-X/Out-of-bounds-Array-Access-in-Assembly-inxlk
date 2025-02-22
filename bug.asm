mov eax, [ebx + ecx*4 + 0x10] ; This line attempts to access memory outside the allocated bounds of the array
mov [edi+0x10], eax ; This line might overwrite unrelated memory areas.