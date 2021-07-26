package §>!f§
{
   public class §>#-§
   {
      
      public static const §4$0§:String = "WebStoryModeAbTestCase";
      
      public static const §9"§:String = "webStoryModeOff_50";
      
      public static const §@Z§:String = "webStoryModeOn_50";
      
      public static const §%=§:String = "ChallengeAvailabilityAbTestCase2017";
      
      public static const §+"u§:String = "challengeEnabled";
      
      private static var §2!K§:Object;
       
      
      public function §>#-§()
      {
         super();
      }
      
      public static function §5$<§(param1:String) : String
      {
         var _loc2_:* = null;
         if(§2!K§)
         {
            for(_loc2_ in §2!K§)
            {
               if(_loc2_ == param1)
               {
                  return §2!K§[_loc2_];
               }
            }
         }
         return null;
      }
      
      public static function injectData(param1:Object) : void
      {
         §2!K§ = param1;
      }
   }
}
