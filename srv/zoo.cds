using { zoo } from '../db/schema';


service ZooService {
    entity Animal as projection on zoo.Animal;
    entity Enclosure as projection on zoo.Enclosure;
}