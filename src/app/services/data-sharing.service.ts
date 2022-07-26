import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class DataSharingService {

  public formData: any;
  
  homeFlag: boolean = false;
  listingFlag: boolean = false;
  propertyFlag: boolean = false;
  signinFlag: boolean = false;
  signupFlag: boolean = false;
  wishlistFlag: boolean = false;
  bookingsFlag: boolean = false;
  pagenotfoundFlag: boolean = false;

  constructor() {
    this.formData = {};
  }
  
}
