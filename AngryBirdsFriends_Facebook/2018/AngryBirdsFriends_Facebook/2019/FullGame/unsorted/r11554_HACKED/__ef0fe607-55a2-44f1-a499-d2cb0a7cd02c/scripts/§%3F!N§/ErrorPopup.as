package §?!N§
{
   import §%#v§.§0"j§;
   import §4!n§.§'!,§;
   import §5!$§.§-#j§;
   import §;$5§.§9§;
   import §;$5§.AbstractPopup;
   import §=!2§.§%"T§;
   
   public class ErrorPopup extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
      
      public static const § $<§:String = "generalError";
      
      private static const §@!d§:String = "Oops! Something went wrong!";
      
      private static const §5&§:String = "invalidAccesstoken";
      
      private static const §9^§:String = "Please, refresh your browser.";
      
      public static const §]"d§:String = "thirdPartyCookiesDisabled";
      
      private static const §`t§:String = "Cookie problem";
      
      private static const §'C§:String = "This error was caused by:\rThe third party cookies are disabled from your browser.";
      
      private static const §,!P§:String = "thirdPartyCookiesDisabled";
      
      public static const §,l§:String = "invalidAccesstoken";
      
      private static const §6!U§:String = "This error was caused by:\rInvalid or expired access token.";
      
      public static const §;"[§:String = "productWasNotFound";
      
      private static const §]B§:String = "Product unavailable";
      
      private static const §="z§:String = "This error was caused by:\rThe product was not found from the server.";
      
      private static const §@+§:String = "generalError";
      
      public static const §"$-§:String = "rewardAlreadyClaimed";
      
      private static const §#l§:String = "Reward cannot be claimed";
      
      private static const §[#p§:String = "This error was caused by:\rThis reward has already been claimed.";
      
      private static var §1#w§:String;
      
      private static var §+V§:String;
       
      
      public function ErrorPopup(param1:String = "generalError", param2:String = null)
      {
         super(§%#§.ERROR,§9#5§.TOP,§0"j§.§-i§.Views.PopupView_Error[0],ID);
         §1#w§ = param1;
         §+V§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:String = §@!d§;
         var _loc2_:String = §9^§;
         var _loc3_:String = null;
         var _loc4_:String = §5&§;
         switch(§1#w§)
         {
            case §]"d§:
               _loc1_ = §`t§;
               _loc3_ = §'C§;
               _loc4_ = §,!P§;
               break;
            case §,l§:
               _loc3_ = §6!U§;
               break;
            case §;"[§:
               _loc1_ = §]B§;
               _loc3_ = §="z§;
               _loc4_ = §@+§;
               break;
            case §"$-§:
               _loc1_ = §#l§;
               _loc3_ = §[#p§;
         }
         §8#Y§.getItemByName("ErrorImage").mClip.gotoAndStop(_loc4_);
         (§8#Y§.getItemByName("ErrorTitle") as §-#j§).setText(_loc1_);
         (§8#Y§.getItemByName("ErrorText") as §-#j§).setText(_loc2_);
         §8#Y§.getItemByName("ErrorTextMoreInfo").visible = false;
         if(!§+V§)
         {
            if(_loc3_)
            {
               (§8#Y§.getItemByName("ErrorTextMoreInfo") as §-#j§).setText(_loc3_);
               §8#Y§.getItemByName("Button_MoreInfo").visible = true;
            }
            else
            {
               §8#Y§.getItemByName("Button_MoreInfo").visible = false;
            }
         }
         else
         {
            (§8#Y§.getItemByName("ErrorTextMoreInfo") as §-#j§).setText(§+V§);
            §8#Y§.getItemByName("Button_MoreInfo").visible = true;
         }
         §%"T§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "MORE_INFO":
               §8#Y§.getItemByName("ErrorImage").visible = false;
               §8#Y§.getItemByName("ErrorText").visible = false;
               §8#Y§.getItemByName("Button_MoreInfo").visible = false;
               §8#Y§.getItemByName("ErrorTextMoreInfo").visible = true;
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
   }
}
