import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Category } from '../model/category';
import { Location } from '../model/location';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  locations: Location[];
  categories: Category[];

  constructor(public http: HttpClient) { 
    this.locations = [];
    this.categories = []
  }

  ngOnInit(): void {
    this.http.get<Location[]>("http://localhost:8080/cities").subscribe((data: Location[]) => {this.locations = data});
    this.http.get<Category[]>("http://localhost:8080/categories").subscribe((data: Category[]) => {this.categories = data});
  }

}
