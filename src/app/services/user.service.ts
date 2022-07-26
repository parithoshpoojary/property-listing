import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  reviews: string[][];

  constructor(private http: HttpClient) { 
    this.reviews = [];
  }

  setWebsiteReviews() {
    this.http.get<string[][]>("http://localhost:8080/websitereviews").subscribe((data: string[][]) => {this.reviews = data});
  }
  
}
