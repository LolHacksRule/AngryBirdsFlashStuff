package com.rovio.assets
{
   public class AssetCache
   {
      
      private static var §!!g§:Object;
       
      
      public function AssetCache()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §&!g§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(param1);
            if(_loc4_ || param1)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            while(true)
            {
               if(§!!g§ != null)
               {
                  while(true)
                  {
                     §§push(§0u§(param1));
                     if(_loc4_)
                     {
                        §§push(!§§pop());
                     }
                     if(!§§pop())
                     {
                        throw new Error("Trying to add a duplicate asset: " + param1);
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        §!!g§[param1] = new §7E§(param1,param2);
                     }
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        return;
                     }
                  }
                  continue;
                  addr41:
               }
            }
         }
         while(true)
         {
            §!!g§ = new Object();
            §§goto(addr103);
         }
      }
      
      public static function §0u§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         while(§!!g§[param1] != null)
         {
            if(_loc2_)
            {
               §§goto(addr61);
            }
            if(!(_loc3_ && _loc2_))
            {
               break;
            }
         }
         §§push(false);
         if(_loc2_)
         {
            return §§pop();
         }
         addr61:
         return true;
      }
      
      public static function §,!k§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§7E§ = §!!g§[param1];
         if(!(_loc5_ && param1))
         {
            if(_loc3_ != null)
            {
               return _loc3_.§=!"§;
            }
            if(!(_loc5_ && AssetCache))
            {
               if(!param2)
               {
                  return null;
               }
            }
         }
         throw new Error("Asset not in cache: " + param1);
      }
   }
}
