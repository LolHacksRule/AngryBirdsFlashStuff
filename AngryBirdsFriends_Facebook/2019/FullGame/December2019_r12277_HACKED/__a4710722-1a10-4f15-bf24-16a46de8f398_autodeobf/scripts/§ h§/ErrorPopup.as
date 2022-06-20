package § h§
{
   import §+!n§.§+!p§;
   import §2$;§.§-$5§;
   import §9!6§.§## §;
   import §9!6§.AbstractPopup;
   import §<8§.§8!g§;
   import §[#A§.§&n§;
   
   public class ErrorPopup extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
      
      public static const § !I§:String = "generalError";
      
      private static const §?!Y§:String = "Oops! Something went wrong!";
      
      private static const §&d§:String = "invalidAccesstoken";
      
      private static const §;!>§:String = "Please, refresh your browser.";
      
      public static const §&_§:String = "thirdPartyCookiesDisabled";
      
      private static const § "§:String = "Cookie problem";
      
      private static const §;A§:String = "This error was caused by:\rThe third party cookies are disabled from your browser.";
      
      private static const §^#E§:String = "thirdPartyCookiesDisabled";
      
      public static const §0![§:String = "invalidAccesstoken";
      
      private static const §6#t§:String = "This error was caused by:\rInvalid or expired access token.";
      
      public static const §6"5§:String = "productWasNotFound";
      
      private static const §[#c§:String = "Product unavailable";
      
      private static const §'#"§:String = "This error was caused by:\rThe product was not found from the server.";
      
      private static const §!t§:String = "generalError";
      
      public static const §@w§:String = "rewardAlreadyClaimed";
      
      private static const §[!W§:String = "Reward cannot be claimed";
      
      private static const § D§:String = "This error was caused by:\rThis reward has already been claimed.";
      
      private static var §3"h§:String;
      
      private static var §4'§:String;
       
      
      public function ErrorPopup(param1:String = "generalError", param2:String = null)
      {
         super(§-!S§.ERROR,§## §.TOP,§&n§.§7a§.Views.PopupView_Error[0],ID);
         §3"h§ = param1;
         §4'§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:String = §?!Y§;
         var _loc2_:String = §;!>§;
         var _loc3_:String = null;
         var _loc4_:String = §&d§;
         switch(§3"h§)
         {
            case §&_§:
               _loc1_ = § "§;
               _loc3_ = §;A§;
               _loc4_ = §^#E§;
               break;
            case §0![§:
               _loc3_ = §6#t§;
               break;
            case §6"5§:
               _loc1_ = §[#c§;
               _loc3_ = §'#"§;
               _loc4_ = §!t§;
               break;
            case §@w§:
               _loc1_ = §[!W§;
               _loc3_ = § D§;
         }
         §'o§.getItemByName("ErrorImage").mClip.gotoAndStop(_loc4_);
         (§'o§.getItemByName("ErrorTitle") as §-$5§).setText(_loc1_);
         (§'o§.getItemByName("ErrorText") as §-$5§).setText(_loc2_);
         §'o§.getItemByName("ErrorTextMoreInfo").visible = false;
         if(!§4'§)
         {
            if(_loc3_)
            {
               (§'o§.getItemByName("ErrorTextMoreInfo") as §-$5§).setText(_loc3_);
               §'o§.getItemByName("Button_MoreInfo").visible = true;
            }
            else
            {
               §'o§.getItemByName("Button_MoreInfo").visible = false;
            }
         }
         else
         {
            (§'o§.getItemByName("ErrorTextMoreInfo") as §-$5§).setText(§4'§);
            §'o§.getItemByName("Button_MoreInfo").visible = true;
         }
         §+!p§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "MORE_INFO":
               §'o§.getItemByName("ErrorImage").visible = false;
               §'o§.getItemByName("ErrorText").visible = false;
               §'o§.getItemByName("Button_MoreInfo").visible = false;
               §'o§.getItemByName("ErrorTextMoreInfo").visible = true;
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
   }
}
