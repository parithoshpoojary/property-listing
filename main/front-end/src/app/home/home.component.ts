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

  properties: Property[];

  constructor(public locationService: LocationService,
              public categoryService: CategoryService,
              public userService: UserService,
              public propService: PropertyService,
              public dataSharing: DataSharingService,
              public route: ActivatedRoute,
              public router: Router) {
    this.properties = [];
  }

  ngOnInit(): void {
    this.makeDashboard();
  }

  makeDashboard() {
    const locationId = Number(this.route.snapshot.paramMap.get('locationId'));
    this.propService.getPropertiesByLocation(locationId).subscribe((data: Property[]) => { this.properties = data });
  }

  sendForm(filterForm: any) {
    console.log(filterForm.value);
    this.dataSharing.formData = filterForm;
    this.router.navigateByUrl('/listings');
  }

}
