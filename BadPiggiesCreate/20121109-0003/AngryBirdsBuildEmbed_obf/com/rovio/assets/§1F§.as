package com.rovio.assets
{
   public class §1F§
   {
      
      private static var §7N§:Object;
       
      
      public function §1F§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §1v§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop().toUpperCase());
         }
         param1 = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(§7N§ == null)
            {
               if(_loc4_ || §1F§)
               {
                  §7N§ = new Object();
                  if(!(_loc3_ && _loc3_))
                  {
                     addr71:
                     if(§"!6§(param1))
                     {
                        throw new Error("Trying to add a duplicate asset: " + param1);
                     }
                     if(_loc4_ || param2)
                     {
                        addr82:
                        §7N§[param1] = new §%D§(param1,param2);
                     }
                     §§goto(addr96);
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr71);
         }
         addr96:
      }
      
      public static function §"!6§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(!(_loc3_ && _loc2_))
            {
               addr61:
               if(§7N§[param1] != null)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr73:
                     §§push(true);
                     if(_loc2_ || §1F§)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr82:
                     §§push(false);
                  }
                  return §§pop();
               }
               §§goto(addr82);
            }
            §§goto(addr73);
         }
         §§goto(addr61);
      }
      
      public static function §"!_§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§%D§ = §7N§[param1];
         if(_loc4_ || param2)
         {
            if(_loc3_ == null)
            {
               if(_loc4_ || param2)
               {
                  if(param2)
                  {
                     if(!(_loc5_ && param2))
                     {
                        §§goto(addr80);
                     }
                     else
                     {
                        §§goto(addr95);
                     }
                  }
               }
               return null;
            }
            addr95:
            return _loc3_.§2!"§;
         }
         addr80:
         throw new Error("Asset not in cache: " + param1);
      }
   }
}
