import { Component, OnInit } from '@angular/core';
import { AuthService } from '../services/auth.service';
import { DataSharingService } from '../services/data-sharing.service';

@Component({
  selector: 'app-bookings',
  templateUrl: './bookings.component.html',
  styleUrls: ['./bookings.component.css']
})
export class BookingsComponent implements OnInit {

  constructor(public auth: AuthService, public dataSharing: DataSharingService) { }

  ngOnInit(): void {

    this.dataSharing.homeFlag = false;
    this.dataSharing.listingFlag = false;
    this.dataSharing.bookingsFlag = true;
    this.dataSharing.propertyFlag = false;
    this.dataSharing.signinFlag = false;
    this.dataSharing.signupFlag = false;
    this.dataSharing.wishlistFlag = false;

    if (this.auth.currentUser.userId==0) {
      this.auth.router.navigateByUrl('/signin');
    }
  }

}
