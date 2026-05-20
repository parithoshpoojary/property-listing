  showIntroModal = true;
  closeIntroModal() {
    this.showIntroModal = false;
  }
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

  heroStats = [
    { value: '1,455', label: 'Active Listings' },
    { value: '25+', label: 'Years Experience' },
    { value: '2,844', label: 'Properties Sold' }
  ];

  featuredNeighborhoods = [
    { title: 'Flushing', subtitle: 'New York', buttonText: 'Explore' },
    { title: 'Bayside', subtitle: 'New York', buttonText: 'Explore' },
    { title: 'Woodside', subtitle: 'New York', buttonText: 'Explore' },
    { title: 'Bellerose', subtitle: 'New York', buttonText: 'Explore' },
    { title: 'Jackson Heights', subtitle: 'New York', buttonText: 'Explore' },
    { title: 'Long Island', subtitle: 'New York', buttonText: 'Explore' }
  ];

  trustHighlights = [
    { title: 'Verified NYC Listings', description: 'Explore trusted properties across Queens and all five boroughs.' },
    { title: 'Proven Market Reputation', description: 'Licensed broker leadership with strong NYC experience.' },
    { title: 'Strategic Real Estate Approach', description: 'Data-driven pricing, negotiation, and marketing built for results.' },
    { title: 'Client Concierge Support', description: 'Dedicated support from consultation to closing.' }
  ];

  teamMembers = [
    { name: 'Julian Armas', role: 'Licensed Real Estate Broker' },
    { name: 'Ysrael Capriles', role: 'Realtor ®️ | Marketing Manager' },
    { name: 'Daiwantie Seajatan', role: 'Realtor ®️ | Licensed Salesperson' }
  ];

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
