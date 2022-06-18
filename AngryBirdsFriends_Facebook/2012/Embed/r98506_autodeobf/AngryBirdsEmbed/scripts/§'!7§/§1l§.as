package §'!7§
{
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import flash.events.MouseEvent;
   
   public class §1l§ extends Popup
   {
      
      public static const §2X§:String = "generalError";
      
      public static const §`!"§:String = "thirdPartyCookiesDisabled";
       
      
      public function §1l§(param1:§5h§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§3!@§.§`Z§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§2X§,§`!"§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§!!!§);
         §^?§.pause();
         AngryBirdsFP11.§5W§.§#!§();
      }
      
      private function §!!!§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§5W§.§#!§();
      }
   }
}
