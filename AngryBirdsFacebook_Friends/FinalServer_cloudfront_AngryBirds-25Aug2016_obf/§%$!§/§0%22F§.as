package §%$!§
{
   public class §0"F§
   {
      
      private static var §"j§:Object;
      
      public static const BRAG:String = "OGBrag";
      
      public static const INVITE:String = "OGInvite";
      
      public static const §31§:String = "OGMysteryGift";
      
      public static const §0i§:String = "OGChallenge";
       
      
      public function §0"F§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         §"j§ = param1;
      }
      
      public static function §7#"§(param1:String) : String
      {
         var _loc2_:Object = null;
         if(§"j§)
         {
            for each(_loc2_ in §"j§)
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
