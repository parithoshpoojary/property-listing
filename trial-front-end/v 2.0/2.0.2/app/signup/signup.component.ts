import { Component, OnInit } from '@angular/core';
import { User } from '../model/user';
import { AuthService } from '../services/auth.service';
import { DataSharingService } from '../services/data-sharing.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {
  user: User;
  successFlag: boolean;
  errorFlag: boolean;
  constructor(public auth: AuthService, public dataSharing: DataSharingService) { 
    this.user = new User();
    this.successFlag = false;
    this.errorFlag = false;}

  ngOnInit(): void {
    this.dataSharing.homeFlag = false;
    this.dataSharing.listingFlag = false;
    this.dataSharing.bookingsFlag = false;
    this.dataSharing.propertyFlag = false;
    this.dataSharing.signinFlag = false;
    this.dataSharing.signupFlag = true;
    this.dataSharing.wishlistFlag = false;
  }

  signUpSubmit(signUpForm: any) {
    this.successFlag = false;
    this.errorFlag = false;

    this.auth.signUp(this.user).subscribe(
      (res) => {
        // console.log(res);
        if (res.userId != 0) {
          this.user = new User();
          signUpForm.form.markAsPristine();
          this.auth.currentUser = res;
          this.auth.router.navigateByUrl('');
          this.successFlag = true;
        } else {
          this.errorFlag = true;
          signUpForm.form.markAsPristine();
        }
      },
      (error) => {
        this.errorFlag = true;
        signUpForm.form.markAsPristine();
      }
    );
  }
}
