import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListingTypeComponent } from './listing-type.component';

describe('ListingTypeComponent', () => {
  let component: ListingTypeComponent;
  let fixture: ComponentFixture<ListingTypeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ListingTypeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ListingTypeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
