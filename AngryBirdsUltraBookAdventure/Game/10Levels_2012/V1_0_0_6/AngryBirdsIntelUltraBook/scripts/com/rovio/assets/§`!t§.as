package com.rovio.assets
{
   public class §`!t§
   {
      
      private static var §<!Q§:Object;
       
      
      public function §`!t§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §2!O§(param1:String, param2:Class) : void
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
         }
         loop0:
         while(true)
         {
            if(§<!Q§ == null)
            {
               while(true)
               {
                  §<!Q§ = new Object();
                  addr94:
                  while(true)
                  {
                  }
               }
               addr90:
            }
            while(true)
            {
               if(§3!g§(param1))
               {
                  throw new Error("Trying to add a duplicate asset: " + param1);
               }
               if(!_loc3_)
               {
                  addr83:
                  if(_loc3_)
                  {
                     return;
                  }
                  continue;
               }
               if(!_loc4_)
               {
                  continue loop0;
               }
               §§goto(addr90);
            }
         }
      }
      
      public static function §3!g§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            while(§<!Q§[param1] != null)
            {
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr73);
            }
            §§push(false);
            if(_loc3_ || _loc2_)
            {
               return §§pop();
            }
            §§goto(addr73);
         }
         addr73:
         return true;
      }
      
      public static function §=J§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §`!t§))
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§]]§ = §<!Q§[param1];
         if(!_loc4_)
         {
            if(_loc3_ != null)
            {
               return _loc3_.§>M§;
            }
            if(!param2)
            {
               return null;
            }
         }
         throw new Error("Asset not in cache: " + param1);
      }
   }
}
