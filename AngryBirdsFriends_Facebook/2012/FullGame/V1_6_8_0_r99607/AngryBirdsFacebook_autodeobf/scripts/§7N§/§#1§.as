package §7N§
{
   import §+I§.§9!%§;
   import §[!K§.§=!e§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.MouseEvent;
   
   public class §#1§ extends Popup
   {
       
      
      public function §#1§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupTournamentNotFound[0],param1);
         mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§&!a§);
         §9!%§.pause();
      }
      
      private function §&!a§(param1:MouseEvent) : void
      {
         § W§.§%!y§.§ !`§(§=!e§.STATE_NAME);
         close();
      }
   }
}
