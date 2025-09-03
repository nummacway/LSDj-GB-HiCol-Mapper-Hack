push af
ld a, c
call $3FE5
pop af
ret

push af
sub a
call $3FE5
pop af
ret

push af
ld a, 1
call $3FE5
pop af
ret

push af
ld a, 2
call $3FE5
pop af
ret

push af
ld a, 3
call $3FE5
pop af
ret

push af
ld a, 4
call $3FE5
pop af
ret

ld hl, $4000 ; I believe hl is never used again after the write we're replacing

push af
swap a
and 192
ld [$7000], a
pop af
ld [$4000], a
ret

di ; first thing the original code does
push af
ld a, 192
ld [$7001], a
pop af
jp $150 ; original initial jump
