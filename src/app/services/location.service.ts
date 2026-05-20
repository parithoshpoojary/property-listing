import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { Location } from '../model/location';

@Injectable({
  providedIn: 'root'
})
export class LocationService {
  private apiUrl = environment.apiUrl;

  locations: Location[];

  constructor(public http: HttpClient) {
    this.locations = [];
  }

  setLocations() {
    this.http.get<Location[]>(`${this.apiUrl}/cities`).subscribe((data: Location[]) => { this.locations = data });
  }


}
