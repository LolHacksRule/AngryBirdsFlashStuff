package §=!4§
{
   import §"!5§.§,!!§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import flash.events.MouseEvent;
   
   public class §+x§ extends Popup
   {
       
      
      public function §+x§(param1:§!!1§, param2:StatePopupManager)
      {
         super(§0!&§.§'^§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§'u§);
         §,!!§.pause();
         AngryBirdsFP11.§@t§.§>!1§();
      }
      
      private function §'u§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §,!!§.resume();
         this.close();
      }
   }
}
