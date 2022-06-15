package §!#C§
{
   public class §5H§
   {
      
      private static var §,"'§:Object;
      
      public static const BRAG:String = "OGBrag";
      
      public static const INVITE:String = "OGInvite";
      
      public static const §'=§:String = "OGMysteryGift";
      
      public static const §,"5§:String = "OGChallenge";
       
      
      public function §5H§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         §,"'§ = param1;
      }
      
      public static function §^"M§(param1:String) : String
      {
         var _loc2_:Object = null;
         if(§,"'§)
         {
            for each(_loc2_ in §,"'§)
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
