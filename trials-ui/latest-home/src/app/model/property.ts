import { Address } from "./address";
import { Category } from "./category";

export class Property {
    id: number;
    name: string;
    description: string;
    avgRating: number;
    address: Address;
    category: Category;
    locationId: number;
    listFor: string;

    constructor() {
        this.id = 0;
        this.name = '';
        this.description = '';
        this.avgRating = 0;
        this.address = {id:0, line1:'', line2: '', landmark:'', pincode:0};
        this.locationId = 0;
        this.category = {id:0, name:''};
        this.listFor = '';
    }
}