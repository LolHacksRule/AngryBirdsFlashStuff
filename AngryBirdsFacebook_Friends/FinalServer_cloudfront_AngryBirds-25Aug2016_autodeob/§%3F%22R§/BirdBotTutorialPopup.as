package §?"R§
{
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class BirdBotTutorialPopup extends AbstractPopup
   {
       
      
      public function BirdBotTutorialPopup(param1:int, param2:int)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupBirdBotHelp[0],"BirdBotTutorialPopup");
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="R§);
      }
      
      private function §="R§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
