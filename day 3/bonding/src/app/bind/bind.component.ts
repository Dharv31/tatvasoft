import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-bind',
  templateUrl: './bind.component.html',
  styleUrls: ['./bind.component.css']
})
export class BindComponent implements OnInit {

  constructor() { }

  name : string = "Dharmik vadhia"
  isdisable : boolean =false
  name1: string =""

  ngOnInit(): void {
  }

  printName(){
    console.log(this.name)
  }

  updateMyName(updatedName: string){
    alert(updatedName);
  }
}
