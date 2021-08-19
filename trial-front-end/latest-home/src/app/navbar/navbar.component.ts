import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Location } from '../model/location';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  locations: Location[];

  constructor(public http: HttpClient) { 
    this.locations = [];
  }

  ngOnInit(): void {
    this.http.get<Location[]>("http://localhost:8080/cities").subscribe((data: Location[]) => {this.locations = data});
  }

}
