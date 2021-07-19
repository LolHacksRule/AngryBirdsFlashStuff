package §0v§
{
   public class §-'§
   {
      
      private static var §&0§:Object;
       
      
      public function §-'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §'b§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §-'§))
         {
            §§push(param1);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            loop0:
            while(§&0§ == null)
            {
               if(!(_loc3_ || _loc3_))
               {
                  while(true)
                  {
                     break loop0;
                     addr50:
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        §&0§[param1] = new §'!=§(param1,param2);
                        break;
                     }
                  }
               }
               else
               {
                  addr94:
               }
               continue;
               if(_loc3_ || _loc3_)
               {
                  return;
               }
            }
            while(true)
            {
               if(§;x§(param1))
               {
                  throw new Error("Trying to add a duplicate asset: " + param1);
               }
               §§goto(addr50);
               §§goto(addr94);
            }
         }
         §&0§ = new Object();
         §§goto(addr94);
      }
      
      public static function §;x§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         while(§&0§[param1] != null)
         {
            if(!_loc3_)
            {
               §§goto(addr45);
            }
            if(_loc2_ || _loc3_)
            {
               break;
            }
         }
         §§push(false);
         if(!_loc3_)
         {
            return §§pop();
         }
         addr45:
         return true;
      }
      
      public static function §]`§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_ || param2)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§'!=§ = §&0§[param1];
         if(_loc4_ || param2)
         {
            if(_loc3_ != null)
            {
               return _loc3_.§'G§;
            }
         }
         if(param2)
         {
            if(!(_loc5_ && param2))
            {
               throw new Error("Asset not in cache: " + param1);
            }
         }
         return null;
      }
   }
}
