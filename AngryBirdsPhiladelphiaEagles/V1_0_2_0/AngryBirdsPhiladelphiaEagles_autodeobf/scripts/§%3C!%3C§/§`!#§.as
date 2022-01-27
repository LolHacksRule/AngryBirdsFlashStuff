package §<!<§
{
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §<!F§.§5!+§;
   import flash.events.MouseEvent;
   
   public class §`!#§ extends Popup
   {
       
      
      public function §`!#§(param1:§<!K§, param2:StatePopupManager)
      {
         super(§,!;§.§2o§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§]O§);
         §5!+§.pause();
         AngryBirdsFP11.§"Y§.§1s§();
      }
      
      private function §]O§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §5!+§.resume();
         this.close();
      }
   }
}
