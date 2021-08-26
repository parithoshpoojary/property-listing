import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Property } from '../model/property';

@Injectable({
  providedIn: 'root'
})
export class PropertyService {

  properties: Property[];

  constructor(public http: HttpClient) {
    this.properties = [];
  }

  getPropertiesAll() {
    return this.http.get<any[]>("http://localhost:8080/propertyall/").subscribe((data: Property[]) => { this.properties = data });
  }

  getPropertiesByLocation(locationId: number) {
    return this.http.get<any[]>("http://localhost:8080/propertybylocation/" + locationId);
  }

  getPropertiesByCategory(categoryId: number) {
    return this.http.get<any[]>("http://localhost:8080/propertybycategory/" + categoryId).subscribe((data: Property[]) => { this.properties = data });
  }

  getPropertiesByName(name: string) {
    return this.http.get<any[]>("http://localhost:8080/propertybyname/" + name).subscribe((data: Property[]) => { this.properties = data });
  }

  getPropertiesByListFor(listFor: string) {
    return this.http.get<any[]>("http://localhost:8080/propertybylisttype/" + listFor);
  }

}
