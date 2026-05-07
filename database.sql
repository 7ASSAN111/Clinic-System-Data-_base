
create table Room ( 
   Room_num Number primary key ,
   Capacity number ,
   Availabilty_status varchar2(50),
   Floor_num number  
 )





create table Patient (
       P_ID varchar2(50) primary key ,
       Name varchar2(50) ,
       Month NUMBER,
       Day NUMBER,
       Year NUMBER
       

)




create table Doctor (
   Doctor_ID varchar2(50) Primary key ,
   Name varchar2(50),
   Specialization varchar2(50),
   Birthdate Date ,
   Room_num NUMBER,

    CONSTRAINT fk_doc_room
    FOREIGN KEY (Room_num)
    REFERENCES ROOM(Room_num)


       )
   

create table Doctor_phone(
   Doctor_ID varchar2(50),
   phone varchar2(50), 

   constraint doctor_id 
   foreign key(Doctor_ID)
   References Doctor (Doctor_ID) ,


   CONSTRAINT pk_doc_phone
   PRIMARY KEY (Doctor_ID, PHONE)

)  



create table Patient_number(
       phone varchar2(50),
       P_ID VARCHAR2(50),
       constraint Patient_numberfk 
       foreign key(P_ID )  
       references Patient (P_ID ) ,

   CONSTRAINT pk_patient_phone
   PRIMARY KEY (P_ID , PHONE)

       )





CREATE TABLE APPOINTMENT (

    ID Varchar2(50) primary key,


     Month number ,
     day   Number ,
     year  Number ,


    time varchar2(50),
    status Varchar2(50),
  


    Doctor_ID VARCHAR2(50),

    constraint appointmentfk
    foreign key(Doctor_ID )
    references Doctor(Doctor_ID ) ,

    P_ID VARCHAR2(50),

    CONSTRAINT fk_app_patient
    FOREIGN KEY (P_ID)
    REFERENCES PATIENT(P_ID)
)  





CREATE TABLE PAYMENT (

    Payment_ID VARCHAR2(50) PRIMARY KEY,

    Amount NUMBER,

    Day NUMBER,
    Month NUMBER,
    Year NUMBER,

    Method VARCHAR2(50),

    Appointment_ID VARCHAR2(50) UNIQUE,

    P_ID VARCHAR2(50),

    CONSTRAINT fk_payment_app
    FOREIGN KEY (Appointment_ID)
    REFERENCES APPOINTMENT(ID),

    CONSTRAINT fk_payment_patient
    FOREIGN KEY (P_ID )
    REFERENCES PATIENT(P_ID )

)






CREATE TABLE PRESCRIPTION (

    Prescription_ID VARCHAR2(50) PRIMARY KEY,

    Prescription_Date DATE,
    Notes VARCHAR2(50),

    Appointment_ID VARCHAR2(50),

    CONSTRAINT prescriptionfk
    FOREIGN KEY (Appointment_ID)
    REFERENCES APPOINTMENT(ID)

)















