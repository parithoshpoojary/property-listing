import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { User } from '../model/user';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  currentUser: User;
  constructor(public http: HttpClient) {
    this.currentUser = new User();
  }

  signUp(user: any) {
    return this.http.post<User>('http://localhost:8080/signup', user);
  }

  signIn(user: any) {
    return this.http.post<User>('http://localhost:8080/login', user);
  }
}
