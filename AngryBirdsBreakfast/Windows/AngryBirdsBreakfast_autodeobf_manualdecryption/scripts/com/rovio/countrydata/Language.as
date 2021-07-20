package com.rovio.countrydata
{
   public class Language
   {
       
      
      private var mId:String;
      
      private var mName:String;
      
      private var mNativeName:String;
      
      public function Language()
      {
         super();
      }
      
      public function get nativeName() : String
      {
         return this.mNativeName;
      }
      
      public function set nativeName(param1:String) : void
      {
         this.mNativeName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function set id(param1:String) : void
      {
         this.mId = param1;
      }
   }
}
