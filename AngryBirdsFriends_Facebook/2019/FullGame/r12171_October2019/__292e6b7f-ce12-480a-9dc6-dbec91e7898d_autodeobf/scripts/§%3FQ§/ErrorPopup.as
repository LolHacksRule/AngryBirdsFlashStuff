package §?Q§
{
   import § "L§.§7`§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §?#z§.§]$?§;
   import §^"3§.§`$4§;
   
   public class ErrorPopup extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
      
      public static const §[#w§:String = "generalError";
      
      private static const §,!+§:String = "Oops! Something went wrong!";
      
      private static const §+!4§:String = "invalidAccesstoken";
      
      private static const §!,§:String = "Please, refresh your browser.";
      
      public static const §-#d§:String = "thirdPartyCookiesDisabled";
      
      private static const §>#M§:String = "Cookie problem";
      
      private static const §&#[§:String = "This error was caused by:\rThe third party cookies are disabled from your browser.";
      
      private static const §5!w§:String = "thirdPartyCookiesDisabled";
      
      public static const §["0§:String = "invalidAccesstoken";
      
      private static const §7!q§:String = "This error was caused by:\rInvalid or expired access token.";
      
      public static const §7y§:String = "productWasNotFound";
      
      private static const §-"&§:String = "Product unavailable";
      
      private static const §="L§:String = "This error was caused by:\rThe product was not found from the server.";
      
      private static const §5q§:String = "generalError";
      
      public static const §"e§:String = "rewardAlreadyClaimed";
      
      private static const §^#$§:String = "Reward cannot be claimed";
      
      private static const §;j§:String = "This error was caused by:\rThis reward has already been claimed.";
      
      private static var §;#-§:String;
      
      private static var §6#Q§:String;
       
      
      public function ErrorPopup(param1:String = "generalError", param2:String = null)
      {
         super(§@#D§.ERROR,§5R§.TOP,§false§.§4#;§.Views.PopupView_Error[0],ID);
         §;#-§ = param1;
         §6#Q§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:String = §,!+§;
         var _loc2_:String = §!,§;
         var _loc3_:String = null;
         var _loc4_:String = §+!4§;
         switch(§;#-§)
         {
            case §-#d§:
               _loc1_ = §>#M§;
               _loc3_ = §&#[§;
               _loc4_ = §5!w§;
               break;
            case §["0§:
               _loc3_ = §7!q§;
               break;
            case §7y§:
               _loc1_ = §-"&§;
               _loc3_ = §="L§;
               _loc4_ = §5q§;
               break;
            case §"e§:
               _loc1_ = §^#$§;
               _loc3_ = §;j§;
         }
         §;#'§.getItemByName("ErrorImage").mClip.gotoAndStop(_loc4_);
         (§;#'§.getItemByName("ErrorTitle") as §7`§).setText(_loc1_);
         (§;#'§.getItemByName("ErrorText") as §7`§).setText(_loc2_);
         §;#'§.getItemByName("ErrorTextMoreInfo").visible = false;
         if(!§6#Q§)
         {
            if(_loc3_)
            {
               (§;#'§.getItemByName("ErrorTextMoreInfo") as §7`§).setText(_loc3_);
               §;#'§.getItemByName("Button_MoreInfo").visible = true;
            }
            else
            {
               §;#'§.getItemByName("Button_MoreInfo").visible = false;
            }
         }
         else
         {
            (§;#'§.getItemByName("ErrorTextMoreInfo") as §7`§).setText(§6#Q§);
            §;#'§.getItemByName("Button_MoreInfo").visible = true;
         }
         §]$?§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "MORE_INFO":
               §;#'§.getItemByName("ErrorImage").visible = false;
               §;#'§.getItemByName("ErrorText").visible = false;
               §;#'§.getItemByName("Button_MoreInfo").visible = false;
               §;#'§.getItemByName("ErrorTextMoreInfo").visible = true;
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
   }
}
