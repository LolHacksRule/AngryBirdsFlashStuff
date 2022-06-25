package com.rovio.assets
{
   public class §%!G§
   {
      
      private static var §=%§:Object;
       
      
      public function §%!G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §7q§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_ || §%!G§)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            loop0:
            while(true)
            {
               if(§=%§ == null)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §=%§ = new Object();
                  }
                  continue;
               }
               addr38:
               while(true)
               {
                  if(§+!W§(param1))
                  {
                     throw new Error("Trying to add a duplicate asset: " + param1);
                     addr43:
                  }
                  if(_loc4_ || _loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
         }
         §=%§[param1] = new §?!g§(param1,param2);
      }
      
      public static function §+!W§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!(_loc3_ && §%!G§))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            while(§=%§[param1] != null)
            {
               if(_loc2_)
               {
                  §§goto(addr60);
               }
               if(!(_loc3_ && param1))
               {
                  addr68:
                  break;
               }
            }
            §§push(false);
            if(!(_loc3_ && param1))
            {
               return §§pop();
            }
            addr60:
            return true;
         }
         §§goto(addr68);
      }
      
      public static function §^!B§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§?!g§ = §=%§[param1];
         if(_loc4_ || param2)
         {
            if(_loc3_ == null)
            {
               if(!(_loc5_ && param1))
               {
                  if(param2)
                  {
                     if(_loc4_ || param2)
                     {
                        throw new Error("Asset not in cache: " + param1);
                     }
                     addr94:
                  }
                  return null;
               }
               §§goto(addr94);
            }
         }
         return _loc3_.§&!e§;
      }
   }
}
