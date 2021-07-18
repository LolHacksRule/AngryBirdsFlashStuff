package §@"V§
{
   public class §6!c§
   {
      
      private static var §2"O§:Object;
       
      
      public function §6!c§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function § !N§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(!(_loc6_ && _loc2_))
         {
            if(§2"O§)
            {
               addr38:
               for each(_loc2_ in §2"O§)
               {
                  if(_loc5_ || §6!c§)
                  {
                     if(_loc2_[param1])
                     {
                        if(!_loc6_)
                        {
                           return _loc2_[param1];
                        }
                     }
                  }
               }
            }
            return null;
         }
         §§goto(addr38);
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               §2"O§ = {
                  "ShopVisuals1":"xTotalYFree",
                  "FreeMushroomIntroSampleEaster2013":"sixFree1"
               };
               if(!_loc2_)
               {
                  if(_loc2_ && param1)
                  {
                     addr56:
                     §2"O§ = param1;
                     addr59:
                  }
                  return;
               }
               §§goto(addr59);
            }
         }
         §§goto(addr56);
      }
   }
}
