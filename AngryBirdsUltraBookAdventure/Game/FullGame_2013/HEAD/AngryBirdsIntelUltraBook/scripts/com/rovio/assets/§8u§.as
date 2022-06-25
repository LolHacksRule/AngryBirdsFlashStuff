package com.rovio.assets
{
   public class §8u§
   {
       
      
      private var §8B§:String;
      
      private var §;!F§:Class;
      
      public function §8u§(param1:String, param2:Class)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
            while(true)
            {
               this.§8B§ = param1;
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     this.§;!F§ = param2;
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function get assetName() : String
      {
         return this.§8B§;
      }
      
      public function set assetName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§8B§ = param1;
         }
      }
      
      public function get §%J§() : Class
      {
         return this.§;!F§;
      }
      
      public function set §%J§(param1:Class) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§;!F§ = param1;
         }
      }
   }
}
