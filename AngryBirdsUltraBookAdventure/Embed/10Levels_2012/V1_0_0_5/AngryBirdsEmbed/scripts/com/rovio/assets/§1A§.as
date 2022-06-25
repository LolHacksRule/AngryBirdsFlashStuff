package com.rovio.assets
{
   public class §1A§
   {
       
      
      private var §,W§:String;
      
      private var §12§:Class;
      
      public function §1A§(param1:String, param2:Class)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
            if(_loc4_)
            {
               this.§,W§ = param1;
               if(!_loc3_)
               {
                  this.§12§ = param2;
               }
            }
         }
      }
      
      public function get §^_§() : String
      {
         return this.§,W§;
      }
      
      public function set §^_§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§,W§ = param1;
         }
      }
      
      public function get §^!1§() : Class
      {
         return this.§12§;
      }
      
      public function set §^!1§(param1:Class) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§12§ = param1;
         }
      }
   }
}
