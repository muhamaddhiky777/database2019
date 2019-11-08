SELECT * FROM T_MAHASISWA

SELECT * FROM T_WALI

select * from t_pengapu

INSERT INTO T_PENGAPU VALUES ('1001','CR104')

1.
select distinct a.nim, b.nama, a.kd_mkuliah, c.nama_mkuliah, c.jml_sks
from t_krs a, t_mahasiswa b, t_mkuliah c
where (b.nim = a.nim and c.kd_mkuliah = a.kd_mkuliah) and b.nama = 'Cucu Suhendara'


2.
select distinct a.nids, b.nama_dosen, a.kd_mkuliah, c.nama_mkuliah
from t_pengapu a, t_dosen b, t_mkuliah c
where (b.nids = a.nids and c.kd_mkuliah = a.kd_mkuliah) AND b.nids='1001'

3.
select distinct a.nim, c.nama, a.nids, b.nama_dosen
from t_wali a, t_dosen b, t_mahasiswa c
where (c.nim = a.nim and b.nids = a.nids) and b.nids = '1001'

4.
select distinct a.nids, b.nama_dosen, a.kd_mkuliah, c.nama_mkuliah, c.jml_sks
from t_pengapu a, t_dosen b, t_mkuliah c
where b.nids = a.nids and c.kd_mkuliah = a.kd_mkuliah
) and b.nim = '20160801256'

SELECT nids, count(nids) as total FROM
FROM t_pengapu
GROUP BY nids
ORDER BY total DESC) AS A;

select distinct a.nim, b.nama, a.kd_mkuliah, c.nama_mkuliah, c.jml_sks
from t_krs a, t_mahasiswa b, t_mkuliah c
where b.nim = a.nim and c.kd_mkuliah = a.kd_mkuliah

