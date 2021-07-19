package com.rovio.assets
{
   public class §>D§
   {
      
      private static var §?<§:Object;
       
      
      public function §>D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §try§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop().toUpperCase());
         }
         param1 = §§pop();
         loop0:
         do
         {
            if(§?<§ == null)
            {
               while(true)
               {
                  §?<§ = new Object();
                  addr91:
                  while(true)
                  {
                  }
                  addr56:
                  if(!(_loc3_ && _loc3_))
                  {
                     continue loop0;
                  }
               }
            }
            for(; !§2q§(param1); §§goto(addr91))
            {
               if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr56);
            }
            throw new Error("Trying to add a duplicate asset: " + param1);
         }
         while(§?<§[param1] = new §=^§(param1,param2), !_loc4_);
         
      }
      
      public static function §2q§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            while(§?<§[param1] != null)
            {
               if(_loc2_ || §>D§)
               {
                  §§goto(addr50);
               }
               if(!_loc3_)
               {
                  addr53:
                  break;
               }
            }
            §§push(false);
            if(!_loc3_)
            {
               return §§pop();
            }
            addr50:
            return true;
         }
         §§goto(addr53);
      }
      
      public static function §`C§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§=^§ = §?<§[param1];
         if(_loc4_)
         {
            if(_loc3_ != null)
            {
               return _loc3_.§=h§;
            }
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
         }
         return null;
      }
   }
}
