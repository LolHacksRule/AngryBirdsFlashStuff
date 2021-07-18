package com.furusystems.dconsole2.core.strings
{
   import flash.utils.Dictionary;
   
   public class §^#P§
   {
       
      
      protected var §0"_§:Dictionary;
      
      public function §^#P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0"_§ = new Dictionary(false);
            do
            {
               super();
            }
            while(_loc2_);
            
         }
      }
      
      public function §@#5§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         for each(_loc2_ in param1.string)
         {
            if(!(_loc5_ && param1))
            {
               this.§0"_§[String(_loc2_.@id)] = String(_loc2_);
            }
         }
      }
      
      public function get(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§0"_§[param1] != null)
            {
               if(_loc2_ || this)
               {
                  return this.§0"_§[param1] as String;
               }
            }
         }
         return "undefined";
      }
   }
}
