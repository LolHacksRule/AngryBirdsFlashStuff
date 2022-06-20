package §7N§
{
   import §8!-§.Item;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §@7§ extends Popup
   {
       
      
      private var §;F§:String;
      
      public function §@7§(param1:§"!j§, param2:StatePopupManager, param3:Item)
      {
         super(§1"-§.§ !>§.Views.PopupView_ItemUnlocked[0],param1);
         var _loc4_:MovieClip;
         (_loc4_ = param3.§,!J§()).x = 60 + -_loc4_.width * 0.5;
         _loc4_.y = 90 + -_loc4_.height;
         _loc4_.scaleY = 1.75;
         _loc4_.scaleX = 1.75;
         mClip.itemUnlockHeader.addChild(_loc4_);
         this.§;F§ = param3.category;
         mClip.unlockedText.text = "You just unlocked an item: " + param3.mName;
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§6W§);
         mClip.wearBtn.addEventListener(MouseEvent.CLICK,this.§,1§);
      }
      
      private function §,1§(param1:MouseEvent) : void
      {
         close();
         §43§.§;!9§(this.§;F§,true);
      }
      
      private function §6W§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
