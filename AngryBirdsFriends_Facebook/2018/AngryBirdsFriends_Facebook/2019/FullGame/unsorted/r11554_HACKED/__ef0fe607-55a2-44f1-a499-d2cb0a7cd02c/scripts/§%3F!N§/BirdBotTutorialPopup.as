package §?!N§
{
   import §%#v§.§0"j§;
   import §;$5§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class BirdBotTutorialPopup extends AbstractPopup
   {
       
      
      public function BirdBotTutorialPopup(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupBirdBotHelp[0],"BirdBotTutorialPopup");
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§>"J§);
      }
      
      private function §>"J§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
