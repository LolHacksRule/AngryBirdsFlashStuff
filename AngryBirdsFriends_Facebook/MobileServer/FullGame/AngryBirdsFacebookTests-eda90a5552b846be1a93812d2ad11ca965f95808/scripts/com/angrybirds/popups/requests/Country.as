package com.angrybirds.popups.requests
{
   import com.rovio.utils.CountryCodes;
   
   public class Country
   {
       
      
      public var countryCode:String = "";
      
      public var name:String = "";
      
      public function Country(cc:String)
      {
         super();
         this.countryCode = cc;
         this.name = CountryCodes.instance().getCountryName(this.countryCode);
      }
   }
}
