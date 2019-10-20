select * from t_mahasiswa
select * from t_dosen
select * from t_krs
select * from t_makul
select * from t_pengampu
select * from t_wali

1. Tampilkan krs dari 'Yuli'

select distinct a.nim, b.nama, a.kode, c.nama, c.sks
from t_krs a, t_mahasiswa b, t_makul c
where a.nim=b.nim and a.kode=c.kode and b.nama='Yuli'

2. Tampilkan dosen pengampu dari mata kuliah 'Basis Data'

select distinct a.nidn, b.nama, a.kode, c.nama
from t_pengampu a, t_dosen b, t_makul c
where a.nidn = b.nidn and a.kode = c.kode and c.nama='Basis Data'

3. Tampilkan nama mahasiswa yang dosen walinya 'Nia'

select distinct a.nim, a.nama, b.nidn, c.nama 
from t_mahasiswa a, t_wali b, t_dosen c
where a.nim = b.nim and b.nidn = c.nidn and c.nama = 'Nia'

4. Tampilkan dosen yg memiliki mahasiswa terbanyak

select distinct b.nama, count(a.nidn) as JUMLAH
from t_wali a, t_dosen b
where a.nidn=b.nidn group by a.nidn, b.nama order by JUMLAH desc;

select distinct b.nama, count(a.nidn) as MAX_SUM
from t_wali a, t_dosen b
where a.nidn = b.nidn group by a.nidn, b.nama order by MAX_SUM desc;

5. Tampilkan mata kuliah favorit mahasiswa

select distinct b.nama, count(a.kode) as FAVORITE
from t_krs a, t_makul b
where a.kode = b.kode group by a.kode, b.nama order by FAVORITE desc;
