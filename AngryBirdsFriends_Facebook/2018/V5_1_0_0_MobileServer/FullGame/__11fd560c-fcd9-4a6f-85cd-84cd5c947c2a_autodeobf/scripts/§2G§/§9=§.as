package §2G§
{
   public class §9=§
   {
      
      private static var §%D§:Object;
      
      public static const BRAG:String = "OGBrag";
      
      public static const INVITE:String = "OGInvite";
      
      public static const §0b§:String = "OGMysteryGift";
      
      public static const §1H§:String = "OGChallenge";
       
      
      public function §9=§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         §%D§ = param1;
      }
      
      public static function §2#p§(param1:String) : String
      {
         var _loc2_:Object = null;
         if(§%D§)
         {
            for each(_loc2_ in §%D§)
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
