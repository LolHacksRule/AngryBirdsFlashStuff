package §2F§
{
   public class §>#0§
   {
      
      public static const §%,§:String = "WebStoryModeAbTestCase";
      
      public static const §2!]§:String = "webStoryModeOff_50";
      
      public static const §?$7§:String = "webStoryModeOn_50";
      
      public static const §2!'§:String = "ChallengeAvailabilityAbTestCase2017";
      
      public static const §-y§:String = "challengeEnabled";
      
      private static var §0"i§:Object;
       
      
      public function §>#0§()
      {
         super();
      }
      
      public static function §5f§(param1:String) : String
      {
         var _loc2_:* = null;
         if(§0"i§)
         {
            for(_loc2_ in §0"i§)
            {
               if(_loc2_ == param1)
               {
                  return §0"i§[_loc2_];
               }
            }
         }
         return null;
      }
      
      public static function injectData(param1:Object) : void
      {
         §0"i§ = param1;
      }
   }
}
