import { Component, OnInit } from '@angular/core';
import { DataSharingService } from '../services/data-sharing.service';

@Component({
  selector: 'app-pagenotfound',
  templateUrl: './pagenotfound.component.html',
  styleUrls: ['./pagenotfound.component.css']
})
export class PagenotfoundComponent implements OnInit {

  constructor(public dataSharing: DataSharingService) { }

  ngOnInit(): void {
    this.dataSharing.homeFlag = false;
    this.dataSharing.listingFlag = false;
    this.dataSharing.bookingsFlag = false;
    this.dataSharing.propertyFlag = false;
    this.dataSharing.signinFlag = false;
    this.dataSharing.signupFlag = false;
    this.dataSharing.wishlistFlag = false;
    this.dataSharing.pagenotfoundFlag = false;
  }

}
