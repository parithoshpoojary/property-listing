import { Component, OnInit } from '@angular/core';
import { HomeComponent } from '../home/home.component';
import { AuthService } from '../services/auth.service';
import { DataSharingService } from '../services/data-sharing.service';
import { LocationService } from '../services/location.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {
  
  locations: Location[];
  
  constructor(public locationService: LocationService, public dataSharingService: DataSharingService, public auth: AuthService) { 
    this.locations = [];
  }

  ngOnInit(): void {
   
  }

}
