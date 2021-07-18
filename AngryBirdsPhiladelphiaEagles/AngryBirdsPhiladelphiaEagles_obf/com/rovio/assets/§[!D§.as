package com.rovio.assets
{
   public class §[!D§
   {
      
      private static var §3!E§:Object;
       
      
      public function §[!D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §2b§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop().toUpperCase());
         }
         param1 = §§pop();
         if(§3!E§ == null)
         {
            §3!E§ = new Object();
         }
         if(!§@1§(param1))
         {
            §3!E§[param1] = new §'1§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §@1§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         while(§3!E§[param1] != null)
         {
            if(_loc2_)
            {
               §§goto(addr45);
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
         addr45:
         return true;
      }
      
      public static function §8!N§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1);
            if(!(_loc4_ && param2))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§'1§ = §3!E§[param1];
         if(!_loc4_)
         {
            if(_loc3_ != null)
            {
               return _loc3_.§`!H§;
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
