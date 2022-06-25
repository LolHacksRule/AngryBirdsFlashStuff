package com.rovio.assets
{
   public class AssetCache
   {
      
      private static var §3!F§:Object;
       
      
      public function AssetCache()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §2_§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_ || param2)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            loop0:
            while(true)
            {
               if(§3!F§ == null)
               {
                  while(true)
                  {
                     §3!F§ = new Object();
                     addr92:
                     while(_loc3_)
                     {
                     }
                     continue loop0;
                  }
                  addr88:
               }
               while(true)
               {
                  §§push(§[!f§(param1));
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     throw new Error("Trying to add a duplicate asset: " + param1);
                  }
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc4_)
                     {
                        §3!F§[param1] = new §@t§(param1,param2);
                        addr80:
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr80);
               }
            }
         }
      }
      
      public static function §[!f§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || AssetCache)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            while(§3!F§[param1] != null)
            {
               if(_loc2_ && param1)
               {
                  break;
               }
               addr70:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr69);
            }
            §§push(false);
            if(!_loc2_)
            {
               return §§pop();
            }
            addr69:
            return true;
         }
         §§goto(addr70);
      }
      
      public static function §-9§(param1:String, param2:Boolean = true) : Class
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
         var _loc3_:§@t§ = §3!F§[param1];
         if(!_loc5_)
         {
            if(_loc3_ == null)
            {
               if(!(_loc5_ && param2))
               {
                  if(param2)
                  {
                     if(!(_loc5_ && param2))
                     {
                        §§goto(addr84);
                     }
                  }
                  return null;
               }
               addr84:
               throw new Error("Asset not in cache: " + param1);
            }
         }
         return _loc3_.§%K§;
      }
   }
}
