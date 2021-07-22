package §=#W§
{
   public class §^"H§
   {
      
      private static var §'#e§:Object;
       
      
      public function §^"H§()
      {
         super();
      }
      
      public static function §+!9§(param1:String) : String
      {
         var _loc2_:Object = null;
         if(§'#e§)
         {
            for each(_loc2_ in §'#e§)
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
            §'#e§ = param1;
         }
         else
         {
            §'#e§ = {
               "ShopVisuals1":"xTotalYFree",
               "FreeMushroomIntroSampleEaster2013":"sixFree1"
            };
         }
      }
   }
}
