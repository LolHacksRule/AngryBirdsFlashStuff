package §`"5§
{
   import §2b§.§^m§;
   import §7N§.Popup;
   import §8!-§.Item;
   import §<m§.§9"1§;
   import §["@§.§["%§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §<!R§
   {
      
      public static const §@!>§:Number = 600;
      
      public static const §9"'§:int = 4;
      
      public static var §+!C§:Array;
      
      private static var §>!l§:String;
       
      
      private var §5M§:§9"1§;
      
      private var mAvatarItemsScroller2:§9"1§;
      
      private var mClip:MovieClip;
      
      private var §do§:Popup;
      
      private var §[B§:Boolean = false;
      
      private var §3s§:Array;
      
      private var §+!X§:Array;
      
      public function §<!R§(param1:Popup)
      {
         this.§3s§ = [];
         this.§+!X§ = [];
         super();
         this.§do§ = param1;
         this.mClip = param1.mClip;
      }
      
      public function §[!G§() : void
      {
         if(this.§[B§)
         {
            return;
         }
         this.§'"!§();
         this.§[B§ = true;
         this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.addEventListener(MouseEvent.CLICK,this.§1!d§);
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.addEventListener(MouseEvent.CLICK,this.§+s§);
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + §@!>§ + 30;
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y;
         this.§5M§ = new §9"1§(§@!>§,200,this.§3s§ || [],§^z§,50);
         this.§5M§.scrollerSprite.addEventListener(§^m§.§&!8§,this.onBuyItemClicked);
         this.§5M§.scrollerSprite.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + 30;
         this.§5M§.scrollerSprite.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y - 40;
         this.mAvatarItemsScroller2 = new §9"1§(§@!>§,200,this.§+!X§ || [],§^z§,50);
         this.mAvatarItemsScroller2.scrollerSprite.addEventListener(§^m§.§&!8§,this.onBuyItemClicked);
         this.mAvatarItemsScroller2.scrollerSprite.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + 30;
         this.mAvatarItemsScroller2.scrollerSprite.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y - 40 + 100;
         this.§=!U§();
         this.§5M§.scrollerSprite.visible = true;
         this.mClip.Container_Popup.Container_Avatars.addChild(this.§5M§.scrollerSprite);
         this.mClip.Container_Popup.Container_Avatars.addChild(this.mAvatarItemsScroller2.scrollerSprite);
      }
      
      private function §'"!§() : void
      {
         var _loc1_:Array = §+!C§.concat();
         while(_loc1_.length > 0)
         {
            this.§3s§ = this.§3s§.concat(_loc1_.splice(0,§9"'§));
            if(_loc1_.length > 0)
            {
               this.§+!X§ = this.§+!X§.concat(_loc1_.splice(0,§9"'§));
            }
         }
         while(this.§3s§.length % §9"'§ != 0)
         {
            this.§3s§.push(null);
         }
         while(this.§+!X§.length < this.§3s§.length)
         {
            this.§+!X§.push(null);
         }
      }
      
      private function §1!d§(param1:MouseEvent) : void
      {
         this.scroll(-this.§5M§.§?3§);
      }
      
      private function §+s§(param1:MouseEvent) : void
      {
         this.scroll(this.§5M§.§?3§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§5M§.scroll(param1);
            this.mAvatarItemsScroller2.scroll(param1);
            this.§=!U§();
         }
      }
      
      private function §=!U§() : void
      {
         var _loc1_:* = this.§5M§.offset != 0;
         var _loc2_:* = this.§5M§.offset != this.§5M§.data.length - this.§5M§.§?3§;
         this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.visible = _loc1_;
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.visible = _loc2_;
      }
      
      private function onBuyItemClicked(param1:§^m§) : void
      {
         this.§`J§(param1.§8"?§);
      }
      
      private function §`J§(param1:String) : void
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
      }
      
      public function §=O§(param1:Array = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Item = null;
         if(§+!C§)
         {
            return;
         }
         §+!C§ = param1;
         for each(_loc2_ in §+!C§)
         {
            _loc3_ = §["%§.§3U§(String(_loc2_.id));
            if(_loc3_ != null)
            {
               this.§do§.getItemByName("Inventory_Item_" + _loc3_.§4W§);
            }
         }
         this.§[!G§();
      }
      
      public function dispose() : void
      {
         this.mClip.Container_Popup.Container_Avatars.removeChild(this.§5M§.scrollerSprite);
         this.§5M§.dispose();
      }
   }
}
