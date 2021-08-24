import { analyzeAndValidateNgModules } from '@angular/compiler';
import { Injectable } from '@angular/core';
import { FormControl, FormGroup, NgForm } from '@angular/forms';

@Injectable({
  providedIn: 'root'
})
export class DataSharingService {

  public formData: any;

  constructor() {
    this.formData = {};
  }
}
