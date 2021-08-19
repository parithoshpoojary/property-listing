import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Location } from '../model/location';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  locations: Location[];

  constructor(public http: HttpClient, public auth: AuthService) { 
    this.locations = [];
  }

  ngOnInit(): void {
    this.http.get<Location[]>("http://localhost:8080/cities").subscribe((data: Location[]) => {this.locations = data});
  }

}
