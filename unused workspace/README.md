# Panduan Penggunaan Unused Workspace

Masing-masing developer memiliki 2 versi ekstensi workspace yang digunakan sebagai lembar kerja mereka. 2 versi ekstensi workspace ini memiliki perbedaan dari jenis code editor yang digunakan.

Jenis code editor yang digunakan beserta ekstensi workspacenya

1. Visual Studio : .code-workspace
2. Sublime Text : .sublime-workspace

Ketika developer hanya menggunakan satu jenis code editor, maka workspace yang tidak digunakan akan ditempatkan di folder unused workspace.

Ketika sebuah workspace diletakkan di folder ini, maka secara otomatis workspace tersebut tidak boleh dibuka dan digunakan terlebih dahulu karena berpotensi untuk merusak data yang ada di dalam file workspace tersebut. Karena itulah file tersebut dibuat menjadi hidden.

Supaya bisa menggunakan workspace yang berada di folder unused workspace, developer wajib memindahkan workspace tersebut di luar folder unused workspace.

Perlu diingat bahwa developer wajib mengetahui perbedaan kedua workspace tersebut karena file tersebut memiliki nama yang sama dengan ekstensi berbeda sehingga developer yang ingin memindahkan workspace ke luar folder unused workspace wajib mempertimbangkan untuk mengetahui perbedaan tersebut.

Dokumentasi oleh : Khenjy Johnelson
Tanggal : 12/03/2021
