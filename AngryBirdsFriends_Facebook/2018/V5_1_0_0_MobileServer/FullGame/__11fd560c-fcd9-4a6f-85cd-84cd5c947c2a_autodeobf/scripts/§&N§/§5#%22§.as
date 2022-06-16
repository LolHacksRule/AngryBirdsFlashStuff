package §&N§
{
   public class §5#"§
   {
      
      public static const §!#$§:String = "WebStoryModeAbTestCase";
      
      public static const §2"r§:String = "webStoryModeOff_50";
      
      public static const §;$!§:String = "webStoryModeOn_50";
      
      public static const §@"v§:String = "ChallengeAvailabilityAbTestCase2017";
      
      public static const §-0§:String = "challengeEnabled";
      
      private static var §=!j§:Object;
       
      
      public function §5#"§()
      {
         super();
      }
      
      public static function §+6§(param1:String) : String
      {
         var _loc2_:* = null;
         if(§=!j§)
         {
            for(_loc2_ in §=!j§)
            {
               if(_loc2_ == param1)
               {
                  return §=!j§[_loc2_];
               }
            }
         }
         return null;
      }
      
      public static function injectData(param1:Object) : void
      {
         §=!j§ = param1;
      }
   }
}
