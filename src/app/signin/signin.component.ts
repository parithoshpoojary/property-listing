import { Component, OnInit } from '@angular/core';
import { User } from '../model/user';
import { AuthService } from '../services/auth.service';
import { DataSharingService } from '../services/data-sharing.service';

@Component({
  selector: 'app-signin',
  templateUrl: './signin.component.html',
  styleUrls: ['./signin.component.css']
})
export class SigninComponent implements OnInit {
  user: User;
  successFlag: boolean;
  errorFlag: boolean;
  constructor(public auth: AuthService, public dataSharing: DataSharingService) { 
    this.user = new User();
    this.successFlag = false;
    this.errorFlag = false;
  }

  ngOnInit(): void {

    this.dataSharing.homeFlag = false;
    this.dataSharing.listingFlag = false;
    this.dataSharing.bookingsFlag = false;
    this.dataSharing.propertyFlag = false;
    this.dataSharing.signinFlag = true;
    this.dataSharing.signupFlag = false;
    this.dataSharing.wishlistFlag = false;
  }

  signInSubmit(signInForm: any) {
    this.successFlag = false;
    this.errorFlag = false;

    this.auth.signIn(this.user).subscribe(
      (res) => {
        // console.log(res);
        if (res) {
          this.user = new User();
          signInForm.form.markAsPristine();
          this.auth.currentUser = res;
          //Redirecting the user to home page, after successful login
          this.auth.router.navigateByUrl('');
          this.successFlag = true;
        } else {
          this.errorFlag = true;
        }
      },
      (error) => {
        this.errorFlag = true;
      }
    );
  }
}
