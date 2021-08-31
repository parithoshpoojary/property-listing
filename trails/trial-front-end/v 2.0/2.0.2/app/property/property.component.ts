import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Category } from '../model/category';
import { Property } from '../model/property';
import { DataSharingService } from '../services/data-sharing.service';

@Component({
  selector: 'app-property',
  templateUrl: './property.component.html',
  styleUrls: ['./property.component.css']
})
export class PropertyComponent implements OnInit {

  locations: Location[];
  categories: Category[];
  properties: Property[];
  reviews: string[][];
  
  constructor(public http: HttpClient, public dataSharing: DataSharingService) { 
    this.locations = [];
    this.categories = [];
    this.properties = [];
    this.reviews = [];
  }

  ngOnInit(): void {

    this.dataSharing.homeFlag = false;
    this.dataSharing.listingFlag = false;
    this.dataSharing.bookingsFlag = false;
    this.dataSharing.propertyFlag = true;
    this.dataSharing.signinFlag = false;
    this.dataSharing.signupFlag = false;
    this.dataSharing.wishlistFlag = false;
    
    this.http.get<Location[]>("http://localhost:8080/cities").subscribe((data: Location[]) => {this.locations = data});
    this.http.get<Category[]>("http://localhost:8080/categories").subscribe((data: Category[]) => {this.categories = data});
    this.http.get<Property[]>("http://localhost:8080/propertybylocation/1").subscribe((data: any[]) => {this.properties = data});
    this.http.get<string[][]>("http://localhost:8080/websitereviews").subscribe((data: string[][]) => {this.reviews = data});
  }
  
}
