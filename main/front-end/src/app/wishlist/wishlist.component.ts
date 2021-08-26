import { Component, OnInit } from '@angular/core';
import { AuthService } from '../services/auth.service';
import { DataSharingService } from '../services/data-sharing.service';

@Component({
  selector: 'app-wishlist',
  templateUrl: './wishlist.component.html',
  styleUrls: ['./wishlist.component.css']
})
export class WishlistComponent implements OnInit {

  constructor(public dataSharing: DataSharingService, public auth: AuthService) { }

  ngOnInit(): void {
    this.dataSharing.homeFlag = false;
    this.dataSharing.listingFlag = false;
    this.dataSharing.bookingsFlag = false;
    this.dataSharing.propertyFlag = false;
    this.dataSharing.signinFlag = false;
    this.dataSharing.signupFlag = false;
    this.dataSharing.wishlistFlag = true;

    if (this.auth.currentUser.userId==0) {
      this.auth.router.navigateByUrl('/signin');
    }
  }

}
