package § h§
{
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import flash.events.MouseEvent;
   
   public class BirdBotTutorialPopup extends AbstractPopup
   {
       
      
      public function BirdBotTutorialPopup(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupBirdBotHelp[0],"BirdBotTutorialPopup");
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§-"D§);
      }
      
      private function §-"D§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
