package §@"V§
{
   public class §6!c§
   {
      
      private static var §2"O§:Object;
       
      
      public function §6!c§()
      {
         super();
      }
      
      public static function § !N§(param1:String) : String
      {
         var _loc2_:Object = null;
         if(§2"O§)
         {
            for each(_loc2_ in §2"O§)
            {
               if(_loc2_[param1])
               {
                  return _loc2_[param1];
               }
            }
         }
         return null;
      }
      
      public static function injectData(param1:Object) : void
      {
         if(param1)
         {
            §2"O§ = param1;
         }
         else
         {
            §2"O§ = {
               "ShopVisuals1":"xTotalYFree",
               "FreeMushroomIntroSampleEaster2013":"sixFree1"
            };
         }
      }
   }
}
