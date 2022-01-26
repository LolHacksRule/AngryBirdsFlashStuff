package §9!!§
{
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import flash.events.MouseEvent;
   
   public class §,!&§ extends Popup
   {
      
      public static const §7!G§:String = "generalError";
      
      public static const § §:String = "thirdPartyCookiesDisabled";
       
      
      public function §,!&§(param1:§#H§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§set §.§&!1§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§7!G§,§ §].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§1^§);
         §[o§.pause();
         AngryBirdsFP11.§?L§.§&x§();
      }
      
      private function §1^§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§?L§.§&x§();
      }
   }
}
