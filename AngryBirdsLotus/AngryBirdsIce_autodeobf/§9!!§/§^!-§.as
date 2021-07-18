package §9!!§
{
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import flash.events.MouseEvent;
   
   public class §^!-§ extends Popup
   {
       
      
      public function §^!-§(param1:§#H§, param2:StatePopupManager)
      {
         super(§set §.§&!1§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§0!G§);
         §[o§.pause();
         AngryBirdsFP11.§?L§.§&x§();
      }
      
      private function §0!G§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[o§.resume();
         this.close();
      }
   }
}
