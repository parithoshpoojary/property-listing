import { Component, OnInit } from '@angular/core';
import { User } from '../model/user';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-sign-in',
  templateUrl: './sign-in.component.html',
  styleUrls: ['./sign-in.component.css'],
})
export class SignInComponent implements OnInit {
  user: User;
  errorFlag1: boolean;
  errorFlag2: boolean;

  constructor(public auth: AuthService) {
    this.user = new User();
    this.errorFlag1 = false;
    this.errorFlag2 = false;
  }
  ngOnInit(): void {}

  signInSubmit(signInForm: any) {

    this.auth.signIn(this.user).subscribe(
      (res) => {
        if (res) {
          this.user = new User();
          signInForm.form.markAsPristine();
          this.auth.currentUser = res;
          this.auth.router.navigateByUrl(''); //For now lets redirect logged in user to home page
        } else {
          this.errorFlag1 = true;
          signInForm.form.markAsPristine();
        }
      },
      (error) => {
        this.errorFlag2 = true;
      }
    );
  }
}
