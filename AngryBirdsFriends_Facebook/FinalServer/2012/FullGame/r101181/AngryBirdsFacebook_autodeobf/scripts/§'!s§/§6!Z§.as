package §'!s§
{
   import §!K§.Item;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §6!Z§ extends Popup
   {
       
      
      private var §[C§:String;
      
      public function §6!Z§(param1:§7!A§, param2:StatePopupManager, param3:Item)
      {
         super(§ "A§.§4[§.Views.PopupView_ItemUnlocked[0],param1);
         var _loc4_:MovieClip;
         (_loc4_ = param3.§@!j§()).x = 60 + -_loc4_.width * 0.5;
         _loc4_.y = 90 + -_loc4_.height;
         _loc4_.scaleY = 1.75;
         _loc4_.scaleX = 1.75;
         mClip.itemUnlockHeader.addChild(_loc4_);
         this.§[C§ = param3.category;
         mClip.unlockedText.text = "You just unlocked an item: " + param3.mName;
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.wearBtn.addEventListener(MouseEvent.CLICK,this.§^"3§);
      }
      
      private function §^"3§(param1:MouseEvent) : void
      {
         close();
         §%?§.§9$§(this.§[C§);
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
