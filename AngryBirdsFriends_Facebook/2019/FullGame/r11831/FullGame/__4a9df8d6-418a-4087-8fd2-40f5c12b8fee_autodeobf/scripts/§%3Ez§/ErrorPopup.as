package §>z§
{
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §,!Q§.§6"n§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §`#@§.§7n§;
   
   public class ErrorPopup extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
      
      public static const §@!x§:String = "generalError";
      
      private static const §!"9§:String = "Oops! Something went wrong!";
      
      private static const §&"g§:String = "invalidAccesstoken";
      
      private static const §&t§:String = "Please, refresh your browser.";
      
      public static const § $@§:String = "thirdPartyCookiesDisabled";
      
      private static const §4#R§:String = "Cookie problem";
      
      private static const §3!,§:String = "This error was caused by:\rThe third party cookies are disabled from your browser.";
      
      private static const §!W§:String = "thirdPartyCookiesDisabled";
      
      public static const §4!Y§:String = "invalidAccesstoken";
      
      private static const §2#i§:String = "This error was caused by:\rInvalid or expired access token.";
      
      public static const §@!j§:String = "productWasNotFound";
      
      private static const §1f§:String = "Product unavailable";
      
      private static const §`!b§:String = "This error was caused by:\rThe product was not found from the server.";
      
      private static const §+!&§:String = "generalError";
      
      public static const §5p§:String = "rewardAlreadyClaimed";
      
      private static const §;E§:String = "Reward cannot be claimed";
      
      private static const §]#c§:String = "This error was caused by:\rThis reward has already been claimed.";
      
      private static var §0"f§:String;
      
      private static var § !_§:String;
       
      
      public function ErrorPopup(param1:String = "generalError", param2:String = null)
      {
         super(§#"l§.ERROR,§]"Y§.TOP,§?l§.§3m§.Views.PopupView_Error[0],ID);
         §0"f§ = param1;
         § !_§ = param2;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:String = §!"9§;
         var _loc2_:String = §&t§;
         var _loc3_:String = null;
         var _loc4_:String = §&"g§;
         switch(§0"f§)
         {
            case § $@§:
               _loc1_ = §4#R§;
               _loc3_ = §3!,§;
               _loc4_ = §!W§;
               break;
            case §4!Y§:
               _loc3_ = §2#i§;
               break;
            case §@!j§:
               _loc1_ = §1f§;
               _loc3_ = §`!b§;
               _loc4_ = §+!&§;
               break;
            case §5p§:
               _loc1_ = §;E§;
               _loc3_ = §]#c§;
         }
         §&!M§.getItemByName("ErrorImage").mClip.gotoAndStop(_loc4_);
         (§&!M§.getItemByName("ErrorTitle") as §`"$§).setText(_loc1_);
         (§&!M§.getItemByName("ErrorText") as §`"$§).setText(_loc2_);
         §&!M§.getItemByName("ErrorTextMoreInfo").visible = false;
         if(!§ !_§)
         {
            if(_loc3_)
            {
               (§&!M§.getItemByName("ErrorTextMoreInfo") as §`"$§).setText(_loc3_);
               §&!M§.getItemByName("Button_MoreInfo").visible = true;
            }
            else
            {
               §&!M§.getItemByName("Button_MoreInfo").visible = false;
            }
         }
         else
         {
            (§&!M§.getItemByName("ErrorTextMoreInfo") as §`"$§).setText(§ !_§);
            §&!M§.getItemByName("Button_MoreInfo").visible = true;
         }
         §7n§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "MORE_INFO":
               §&!M§.getItemByName("ErrorImage").visible = false;
               §&!M§.getItemByName("ErrorText").visible = false;
               §&!M§.getItemByName("Button_MoreInfo").visible = false;
               §&!M§.getItemByName("ErrorTextMoreInfo").visible = true;
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
   }
}
