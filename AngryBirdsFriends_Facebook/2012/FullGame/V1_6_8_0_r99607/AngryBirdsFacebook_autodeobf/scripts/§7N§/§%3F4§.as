package §7N§
{
   import §+I§.§9!%§;
   import §<G§.§5w§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.MouseEvent;
   
   public class §?4§ extends Popup
   {
       
      
      public function §?4§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupTournamentEnded[0],param1);
         mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§&!a§);
         §9!%§.pause();
      }
      
      private function §&!a§(param1:MouseEvent) : void
      {
         § W§.§%!y§.§ !`§(§5w§.STATE_NAME);
         close();
      }
   }
}
