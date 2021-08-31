import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListingLocationComponent } from './listing-location.component';

describe('ListingLocationComponent', () => {
  let component: ListingLocationComponent;
  let fixture: ComponentFixture<ListingLocationComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ListingLocationComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ListingLocationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
