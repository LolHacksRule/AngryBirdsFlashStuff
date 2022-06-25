package com.rovio.assets
{
   public class §9!N§
   {
      
      private static var §]o§:Object;
       
      
      public function §9!N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §^!K§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         if(§]o§ == null)
         {
            if(!_loc3_)
            {
               §]o§ = new Object();
            }
         }
         if(!§!K§(param1))
         {
            §]o§[param1] = new §]x§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §!K§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            while(§]o§[param1] != null)
            {
               if(_loc3_)
               {
                  break;
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr67);
            }
            §§push(false);
            if(!_loc3_)
            {
               return §§pop();
            }
            §§goto(addr67);
         }
         addr67:
         return true;
      }
      
      public static function §0!k§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§]x§ = §]o§[param1];
         if(!_loc5_)
         {
            if(_loc3_ == null)
            {
               if(_loc4_ || param2)
               {
                  if(param2)
                  {
                     if(_loc4_ || param1)
                     {
                        §§goto(addr93);
                     }
                     else
                     {
                        addr99:
                     }
                  }
                  return null;
               }
               addr93:
               throw new Error("Asset not in cache: " + param1);
            }
            return _loc3_.§`P§;
         }
         §§goto(addr99);
      }
   }
}
