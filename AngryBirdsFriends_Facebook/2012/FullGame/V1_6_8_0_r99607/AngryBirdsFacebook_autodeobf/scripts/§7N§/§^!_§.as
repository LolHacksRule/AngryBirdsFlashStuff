package §7N§
{
   import §+I§.§9!%§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.MouseEvent;
   
   public class §^!_§ extends Popup
   {
       
      
      public function §^!_§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§-'§);
         §9!%§.pause();
         AngryBirdsFP11.§`"B§.§'H§();
      }
      
      private function §-'§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §9!%§.resume();
         this.close();
      }
   }
}
