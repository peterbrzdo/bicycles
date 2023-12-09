using kriminalita from '../db/model';

service crime_data {
    entity Statistika as projection on kriminalita.Statistika; 
    entity Tsk as projection on kriminalita.Tsk;
    entity Kraj as projection on kriminalita.Kraj;
}


