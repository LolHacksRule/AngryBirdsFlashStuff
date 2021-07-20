package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §5!G§.§&2§;
   import §6k§.§-#§;
   import flash.events.MouseEvent;
   
   public class §5<§ extends Popup
   {
       
      
      public function §5<§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupTournamentEnded[0],param1);
         mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§]!Q§);
         §&2§.pause();
      }
      
      private function §]!Q§(param1:MouseEvent) : void
      {
         §,"I§.§&q§.§>"I§(§-#§.STATE_NAME);
         close();
      }
   }
}
