package § o§
{
   import §%#A§.§^!4§;
   import §6"r§.§!#A§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   
   public class ErrorPopup extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
      
      public static const §^#c§:String = "generalError";
      
      private static const §?"!§:String = "Oops! Pigs did it again!";
      
      private static const §&"y§:String = "invalidAccesstoken";
      
      private static const §50§:String = "Please, refresh your browser.";
      
      private static const TEXT2_GENERAL:String = "The pigs are causing some havoc in our server rooms.";
      
      public static const §?"V§:String = "thirdPartyCookiesDisabled";
      
      private static const §[#+§:String = "Cookie problem";
      
      private static const TEXT2_THIRD_PARTY_COOKIES:String = "This error was caused by:\rThe third party cookies are disabled from your browser.";
      
      public static const §-"'§:String = "invalidAccesstoken";
      
      private static const TEXT2_INVALID_ACCESSTOKEN:String = "This error was caused by:\rInvalid access token.";
      
      public static const §5"-§:String = "productWasNotFound";
      
      private static const §"!8§:String = "Product unavailable";
      
      private static const TEXT2_PRODUCT_NOT_FOUND:String = "This error was caused by:\rThe product was not found from the server.";
      
      public static const § "S§:String = "rewardAlreadyClaimed";
      
      private static const §0!M§:String = "Reward cannot be claimed";
      
      private static const TEXT2_REWARD_ALREADY_CLAIMED:String = "This error was caused by:\rThis reward has already been claimed.";
      
      private static var §#!+§:String;
      
      private static var § !3§:String;
       
      
      public function ErrorPopup(param1:int, param2:int, param3:String = "generalError", param4:String = null)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_Error[0],ID);
         §#!+§ = param3;
         § !3§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:String = §?"!§;
         var _loc2_:String = §50§;
         var _loc3_:String = TEXT2_GENERAL;
         var _loc4_:String = §&"y§;
         switch(§#!+§)
         {
            case §?"V§:
               _loc1_ = §[#+§;
               _loc3_ = TEXT2_THIRD_PARTY_COOKIES;
               break;
            case §-"'§:
               _loc3_ = TEXT2_INVALID_ACCESSTOKEN;
               break;
            case §5"-§:
               _loc1_ = §"!8§;
               _loc3_ = TEXT2_PRODUCT_NOT_FOUND;
               break;
            case § "S§:
               _loc1_ = §0!M§;
               _loc3_ = TEXT2_REWARD_ALREADY_CLAIMED;
         }
         §1"6§.getItemByName("ErrorImage").mClip.gotoAndStop(_loc4_);
         (§1"6§.getItemByName("ErrorTitle") as §^!4§).setText(_loc1_);
         (§1"6§.getItemByName("ErrorText") as §^!4§).setText(_loc2_);
         if(!§ !3§)
         {
            (§1"6§.getItemByName("ErrorText2") as §^!4§).setText(_loc3_);
         }
         else
         {
            (§1"6§.getItemByName("ErrorText2") as §^!4§).setText(§ !3§);
         }
         §!#A§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
   }
}
