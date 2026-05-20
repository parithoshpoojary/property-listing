import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { Category } from '../model/category';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {
  private apiUrl = environment.apiUrl;

  categories: Category[];

  constructor(private http: HttpClient) {
    this.categories = [];
  }

  setCategories() {
    this.http.get<Category[]>(`${this.apiUrl}/categories`).subscribe((data: Category[]) => {this.categories = data});
  }

}
