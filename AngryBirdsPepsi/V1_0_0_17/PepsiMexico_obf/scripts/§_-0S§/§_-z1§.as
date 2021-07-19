package §_-0S§
{
   public class §_-z1§
   {
      
      private static var §_-z6§:Object;
       
      
      public function §_-z1§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §_-SK§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop().toUpperCase());
         }
         param1 = §§pop();
         if(§_-z6§ == null)
         {
            §_-z6§ = new Object();
         }
         if(!§_-3p§(param1))
         {
            §_-z6§[param1] = new §_-hK§(param1,param2);
            if(!_loc4_)
            {
            }
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-3p§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc2_)
            {
               addr35:
               if(§_-z6§[param1] != null)
               {
                  if(_loc2_)
                  {
                     §§push(true);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr53:
                     §§push(false);
                  }
                  return §§pop();
               }
            }
            §§goto(addr53);
         }
         §§goto(addr35);
      }
      
      public static function §_-tn§(param1:String, param2:Boolean = true) : Class
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
         var _loc3_:§_-hK§ = §_-z6§[param1];
         if(!_loc5_)
         {
            if(_loc3_ == null)
            {
               if(_loc4_ || param1)
               {
                  if(param2)
                  {
                     if(!(_loc4_ || param1))
                     {
                        §§goto(addr71);
                     }
                  }
                  else
                  {
                     §§goto(addr69);
                  }
               }
               throw new Error("Asset not in cache: " + param1);
            }
            addr71:
            return _loc3_.§_-Sk§;
         }
         addr69:
         return null;
      }
   }
}
