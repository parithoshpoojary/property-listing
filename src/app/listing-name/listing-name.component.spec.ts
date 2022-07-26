import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListingNameComponent } from './listing-name.component';

describe('ListingNameComponent', () => {
  let component: ListingNameComponent;
  let fixture: ComponentFixture<ListingNameComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ListingNameComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ListingNameComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
