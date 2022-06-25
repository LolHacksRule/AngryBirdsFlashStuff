package com.rovio.assets
{
   public class §_-Fc§
   {
      
      private static var §_-08M§:Object;
       
      
      public function §_-Fc§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §_-AG§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            loop0:
            while(true)
            {
               if(§_-08M§ == null)
               {
                  while(true)
                  {
                     §_-08M§ = new Object();
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     addr100:
                  }
                  addr94:
               }
               while(!§_-TY§(param1))
               {
                  if(!_loc3_)
                  {
                     §_-08M§[param1] = new §_-sB§(param1,param2);
                     return;
                  }
                  §§goto(addr100);
               }
               throw new Error("Trying to add a duplicate asset: " + param1);
            }
         }
         §§goto(addr94);
      }
      
      public static function §_-TY§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            for(; §_-08M§[param1] != null; if(!(_loc2_ && _loc3_))
            {
               break;
            })
            {
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
            }
            §§push(false);
            if(!_loc2_)
            {
               return §§pop();
            }
            §§goto(addr61);
         }
         addr61:
         true;
         return §§pop();
      }
      
      public static function §_-YE§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§_-sB§ = §_-08M§[param1];
         if(_loc5_ || param2)
         {
            if(_loc3_ == null)
            {
               if(_loc5_)
               {
                  if(!param2)
                  {
                     return null;
                  }
               }
               throw new Error("Asset not in cache: " + param1);
            }
         }
         return _loc3_.§_-0u§;
      }
   }
}
