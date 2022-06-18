package §0!>§
{
   import §6h§.§[!4§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import flash.events.MouseEvent;
   
   public class §@%§ extends Popup
   {
      
      public static const §`!O§:String = "generalError";
      
      public static const §[+§:String = "thirdPartyCookiesDisabled";
       
      
      public function §@%§(param1:§+!B§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§-!K§.§"!G§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§`!O§,§[+§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§^x§);
         §[!4§.pause();
         AngryBirdsFP11.§6C§.§+m§();
      }
      
      private function §^x§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§6C§.§+m§();
      }
   }
}
