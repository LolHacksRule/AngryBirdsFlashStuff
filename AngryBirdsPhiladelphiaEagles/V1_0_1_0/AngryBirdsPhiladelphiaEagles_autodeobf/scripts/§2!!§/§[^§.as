package §2!!§
{
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.events.MouseEvent;
   
   public class §[^§ extends Popup
   {
       
      
      public function §[^§(param1:§+[§, param2:StatePopupManager)
      {
         super(§;Q§.static.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§5N§);
         §2G§.pause();
         AngryBirdsFP11.§<2§.§8y§();
      }
      
      private function §5N§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §2G§.resume();
         this.close();
      }
   }
}
