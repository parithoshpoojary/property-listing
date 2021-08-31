import { Component, OnInit } from '@angular/core';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-bookings',
  templateUrl: './bookings.component.html',
  styleUrls: ['./bookings.component.css']
})
export class BookingsComponent implements OnInit {

  constructor(public auth: AuthService) { }

  ngOnInit(): void {
    if (this.auth.currentUser.userId==0) {
      this.auth.router.navigateByUrl('/signin');
    }
  }

}
