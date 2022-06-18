package §&!A§
{
   public class §7!8§
   {
      
      public static const §&$ §:String = "WebStoryModeAbTestCase";
      
      public static const §'!N§:String = "webStoryModeOff_50";
      
      public static const §1!L§:String = "webStoryModeOn_50";
      
      public static const §"h§:String = "ChallengeAvailabilityAbTestCase2017";
      
      public static const §3-§:String = "challengeEnabled";
      
      private static var §+"w§:Object;
       
      
      public function §7!8§()
      {
         super();
      }
      
      public static function §1"O§(param1:String) : String
      {
         var _loc2_:* = null;
         if(§+"w§)
         {
            for(_loc2_ in §+"w§)
            {
               if(_loc2_ == param1)
               {
                  return §+"w§[_loc2_];
               }
            }
         }
         return null;
      }
      
      public static function injectData(param1:Object) : void
      {
         §+"w§ = param1;
      }
   }
}
