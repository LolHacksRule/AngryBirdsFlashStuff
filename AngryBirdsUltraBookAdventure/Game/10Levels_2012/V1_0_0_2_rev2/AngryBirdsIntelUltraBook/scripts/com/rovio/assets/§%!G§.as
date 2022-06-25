package com.rovio.assets
{
   public class §%!G§
   {
      
      private static var §=%§:Object;
       
      
      public function §%!G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §7q§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            loop0:
            while(true)
            {
               if(§=%§ == null)
               {
                  while(true)
                  {
                     §=%§ = new Object();
                     addr102:
                     while(!_loc4_)
                     {
                     }
                     continue loop0;
                     addr86:
                     if(!(_loc4_ && _loc3_))
                     {
                        return;
                        addr93:
                     }
                  }
               }
               while(!§+!W§(param1))
               {
               }
               throw new Error("Trying to add a duplicate asset: " + param1);
            }
         }
         while(true)
         {
            §=%§[param1] = new §?!g§(param1,param2);
            if(!(_loc4_ && param1))
            {
               §§goto(addr86);
            }
            §§goto(addr102);
         }
         §§goto(addr93);
      }
      
      public static function §+!W§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §%!G§)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         while(§=%§[param1] != null)
         {
            if(!(_loc2_ && §%!G§))
            {
               §§goto(addr71);
            }
            if(_loc3_ || _loc2_)
            {
               break;
            }
         }
         §§push(false);
         if(_loc3_ || param1)
         {
            return §§pop();
         }
         addr71:
         return true;
      }
      
      public static function §^!B§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§?!g§ = §=%§[param1];
         if(_loc5_)
         {
            if(_loc3_ != null)
            {
               return _loc3_.§&!e§;
            }
         }
         if(param2)
         {
            throw new Error("Asset not in cache: " + param1);
         }
         return null;
      }
   }
}
