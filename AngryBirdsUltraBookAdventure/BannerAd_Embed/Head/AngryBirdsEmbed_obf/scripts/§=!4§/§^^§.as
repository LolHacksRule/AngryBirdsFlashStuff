package §=!4§
{
   import §"!5§.§,!!§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import flash.events.MouseEvent;
   
   public class §^^§ extends Popup
   {
      
      public static const § n§:String = "generalError";
      
      public static const §<!8§:String = "thirdPartyCookiesDisabled";
       
      
      public function §^^§(param1:§!!1§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§0!&§.§'^§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§ n§,§<!8§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§true §);
         §,!!§.pause();
         AngryBirdsFP11.§@t§.§>!1§();
      }
      
      private function §true §(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§@t§.§>!1§();
      }
   }
}
