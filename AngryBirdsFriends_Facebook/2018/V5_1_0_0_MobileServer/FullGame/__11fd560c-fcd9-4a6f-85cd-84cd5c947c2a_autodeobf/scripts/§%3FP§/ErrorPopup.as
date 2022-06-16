package §?P§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §3#T§.§'§;
   import §;#D§.§3#U§;
   import §<h§.§%M§;
   
   public class ErrorPopup extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
      
      public static const §'#k§:String = "generalError";
      
      private static const §3"S§:String = "Oops! Something went wrong!";
      
      private static const §2"F§:String = "invalidAccesstoken";
      
      private static const §4_§:String = "Please, refresh your browser.";
      
      public static const §=!%§:String = "thirdPartyCookiesDisabled";
      
      private static const §<F§:String = "Cookie problem";
      
      private static const §@!p§:String = "This error was caused by:\rThe third party cookies are disabled from your browser.";
      
      private static const §;!K§:String = "thirdPartyCookiesDisabled";
      
      public static const §!M§:String = "invalidAccesstoken";
      
      private static const §'-§:String = "This error was caused by:\rInvalid or expired access token.";
      
      public static const §7z§:String = "productWasNotFound";
      
      private static const §!!L§:String = "Product unavailable";
      
      private static const §0"^§:String = "This error was caused by:\rThe product was not found from the server.";
      
      private static const §]"F§:String = "generalError";
      
      public static const §[!%§:String = "rewardAlreadyClaimed";
      
      private static const §,!H§:String = "Reward cannot be claimed";
      
      private static const §0#C§:String = "This error was caused by:\rThis reward has already been claimed.";
      
      private static var §9!y§:String;
      
      private static var §&$8§:String;
       
      
      public function ErrorPopup(param1:String = "generalError", param2:String = null)
      {
         super(§]"$§.ERROR,§^"U§.TOP,§1Q§.§5T§.Views.PopupView_Error[0],ID);
         §9!y§ = param1;
         §&$8§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:String = §3"S§;
         var _loc2_:String = §4_§;
         var _loc3_:String = null;
         var _loc4_:String = §2"F§;
         switch(§9!y§)
         {
            case §=!%§:
               _loc1_ = §<F§;
               _loc3_ = §@!p§;
               _loc4_ = §;!K§;
               break;
            case §!M§:
               _loc3_ = §'-§;
               break;
            case §7z§:
               _loc1_ = §!!L§;
               _loc3_ = §0"^§;
               _loc4_ = §]"F§;
               break;
            case §[!%§:
               _loc1_ = §,!H§;
               _loc3_ = §0#C§;
         }
         §,#2§.getItemByName("ErrorImage").mClip.gotoAndStop(_loc4_);
         (§,#2§.getItemByName("ErrorTitle") as §%M§).setText(_loc1_);
         (§,#2§.getItemByName("ErrorText") as §%M§).setText(_loc2_);
         §,#2§.getItemByName("ErrorTextMoreInfo").visible = false;
         if(!§&$8§)
         {
            if(_loc3_)
            {
               (§,#2§.getItemByName("ErrorTextMoreInfo") as §%M§).setText(_loc3_);
               §,#2§.getItemByName("Button_MoreInfo").visible = true;
            }
            else
            {
               §,#2§.getItemByName("Button_MoreInfo").visible = false;
            }
         }
         else
         {
            (§,#2§.getItemByName("ErrorTextMoreInfo") as §%M§).setText(§&$8§);
            §,#2§.getItemByName("Button_MoreInfo").visible = true;
         }
         §3#U§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "MORE_INFO":
               §,#2§.getItemByName("ErrorImage").visible = false;
               §,#2§.getItemByName("ErrorText").visible = false;
               §,#2§.getItemByName("Button_MoreInfo").visible = false;
               §,#2§.getItemByName("ErrorTextMoreInfo").visible = true;
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
   }
}
