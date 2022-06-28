package §2?§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import flash.events.MouseEvent;
   
   public class §^!-§ extends Popup
   {
       
      
      public function §^!-§(param1:§0#§, param2:StatePopupManager)
      {
         super(§06§.§-`§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+j§);
         §"h§.pause();
         AngryBirdsFP11.§0P§.§#2§();
      }
      
      private function §+j§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §"h§.resume();
         this.close();
      }
   }
}
