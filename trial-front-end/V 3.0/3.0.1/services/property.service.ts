import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Property } from '../model/property';

@Injectable({
  providedIn: 'root'
})
export class PropertyService {

  properties: Property[];

  property: Property = new Property();

  constructor(public http: HttpClient) {
    this.properties = [];
  }

  getPropertyById(id: number) {
    return this.http.get<any>("http://localhost:8080/property/" + id);
  }

  getPropertiesAll() {
    return this.http.get<any[]>("http://localhost:8080/propertyall/");
  }

  getPropertiesByLocation(locationId: number) {
    return this.http.get<any[]>("http://localhost:8080/propertybylocation/" + locationId);
  }

  getPropertiesByCategory(categoryId: number) {
    return this.http.get<any[]>("http://localhost:8080/propertybycategory/" + categoryId);
  }

  getPropertiesByName(name: string) {
    return this.http.get<any[]>("http://localhost:8080/propertybyname/" + name);
  }

  getPropertiesByListFor(listFor: string) {
    return this.http.get<any[]>("http://localhost:8080/propertybylisttype/" + listFor);
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

    return this.http.get<any[]>("http://localhost:8080/propertybyfiltering", {params} );
  }

  getPropertyReviews(propId: number) {
    return this.http.get<any[]>("http://localhost:8080/propertyreview/" + propId);
  }

}
