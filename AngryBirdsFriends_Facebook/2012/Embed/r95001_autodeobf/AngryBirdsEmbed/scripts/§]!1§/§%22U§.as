package §]!1§
{
   import §10§.§#!4§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import flash.events.MouseEvent;
   
   public class §"U§ extends Popup
   {
      
      public static const static:String = "generalError";
      
      public static const §>B§:String = "thirdPartyCookiesDisabled";
       
      
      public function §"U§(param1:§[H§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§1W§.§&!G§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([static,§>B§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§!k§);
         §#!4§.pause();
         AngryBirdsFP11.§?,§.§ $§();
      }
      
      private function §!k§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§?,§.§ $§();
      }
   }
}
