package §]!1§
{
   import §10§.§#!4§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import flash.events.MouseEvent;
   
   public class §]L§ extends Popup
   {
       
      
      public function §]L§(param1:§[H§, param2:StatePopupManager)
      {
         super(§1W§.§&!G§.Views.PopupView_Warning[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§'Y§);
         §#!4§.pause();
         AngryBirdsFP11.§?,§.§ $§();
      }
      
      private function §'Y§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §#!4§.resume();
         this.close();
      }
   }
}
