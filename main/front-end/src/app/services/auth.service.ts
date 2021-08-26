import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { User } from '../model/user';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  currentUser: User;
  
  constructor(public http: HttpClient, public router: Router) {
    this.currentUser = new User();
  }

  signUp(user: any) {
    return this.http.post<User>('http://localhost:8080/signup', user);
  }

  signIn(user: any) {
    return this.http.post<User>('http://localhost:8080/login', user);
  }

  signOut() {
    this.currentUser = new User();
  }
  
}