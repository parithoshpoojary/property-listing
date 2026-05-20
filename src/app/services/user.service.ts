import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class UserService {
  private apiUrl = environment.apiUrl;

  reviews: string[][];

  constructor(private http: HttpClient) { 
    this.reviews = [];
  }

  setWebsiteReviews() {
    this.http.get<string[][]>(`${this.apiUrl}/websitereviews`).subscribe((data: string[][]) => {this.reviews = data});
  }
  
}
