import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Category } from '../model/category';
import { Property } from '../model/property';

@Component({
  selector: 'app-listings',
  templateUrl: './listings.component.html',
  styleUrls: ['./listings.component.css']
})
export class ListingsComponent implements OnInit {

  locations: Location[];
  categories: Category[];
  properties: Property[];
  reviews: string[][];

  constructor(public http: HttpClient) { 
    this.locations = [];
    this.categories = [];
    this.properties = [];
    this.reviews = [];
  }

  ngOnInit(): void {
    this.http.get<Location[]>("http://localhost:8080/cities").subscribe((data: Location[]) => {this.locations = data});
    this.http.get<Category[]>("http://localhost:8080/categories").subscribe((data: Category[]) => {this.categories = data});
    this.http.get<Property[]>("http://localhost:8080/propertybylocation/1").subscribe((data: any[]) => {this.properties = data});
    this.http.get<string[][]>("http://localhost:8080/websitereviews").subscribe((data: string[][]) => {this.reviews = data});
  }

}
