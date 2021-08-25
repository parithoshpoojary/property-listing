import { Component, OnInit } from '@angular/core';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-wishlist',
  templateUrl: './wishlist.component.html',
  styleUrls: ['./wishlist.component.css']
})
export class WishlistComponent implements OnInit {

  constructor(public auth: AuthService) { }

  ngOnInit(): void {
    if (this.auth.currentUser.userId==0) {
      this.auth.router.navigateByUrl('/signin');
    }
    
  }

  setProperties() {
    
  }

}
