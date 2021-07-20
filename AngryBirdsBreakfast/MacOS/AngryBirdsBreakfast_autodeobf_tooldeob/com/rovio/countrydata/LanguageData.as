package com.rovio.countrydata
{
   import each.XMLFactory;
   
   public class LanguageData
   {
      
      private static var mLanguageOptionsDataTableBin:Class = LanguageData_mLanguageOptionsDataTableBin;
       
      
      private var mSupportedLanguages:Vector.<Language>;
      
      public function LanguageData()
      {
         super();
         this.readLanguageData(XMLFactory.fromOctetStreamClass(mLanguageOptionsDataTableBin));
      }
      
      private function readLanguageData(param1:XML) : void
      {
         var _loc2_:Language = null;
         var _loc3_:XML = null;
         this.mSupportedLanguages = new Vector.<Language>();
         for each(_loc3_ in param1.language)
         {
            _loc2_ = new Language();
            _loc2_.id = _loc3_.@id;
            _loc2_.name = _loc3_.@name;
            _loc2_.nativeName = _loc3_.@nativeName;
            this.mSupportedLanguages.push(_loc2_);
         }
      }
      
      public function getLanguageList() : Array
      {
         var _loc2_:Language = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.mSupportedLanguages)
         {
            _loc1_.push(_loc2_);
         }
         _loc1_.sortOn("nativeName");
         return _loc1_;
      }
   }
}
