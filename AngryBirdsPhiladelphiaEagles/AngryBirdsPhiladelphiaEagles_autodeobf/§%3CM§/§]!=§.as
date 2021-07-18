package §<M§
{
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import flash.events.MouseEvent;
   
   public class §]!=§ extends Popup
   {
       
      
      public function §]!=§(param1:§`o§, param2:StatePopupManager)
      {
         super(§`Z§.§5c§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@t§);
         §#! §.pause();
         AngryBirdsFP11.§`y§.§@9§();
      }
      
      private function §@t§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §#! §.resume();
         this.close();
      }
   }
}
