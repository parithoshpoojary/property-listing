import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Category } from '../model/category';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  categories: Category[];

  constructor(private http: HttpClient) {
    this.categories = [];
  }

  setCategories() {
    this.http.get<Category[]>("http://localhost:8080/categories").subscribe((data: Category[]) => {this.categories = data});
  }

}
