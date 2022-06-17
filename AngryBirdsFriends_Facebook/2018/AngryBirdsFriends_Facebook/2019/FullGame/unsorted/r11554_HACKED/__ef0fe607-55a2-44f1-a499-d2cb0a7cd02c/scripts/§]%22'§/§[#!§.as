package §]"'§
{
   public class §[#!§
   {
      
      private static var §4!V§:Object;
      
      public static const BRAG:String = "OGBrag";
      
      public static const INVITE:String = "OGInvite";
      
      public static const §^"_§:String = "OGMysteryGift";
      
      public static const §^"S§:String = "OGChallenge";
       
      
      public function §[#!§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         §4!V§ = param1;
      }
      
      public static function §1!'§(param1:String) : String
      {
         var _loc2_:Object = null;
         if(§4!V§)
         {
            for each(_loc2_ in §4!V§)
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
