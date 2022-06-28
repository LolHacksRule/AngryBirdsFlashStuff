package §9!y§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §@i§.§=r§;
   import §[m§.Popup;
   import flash.events.MouseEvent;
   import §true§.§ _§;
   
   public class §2v§ extends Popup
   {
      
      public static const §?%§:String = "generalError";
      
      public static const §'1§:String = "thirdPartyCookiesDisabled";
       
      
      public function §2v§(param1:§'!^§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§[!'§.§+@§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§?%§,§'1§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!8§);
         § _§.pause();
         AngryBirdsFP11.§3!a§.§5C§();
      }
      
      private function §"!8§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§3!a§.§5C§();
         §=r§.§[!3§("window.location.reload");
      }
   }
}
