import { Component } from '@angular/core';
import { CategoryService } from './services/category.service';
import { LocationService } from './services/location.service';
import { UserService } from './services/user.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'property-listing';
  
  constructor(public locationService: LocationService,
    public categoryService: CategoryService,
    public userService: UserService) {

    locationService.setLocations();
    categoryService.setCategories();
    userService.setWebsiteReviews();
  }
}
