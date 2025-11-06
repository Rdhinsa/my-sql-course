SELECT 
    ps.PatientId
    ,ps.Hospital
    ,ps.Ward
    ,ps.AdmittedDate 
    ,DischargeDate
        ,DATEADD (WEEK, -2,ps.AdmittedDate) AS reminderdate
        ,datediff (day, ps.AdmittedDate, ps.dischargedate) +1 as DaysInHospital

FROM PatientStay ps
WHERE ps.Hospital IN ('kingston', 'pruh')
order by 
    ps.PatientId DESC
--  admitteddate desc
 --   , DischargeDate DESC
--and ward in ('day surgery, 'general surgery')
--and ward like '%surgery'
--and AdmittedDate BETWEEN '2024-02-27' and '2024-03-01'

--select DATEADD(month, -3, '2025-11-06')

--select datediff(day, '2025-01-14', '2025-07-22')

select * from PatientStay
select * from DimHospitalBad

select 
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.dischargedate
    ,h.HospitalType
    ,ps.Hospital
    ,h.Hospital
    from PatientStay ps right JOIN DimHospitalBad h ON ps.Hospital = h.Hospital
   




