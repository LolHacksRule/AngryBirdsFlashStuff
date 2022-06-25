package com.rovio.assets
{
   public class AssetCache
   {
      
      private static var §5!`§:Object;
       
      
      public function AssetCache()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §@§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(§5!`§ == null)
            {
               addr90:
               while(true)
               {
                  §5!`§ = new Object();
               }
               addr90:
            }
            while(true)
            {
               §§push(§+c§(param1));
               if(_loc3_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               §§goto(addr90);
            }
            throw new Error("Trying to add a duplicate asset: " + param1);
         }
         while(true)
         {
            §5!`§[param1] = new §8u§(param1,param2);
            if(_loc3_)
            {
               break;
            }
            §§goto(addr90);
         }
      }
      
      public static function §+c§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            while(§5!`§[param1] != null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr72);
               }
               if(_loc3_)
               {
                  break;
               }
            }
            §§push(false);
            if(!(_loc2_ && param1))
            {
               return §§pop();
            }
            §§goto(addr72);
         }
         addr72:
         return true;
      }
      
      public static function §%p§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§8u§ = §5!`§[param1];
         if(!_loc5_)
         {
            if(_loc3_ == null)
            {
               if(param2)
               {
                  if(!(_loc5_ && param2))
                  {
                     throw new Error("Asset not in cache: " + param1);
                  }
                  addr95:
               }
               return null;
            }
            return _loc3_.§%J§;
         }
         §§goto(addr95);
      }
   }
}
