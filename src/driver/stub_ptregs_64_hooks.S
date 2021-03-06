/*
 *   Martin Balao (martin.uy) - © Copyright 2017
 *
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

    .text
    .align 8
    .globl sys_execve_stub_ptregs_64_hook
    .type sys_execve_stub_ptregs_64_hook, @function
sys_execve_stub_ptregs_64_hook:
    movq    sys_execve_hook_ptr, %rax
    jmp     *stub_ptregs_64_ptr

    .size sys_execve_stub_ptregs_64_hook,.-sys_execve_stub_ptregs_64_hook
