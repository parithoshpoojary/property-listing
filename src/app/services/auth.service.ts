import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { environment } from '../../environments/environment';
import { User } from '../model/user';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private apiUrl = environment.apiUrl;

  currentUser: User;
  
  constructor(public http: HttpClient, public router: Router) {
    this.currentUser = new User();
  }

  signUp(user: any) {
    return this.http.post<User>(`${this.apiUrl}/signup`, user);
  }

  signIn(user: any) {
    return this.http.post<User>(`${this.apiUrl}/login`, user);
  }

  signOut() {
    this.currentUser = new User();
  }
  
}