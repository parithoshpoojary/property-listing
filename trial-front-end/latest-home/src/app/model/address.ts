export class Address {
    id: number;
    line1: string;
    line2: string;
    landmark: string;
    pincode: number;

    constructor() {
        this.id = 0;
        this.line1 = '';
        this.line2 = '';
        this.landmark = '';
        this.pincode = 0;
    }
}