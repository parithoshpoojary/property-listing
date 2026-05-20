import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { Property } from '../model/property';

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
    return this.http.get<any>(`${this.apiUrl}/property/${id}`);
  }

  getPropertiesAll() {
    return this.http.get<any[]>(`${this.apiUrl}/propertyall/`);
  }

  getPropertiesByLocation(locationId: number) {
    return this.http.get<any[]>(`${this.apiUrl}/propertybylocation/${locationId}`);
  }

  getPropertiesByCategory(categoryId: number) {
    return this.http.get<any[]>(`${this.apiUrl}/propertybycategory/${categoryId}`);
  }

  getPropertiesByName(name: string) {
    return this.http.get<any[]>(`${this.apiUrl}/propertybyname/${name}`);
  }

  getPropertiesByListFor(listFor: string) {
    return this.http.get<any[]>(`${this.apiUrl}/propertybylisttype/${listFor}`);
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

    return this.http.get<any[]>(`${this.apiUrl}/propertybyfiltering`, {params} );
  }

  getPropertyReviews(propId: number) {
    return this.http.get<any[]>(`${this.apiUrl}/propertyreview/${propId}`);
  }

}
