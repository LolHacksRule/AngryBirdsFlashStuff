package §_-7§
{
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-gU§.Popup;
   import §_-qO§.§ in§;
   import flash.events.MouseEvent;
   
   public class §_-ir§ extends Popup
   {
       
      
      public function §_-ir§(param1:§_-5q§, param2:StatePopupManager)
      {
         super(§_-vB§.§_-ky§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§_-KN§);
         § in§.pause();
         AngryBirdsFP11.§_-07§.§_-DE§();
      }
      
      private function §_-KN§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         § in§.resume();
         this.close();
      }
   }
}
