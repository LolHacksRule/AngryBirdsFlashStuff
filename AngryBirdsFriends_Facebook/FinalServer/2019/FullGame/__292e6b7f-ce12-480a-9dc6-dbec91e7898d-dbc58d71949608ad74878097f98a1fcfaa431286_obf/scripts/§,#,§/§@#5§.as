package §,#,§
{
   public class §@#5§
   {
      
      private static var § k§:Object;
      
      public static const BRAG:String = "OGBrag";
      
      public static const INVITE:String = "OGInvite";
      
      public static const §^$'§:String = "OGMysteryGift";
      
      public static const §;##§:String = "OGChallenge";
       
      
      public function §@#5§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         § k§ = param1;
      }
      
      public static function §=D§(param1:String) : String
      {
         var _loc2_:Object = null;
         if(§ k§)
         {
            for each(_loc2_ in § k§)
            {
               if(_loc2_.name == param1)
               {
                  return _loc2_.id;
               }
            }
         }
         return null;
      }
   }
}
