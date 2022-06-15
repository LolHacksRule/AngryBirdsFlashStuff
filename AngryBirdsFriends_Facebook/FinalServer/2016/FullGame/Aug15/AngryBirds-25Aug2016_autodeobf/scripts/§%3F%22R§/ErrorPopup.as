package §?"R§
{
   import §+"%§.§6X§;
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class ErrorPopup extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
      
      public static const §^#x§:String = "generalError";
      
      private static const §?#+§:String = "Oops!";
      
      private static const §&"h§:String = "The pigs are causing some havoc in our server rooms!\r\rPlease reload the page to continue playing.";
      
      public static const §`"4§:String = "thirdPartyCookiesDisabled";
      
      private static const §?!M§:String = "Cookie problem";
      
      private static const § y§:String = "The third party cookies are disabled from your browser.";
      
      public static const §8#4§:String = "invalidAccesstoken";
      
      private static const §7!m§:String = "Invalid access token";
      
      private static const §+w§:String = "Trying to log in with an invalid Facebook access token.\r\rPlease reload the page and try again.";
      
      public static const §]!f§:String = "productWasNotFound";
      
      private static const §&"4§:String = "Unavailable";
      
      private static const § V§:String = "The product was not found from the server.\r\rPlease try again later.";
      
      private static var §?#4§:String;
       
      
      public function ErrorPopup(param1:int, param2:int, param3:String = "generalError")
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_Error[0],ID);
         §?#4§ = param3;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §7!j§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§,$%§);
         var _loc2_:String = §?#+§;
         var _loc3_:String = §&"h§;
         var _loc4_:String = "generalError";
         switch(§?#4§)
         {
            case §`"4§:
               _loc2_ = §?!M§;
               _loc3_ = § y§;
               _loc4_ = "thirdPartyCookiesDisabled";
               break;
            case §8#4§:
               _loc2_ = §7!m§;
               _loc3_ = §+w§;
               _loc4_ = "invalidAccesstoken";
               break;
            case §]!f§:
               _loc2_ = §&"4§;
               _loc3_ = § V§;
         }
         §7!j§.getItemByName("ErrorImage").mClip.gotoAndStop(_loc4_);
         (§7!j§.getItemByName("ErrorTitle") as §]$!§).setText(_loc2_);
         (§7!j§.getItemByName("ErrorText") as §]$!§).setText(_loc3_);
         §>"$§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §,$%§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         §6X§.§3U§("reloadPage");
      }
   }
}
