import { Address } from "./address";
import { Category } from "./category";
import { Image } from "./image";

export class Property {
    id: number;
    name: string;
    price: number;
    pDen: string;
    description: string;
    avgRating: number;
    address: Address;
    category: Category;
    locationId: number;
    listFor: string;
    images: Image[];

    constructor() {
        this.id = 0;
        this.name = '';
        this.price = 0;
        this.pDen = '';
        this.description = '';
        this.avgRating = 0;
        this.address = {id:0, line1:'', line2: '', landmark:'', pincode:0};
        this.locationId = 0;
        this.category = {id:0, name:''};
        this.listFor = '';
        this.images = [];
    }
}