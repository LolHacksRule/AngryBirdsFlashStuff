package §@r§
{
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import flash.events.MouseEvent;
   
   public class §]!@§ extends Popup
   {
      
      public static const §&J§:String = "generalError";
      
      public static const §%^§:String = "thirdPartyCookiesDisabled";
       
      
      public function §]!@§(param1:§,U§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§while§.§ v§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§&J§,§%^§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§0"§);
         §'5§.pause();
         AngryBirdsFP11.§^!<§.§>B§();
      }
      
      private function §0"§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§^!<§.§>B§();
      }
   }
}
