package com.furusystems.dconsole2.core.strings
{
   import flash.utils.Dictionary;
   
   public class §^#P§
   {
       
      
      protected var §0"_§:Dictionary;
      
      public function §^#P§()
      {
         this.§0"_§ = new Dictionary(false);
         super();
      }
      
      public function §@#5§(param1:XML) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.string)
         {
            this.§0"_§[String(_loc2_.@id)] = String(_loc2_);
         }
      }
      
      public function get(param1:String) : String
      {
         if(this.§0"_§[param1] != null)
         {
            return this.§0"_§[param1] as String;
         }
         return "undefined";
      }
   }
}
