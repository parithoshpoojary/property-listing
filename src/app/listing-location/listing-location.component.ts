import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Property } from '../model/property';
import { AuthService } from '../services/auth.service';
import { CategoryService } from '../services/category.service';
import { DataSharingService } from '../services/data-sharing.service';
import { LocationService } from '../services/location.service';
import { PropertyService } from '../services/property.service';

@Component({
  selector: 'app-listing-location',
  templateUrl: './listing-location.component.html',
  styleUrls: ['./listing-location.component.css']
})
export class ListingLocationComponent implements OnInit {
  
  propName: string = '';
  stars: string[]=[];

  constructor(public locationService: LocationService,
    public categoryService: CategoryService,
    public propService: PropertyService,
    public dataSharing: DataSharingService,
    public route: ActivatedRoute,
    public auth: AuthService,
    public router: Router) {
  }
  
  ngOnInit(): void {

    this.dataSharing.homeFlag = false;
    this.dataSharing.listingFlag = true;
    this.dataSharing.bookingsFlag = false;
    this.dataSharing.propertyFlag = false;
    this.dataSharing.signinFlag = false;
    this.dataSharing.signupFlag = false;
    this.dataSharing.wishlistFlag = false;

    this.propService.properties = [];
    this.setProperties();

    for(let i=0; i<5;i++)
      {this.stars[i]="fa fa-star checked";}

  }

  searchByName(searchForm: any) {
    let name = searchForm.value.propName;
    this.router.navigateByUrl("/listingsbyname/" + name);
  }

  setProperties() {
    const locationId = Number(this.route.snapshot.paramMap.get('locationId'));
    // console.log(name);
    this.propService.getPropertiesByLocation(locationId).subscribe((data: Property[]) => { this.propService.properties = data });
  }

}
