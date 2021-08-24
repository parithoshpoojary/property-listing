import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { Location } from '../model/location';
import { Category } from '../model/category';
import { Property } from '../model/property';
import { PropertyService } from '../services/property.service';
import { LocationService } from '../services/location.service';
import { CategoryService } from '../services/category.service';
import { DataSharingService } from '../services/data-sharing.service';

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

    if (this.route.snapshot.paramMap.get('listFor')) {
      console.log(this.locationService.locations[1]);
      const listFor = String(this.route.snapshot.paramMap.get('listFor'));
      this.propService.getPropertiesByListFor(listFor).subscribe((data: Property[]) => {console.log(data); this.properties = data });
    }

    else {
      console.log(this.dataSharing.formData.value);
    }
  }

}
