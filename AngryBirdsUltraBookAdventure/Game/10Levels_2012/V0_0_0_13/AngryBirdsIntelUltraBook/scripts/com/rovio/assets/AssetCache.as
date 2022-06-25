package com.rovio.assets
{
   public class AssetCache
   {
      
      private static var §3!F§:Object;
       
      
      public function AssetCache()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
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
            if(!_loc4_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            while(true)
            {
               if(§3!F§ != null)
               {
                  do
                  {
                     §§push(§[!f§(param1));
                     if(_loc3_ || AssetCache)
                     {
                        §§push(!§§pop());
                     }
                  }
                  while(§§pop());
                  
                  throw new Error("Trying to add a duplicate asset: " + param1);
               }
               addr54:
               loop1:
               while(!(_loc4_ && AssetCache))
               {
                  §3!F§ = new Object();
                  §§goto(addr54);
                  while(true)
                  {
                     §3!F§[param1] = new §@t§(param1,param2);
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function §[!f§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         while(§3!F§[param1] != null)
         {
            if(_loc2_)
            {
               break;
            }
            if(_loc2_ && _loc2_)
            {
               continue;
            }
            §§goto(addr69);
         }
         §§push(false);
         if(_loc3_ || AssetCache)
         {
            return §§pop();
         }
         addr69:
         return true;
      }
      
      public static function §-9§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§@t§ = §3!F§[param1];
         if(_loc4_ || param1)
         {
            if(_loc3_ == null)
            {
               if(_loc4_)
               {
                  if(param2)
                  {
                     if(_loc4_)
                     {
                        throw new Error("Asset not in cache: " + param1);
                     }
                     addr90:
                  }
                  return null;
               }
               §§goto(addr90);
            }
         }
         return _loc3_.§%K§;
      }
   }
}
