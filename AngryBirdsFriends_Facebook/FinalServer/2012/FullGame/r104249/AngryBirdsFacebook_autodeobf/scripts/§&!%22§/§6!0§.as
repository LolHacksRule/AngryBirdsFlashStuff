package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §`!?§.Item;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §6!0§ extends Popup
   {
       
      
      private var §;!g§:String;
      
      public function §6!0§(param1:§^0§, param2:StatePopupManager, param3:Item)
      {
         super(§%^§.§?>§.Views.PopupView_ItemUnlocked[0],param1);
         var _loc4_:MovieClip;
         (_loc4_ = param3.§`"8§()).x = 60 + -_loc4_.width * 0.5;
         _loc4_.y = 90 + -_loc4_.height;
         _loc4_.scaleY = 1.75;
         _loc4_.scaleX = 1.75;
         mClip.itemUnlockHeader.addChild(_loc4_);
         this.§;!g§ = param3.category;
         mClip.unlockedText.text = "You just unlocked an item: " + param3.mName;
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§2"%§);
         mClip.wearBtn.addEventListener(MouseEvent.CLICK,this.§ else§);
      }
      
      private function § else§(param1:MouseEvent) : void
      {
         close();
         §`B§.§5C§(this.§;!g§);
      }
      
      private function §2"%§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
