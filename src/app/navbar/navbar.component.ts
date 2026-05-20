import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../services/auth.service';
import { DataSharingService } from '../services/data-sharing.service';
import { LocationService } from '../services/location.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {
  
  locations: any[];
  
  constructor(
    public locationService: LocationService,
    public dataSharingService: DataSharingService,
    public auth: AuthService,
    private router: Router
  ) { 
    this.locations = [];
  }

  ngOnInit(): void {
    this.locations = this.locationService.locations || [];
  }

  signOut(): void {
    this.auth.signOut();
    this.router.navigate(['/home', 1]);
  }

}
