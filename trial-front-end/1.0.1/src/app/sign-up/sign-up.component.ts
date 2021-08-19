import { Component, OnInit } from '@angular/core';
import { User } from '../model/user';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-sign-up',
  templateUrl: './sign-up.component.html',
  styleUrls: ['./sign-up.component.css'],
})
export class SignUpComponent implements OnInit {
  user: User;
  errorFlag: boolean;
  constructor(public auth: AuthService) {
    this.user = new User();
    this.errorFlag = false;
  }

  ngOnInit(): void {}

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
