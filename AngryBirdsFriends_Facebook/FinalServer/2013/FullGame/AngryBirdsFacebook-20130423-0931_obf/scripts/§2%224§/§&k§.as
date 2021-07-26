package §2"4§
{
   import flash.utils.Dictionary;
   
   public class §&k§
   {
      
      private static var §<!u§:Dictionary;
       
      
      public function §&k§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         if(!_loc5_)
         {
            §<!u§ = new Dictionary();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.items)
         {
            if(!(_loc5_ && param1))
            {
               §§push(_loc2_.i == false);
               if(_loc6_ || §&k§)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           addr93:
                           if(_loc2_.i != null)
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                        §<!u§[_loc2_.u] = §@"E§.§?$§(_loc2_);
                        continue;
                     }
                  }
               }
            }
            §§goto(addr93);
         }
      }
      
      public static function §]v§() : Dictionary
      {
         return §<!u§;
      }
      
      public static function §`!]§(param1:String) : §@"E§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§<!u§[param1])
            {
               if(_loc3_ || §&k§)
               {
                  return §<!u§[param1];
               }
            }
         }
         return null;
      }
   }
}
