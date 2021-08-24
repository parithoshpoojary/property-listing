import { Component, OnInit} from '@angular/core';
import { Location } from '../model/location';
import { AuthService } from '../services/auth.service';
import { LocationService } from '../services/location.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  constructor(public locationService: LocationService, public auth: AuthService) { 
  }

  ngOnInit(): void {
  }

}
