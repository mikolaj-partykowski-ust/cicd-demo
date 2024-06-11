namespace zoo;
using { managed } from '@sap/cds/common';

entity Animal : managed {
  name : String(100);
  birthDate : Date;
  gender : String(10);
  speciesID : Association to Species;
  enclosureID : Association to Enclosure;
  feedingSchedules : Composition of many FeedingSchedule on feedingSchedules.animal = $self;
  medicalRecords : Composition of many MedicalRecord on medicalRecords.animal = $self;
}

entity Species {    
  name : String(100);
  scientificName : String(100);
  conservationStatus : String(100);
}

entity MedicalRecord : managed {
  checkupDate : Date;
  veterinarian : String(100);
  diagnosis : String(200);
  treatment : String(200);
  animal : Association to Animal;
}

entity FeedingSchedule : managed {
  feedingTime : Time;
  food : String(100);
  animal : Association to Animal;
}

entity Enclosure : managed {
  name : String(100);
  environment : String(100);
  location : String(100);
  zookeeper : Association to Zookeeper;
}

entity Zookeeper : managed {
  firstName : String(100);
  lastName : String(100);
  phoneNumber : String(15);
  email : String(100);
  enclosures : Composition of many Enclosure on enclosures.zookeeper = $self;
}