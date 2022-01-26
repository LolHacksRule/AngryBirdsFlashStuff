package §##§
{
   import §87§.§2-§;
   import §87§.§]T§;
   import §;j§.§8[§;
   import flash.events.MouseEvent;
   
   public class §&A§ extends Popup
   {
       
      
      public function §&A§(param1:§]T§, param2:StatePopupManager)
      {
         super(§2-§.§+J§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§7!5§);
         §8[§.pause();
         AngryBirdsFP11.§`H§.§#g§();
      }
      
      private function §7!5§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §8[§.resume();
         this.close();
      }
   }
}
