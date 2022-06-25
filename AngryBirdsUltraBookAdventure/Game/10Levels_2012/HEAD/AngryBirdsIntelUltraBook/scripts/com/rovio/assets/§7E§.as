package com.rovio.assets
{
   public class §7E§
   {
       
      
      private var §6i§:String;
      
      private var §^!=§:Class;
      
      public function §7E§(param1:String, param2:Class)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§6i§ = param1;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            this.§^!=§ = param2;
            if(!(_loc3_ && param2))
            {
               if(_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get assetName() : String
      {
         return this.§6i§;
      }
      
      public function set assetName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§6i§ = param1;
         }
      }
      
      public function get §=!"§() : Class
      {
         return this.§^!=§;
      }
      
      public function set §=!"§(param1:Class) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^!=§ = param1;
         }
      }
   }
}
