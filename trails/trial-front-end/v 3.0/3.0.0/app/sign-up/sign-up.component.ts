import { Component, OnInit } from '@angular/core';
import { User } from '../model/user';
import { AuthService } from '../services/auth.service';
import { DataSharingService } from '../services/data-sharing.service';

@Component({
  selector: 'app-sign-up',
  templateUrl: './sign-up.component.html',
  styleUrls: ['./sign-up.component.css'],
})
export class SignUpComponent implements OnInit {
  user: User;
  errorFlag: boolean;
  constructor(public auth: AuthService, public dataSharing: DataSharingService) {
    this.user = new User();
    this.errorFlag = false;
  }

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
    this.errorFlag = false;

    this.auth.signUp(this.user).subscribe(
      (res) => {
        // console.log(res);
        if (res.userId != 0) {
          this.user = new User();
          signUpForm.form.markAsPristine();
          this.auth.currentUser = res;
          this.auth.router.navigateByUrl('');
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
