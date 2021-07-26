package §?P§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class BirdBotTutorialPopup extends AbstractPopup
   {
       
      
      public function BirdBotTutorialPopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupBirdBotHelp[0],"BirdBotTutorialPopup");
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§-"F§);
      }
      
      private function §-"F§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
