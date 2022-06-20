package com.angrybirds.avatarcreator.data
{
   public class Category
   {
       
      
      public var name:String;
      
      public var sid:String;
      
      public function Category(categoryName:String, categorySid:String)
      {
         super();
         this.sid = categorySid;
         this.name = categoryName;
      }
   }
}
