//#1. TAMPILKAN KRS MAHASISWA REGINA
//
select a.nim,b.nama,a.kdmk,c.nama
from regina_krs a, regina_mahasiswa b, regina_matkul c
where b.nim = a.nim and c.kodematkul = a.kdmk
and b.nama = 'REGINA'
//
//#2. TAMPILKAN DOSEN PENGAMPU MATA KULIAH AGAMA
//
select a.NIDN,b.NAMA,a.KDMK,c.NAMA
from regina_pengampu a, regina_dosen b, regina_matkul c
where b.nidn = a.nidn and c.kodematkul = a.kdmk
and c.nama = 'AGAMA'
//
//#3. TAMPILKAN MAHASISWA YANG DOSEN WALINYA TATA
//
select a.NIDN,b.nama,a.NIM,c.nama
from regina_wali a, regina_dosen b, regina_mahasiswa c
where b.nidn = a.nidn and c.nim = a.nim
and b.nama = 'TATA'
//
//#4. TAMPILKAN DOSEN YANG MEMILIKI MAHASISWA TERBANYAK DI KELAS
//
select a.NIDN,b.nama,a.NIM,c.nama
from regina_wali a, regina_dosen b, regina_mahasiswa c
where b.nidn = a.nidn and c.nim = a.nim
and b.nama =
(
select b.nama from
(select top 1 count(b.nama), b.nama
from regina_wali a, regina_dosen b, regina_mahasiswa c, regina_pengampu d,
regina_matkul e
where b.nidn = a.nidn and c.nim = a.nim and d.nidn = a.nidn
and e.kodematkul = d.kdmk
group by b.nama
order by nama_dosen desc)
as x
)
//
//#5. TAMPILKAN MATA KULIAH FAVORIT
//
select a.kodematkul, b.nama, a.nim
from regina_krs a, regina_matkul b, regina_mahasiswa c
where b.kodematkul = a.kdmk and c.nim = a.nim
and b.nama =
(
select b.nama from
(select top 1 count(b.nama),b.nama
from regina_krs a, regina_matkul b, regina_mahasiswa c
where b.kodematkul = a.kdmk and c.nim = a.nim
group by b.nama
order by nama_matkul desc) as x
)