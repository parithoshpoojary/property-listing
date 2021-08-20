import { Component, OnInit } from '@angular/core';
import { User } from '../model/user';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-signin',
  templateUrl: './signin.component.html',
  styleUrls: ['./signin.component.css']
})
export class SigninComponent implements OnInit {
  user: User;
  successFlag: boolean;
  errorFlag: boolean;
  constructor(public auth: AuthService) { 
    this.user = new User();
    this.successFlag = false;
    this.errorFlag = false;
  }

  ngOnInit(): void {
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
          this.auth.router.navigateByUrl(''); //For now lets redirect logged in user to home page
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
