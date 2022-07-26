export class User {
  userId: number;
  username: string;
  password: string;
  firstName: string;
  lastName: string

  constructor() {
    this.userId = 0;
    this.username = '';
    this.firstName = '';
    this.lastName = '';
    this.password = '';
  }
}
