import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { Property } from '../model/property';
import { catchError, timeout } from 'rxjs/operators';
import { of } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PropertyService {
  private apiUrl = environment.apiUrl;

  properties: Property[];

  property: Property = new Property();

  constructor(public http: HttpClient) {
    this.properties = [];
  }

  getPropertyById(id: number) {
    return this.http.get<any>(`${this.apiUrl}/property/${id}`).pipe(
      timeout(5000),
      catchError((err) => {
        console.error('getPropertyById failed, falling back to mock data', err);
        return this.http.get<any[]>('assets/mock-properties.json');
      })
    );
  }

  getPropertiesAll() {
    return this.http.get<any[]>(`${this.apiUrl}/propertyall/`).pipe(
      timeout(5000),
      catchError((err) => {
        console.error('getPropertiesAll failed, falling back to mock data', err);
        return this.http.get<any[]>('assets/mock-properties.json');
      })
    );
  }

  getPropertiesByLocation(locationId: number) {
    return this.http.get<any[]>(`${this.apiUrl}/propertybylocation/${locationId}`).pipe(
      timeout(5000),
      catchError((err) => {
        console.error('getPropertiesByLocation failed, falling back to mock data', err);
        return this.http.get<any[]>('assets/mock-properties.json');
      })
    );
  }

  getPropertiesByCategory(categoryId: number) {
    return this.http.get<any[]>(`${this.apiUrl}/propertybycategory/${categoryId}`).pipe(
      timeout(5000),
      catchError((err) => {
        console.error('getPropertiesByCategory failed, falling back to mock data', err);
        return this.http.get<any[]>('assets/mock-properties.json');
      })
    );
  }

  getPropertiesByName(name: string) {
    return this.http.get<any[]>(`${this.apiUrl}/propertybyname/${name}`).pipe(
      timeout(5000),
      catchError((err) => {
        console.error('getPropertiesByName failed, falling back to mock data', err);
        return this.http.get<any[]>('assets/mock-properties.json');
      })
    );
  }

  getPropertiesByListFor(listFor: string) {
    return this.http.get<any[]>(`${this.apiUrl}/propertybylisttype/${listFor}`).pipe(
      timeout(5000),
      catchError((err) => {
        console.error('getPropertiesByListFor failed, falling back to mock data', err);
        return this.http.get<any[]>('assets/mock-properties.json');
      })
    );
  }

  getPropertiesByFiltering(formData: any) {
    let locationId = formData.cities;
    let categoryId = formData.categories;
    let sortBy = formData.sortBy;
    let listFor = formData.listFor;

    let params = new HttpParams()
                .set("locationId", locationId)
                .set("categoryId", categoryId)
                .set("listFor", listFor)
                .set("sortBy", sortBy);

    return this.http.get<any[]>(`${this.apiUrl}/propertybyfiltering`, {params} ).pipe(
      timeout(5000),
      catchError((err) => {
        console.error('getPropertiesByFiltering failed, falling back to mock data', err);
        return this.http.get<any[]>('assets/mock-properties.json');
      })
    );
  }

  getPropertyReviews(propId: number) {
    return this.http.get<any[]>(`${this.apiUrl}/propertyreview/${propId}`).pipe(
      timeout(5000),
      catchError((err) => {
        console.error('getPropertyReviews failed, falling back to mock data', err);
        return this.http.get<any[]>('assets/mock-properties.json');
      })
    );
  }

}
