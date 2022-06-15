package §5!Y§
{
   import §4y§.Item;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §-E§ extends Popup
   {
       
      
      private var §;"V§:String;
      
      public function §-E§(param1:§`_§, param2:StatePopupManager, param3:Item)
      {
         super(§ "<§.§%I§.Views.PopupView_ItemUnlocked[0],param1);
         var _loc4_:MovieClip;
         (_loc4_ = param3.§>N§()).x = 60 + -_loc4_.width * 0.5;
         _loc4_.y = 90 + -_loc4_.height;
         _loc4_.scaleY = 1.75;
         _loc4_.scaleX = 1.75;
         mClip.itemUnlockHeader.addChild(_loc4_);
         this.§;"V§ = param3.category;
         mClip.unlockedText.text = "You just unlocked an item: " + param3.mName;
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
         mClip.wearBtn.addEventListener(MouseEvent.CLICK,this.§8"I§);
      }
      
      private function §8"I§(param1:MouseEvent) : void
      {
         close();
         §9"6§.§<h§(this.§;"V§);
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         close();
      }
   }
}
