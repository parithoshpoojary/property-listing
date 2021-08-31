import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Category } from '../model/category';
import { Property } from '../model/property';
import { CategoryService } from '../services/category.service';
import { DataSharingService } from '../services/data-sharing.service';
import { LocationService } from '../services/location.service';
import { PropertyService } from '../services/property.service';

@Component({
  selector: 'app-listings',
  templateUrl: './listings.component.html',
  styleUrls: ['./listings.component.css']
})
export class ListingsComponent implements OnInit {

  properties: Property[];

  constructor(public locationService: LocationService,
    public categoryService: CategoryService,
    public propService: PropertyService,
    public dataSharing: DataSharingService,
    public route: ActivatedRoute) {
this.properties = [];
}

  ngOnInit(): void {

    this.dataSharing.homeFlag = false;
    this.dataSharing.listingFlag = true;
    this.dataSharing.bookingsFlag = false;
    this.dataSharing.propertyFlag = false;
    this.dataSharing.signinFlag = false;
    this.dataSharing.signupFlag = false;
    this.dataSharing.wishlistFlag = false;

    if (this.route.snapshot.paramMap.get('listFor')) {
      console.log(this.locationService.locations[1]);
      const listFor = String(this.route.snapshot.paramMap.get('listFor'));
      this.propService.getPropertiesByListFor(listFor).subscribe((data: Property[]) => {console.log(data); this.properties = data });
    }

    else if (this.route.snapshot.paramMap.get('locationId')) {
      console.log(this.locationService.locations[1]);
      const locationId = Number(this.route.snapshot.paramMap.get('locationId'));
      this.propService.getPropertiesByLocation(locationId).subscribe((data: Property[]) => {console.log(data); this.properties = data });
    }

    else {
      console.log(this.dataSharing.formData.value);
    }
  }

}
