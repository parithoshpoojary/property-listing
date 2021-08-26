import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Property } from '../model/property';
import { CategoryService } from '../services/category.service';
import { DataSharingService } from '../services/data-sharing.service';
import { LocationService } from '../services/location.service';
import { PropertyService } from '../services/property.service';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  
  locationId: number;
  properties: Property[];

  constructor(public locationService: LocationService,
              public categoryService: CategoryService,
              public userService: UserService,
              public propService: PropertyService,
              public dataSharing: DataSharingService,
              public route: ActivatedRoute,
              public router: Router) { 
                this.properties = [];
                this.locationId = 1;
  }

  ngOnInit(): void {
    this.dataSharing.homeFlag = true;
    this.dataSharing.listingFlag = false;
    this.dataSharing.bookingsFlag = false;
    this.dataSharing.propertyFlag = false;
    this.dataSharing.signinFlag = false;
    this.dataSharing.signupFlag = false;
    this.dataSharing.wishlistFlag = false;

    this.makeDashboard();
  }

  makeDashboard() {
    this.locationId = Number(this.route.snapshot.paramMap.get('locationId'));
    this.propService.getPropertiesByLocation(this.locationId).subscribe((data: Property[]) => { this.propService.properties = data });
  }

  sendFormToListings(filterForm: any) {
    this.dataSharing.formData = filterForm.value;
    console.log(this.dataSharing.formData);
    this.router.navigateByUrl('/listings');
  }

}
