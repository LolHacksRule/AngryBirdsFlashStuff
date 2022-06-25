package com.rovio.assets
{
   public class §!Q§
   {
      
      private static var §&5§:Object;
       
      
      public function §!Q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function dynamic(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop().toUpperCase());
         }
         param1 = §§pop();
         if(§&5§ == null)
         {
            §&5§ = new Object();
         }
         if(!§,!%§(param1))
         {
            §&5§[param1] = new §?!'§(param1,param2);
            if(_loc3_ || param1)
            {
            }
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §,!%§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc2_ || _loc2_)
            {
               if(§&5§[param1] != null)
               {
                  if(!_loc3_)
                  {
                     §§push(true);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr77:
                     §§push(false);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr77);
      }
      
      public static function §^!H§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§?!'§ = §&5§[param1];
         if(!_loc4_)
         {
            if(_loc3_ == null)
            {
               if(_loc5_)
               {
                  addr62:
                  if(!param2)
                  {
                     return null;
                  }
                  if(_loc4_ && param2)
                  {
                     §§goto(addr81);
                  }
               }
               throw new Error("Asset not in cache: " + param1);
            }
            addr81:
            return _loc3_.§ W§;
         }
         §§goto(addr62);
      }
   }
}
