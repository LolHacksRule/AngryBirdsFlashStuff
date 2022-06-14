package § each§
{
   import §!K§.Item;
   import §'!s§.Popup;
   import §-!+§.§<i§;
   import §0p§.§3!D§;
   import §^!r§.§=!x§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §84§
   {
      
      public static const §4!-§:Number = 600;
      
      public static const §9!#§:int = 4;
      
      public static var §90§:Array;
      
      private static var §,U§:String;
       
      
      private var §>u§:§<i§;
      
      private var mAvatarItemsScroller2:§<i§;
      
      private var mClip:MovieClip;
      
      private var §]"6§:Popup;
      
      private var §!"!§:Boolean = false;
      
      private var §=S§:Array;
      
      private var § p§:Array;
      
      public function §84§(param1:Popup)
      {
         this.§=S§ = [];
         this.§ p§ = [];
         super();
         this.§]"6§ = param1;
         this.mClip = param1.mClip;
      }
      
      public function §@!D§() : void
      {
         if(this.§!"!§)
         {
            return;
         }
         this.§0L§();
         this.§!"!§ = true;
         this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.addEventListener(MouseEvent.CLICK,this.§3!b§);
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.addEventListener(MouseEvent.CLICK,this.§>`§);
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + §4!-§ + 30;
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y;
         this.§>u§ = new §<i§(§4!-§,200,this.§=S§ || [],§+z§,50);
         this.§>u§.scrollerSprite.addEventListener(§=!x§.§!m§,this.onBuyItemClicked);
         this.§>u§.scrollerSprite.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + 30;
         this.§>u§.scrollerSprite.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y - 40;
         this.mAvatarItemsScroller2 = new §<i§(§4!-§,200,this.§ p§ || [],§+z§,50);
         this.mAvatarItemsScroller2.scrollerSprite.addEventListener(§=!x§.§!m§,this.onBuyItemClicked);
         this.mAvatarItemsScroller2.scrollerSprite.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + 30;
         this.mAvatarItemsScroller2.scrollerSprite.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y - 40 + 100;
         this.§@!&§();
         this.§>u§.scrollerSprite.visible = true;
         this.mClip.Container_Popup.Container_Avatars.addChild(this.§>u§.scrollerSprite);
         this.mClip.Container_Popup.Container_Avatars.addChild(this.mAvatarItemsScroller2.scrollerSprite);
      }
      
      private function §0L§() : void
      {
         var _loc1_:Array = §90§.concat();
         while(_loc1_.length > 0)
         {
            this.§=S§ = this.§=S§.concat(_loc1_.splice(0,§9!#§));
            if(_loc1_.length > 0)
            {
               this.§ p§ = this.§ p§.concat(_loc1_.splice(0,§9!#§));
            }
         }
         while(this.§=S§.length % §9!#§ != 0)
         {
            this.§=S§.push(null);
         }
         while(this.§ p§.length < this.§=S§.length)
         {
            this.§ p§.push(null);
         }
      }
      
      private function §3!b§(param1:MouseEvent) : void
      {
         this.scroll(-this.§>u§.§1!a§);
      }
      
      private function §>`§(param1:MouseEvent) : void
      {
         this.scroll(this.§>u§.§1!a§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§>u§.scroll(param1);
            this.mAvatarItemsScroller2.scroll(param1);
            this.§@!&§();
         }
      }
      
      private function §@!&§() : void
      {
         var _loc1_:* = this.§>u§.offset != 0;
         var _loc2_:* = this.§>u§.offset != this.§>u§.data.length - this.§>u§.§1!a§;
         this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.visible = _loc1_;
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.visible = _loc2_;
      }
      
      private function onBuyItemClicked(param1:§=!x§) : void
      {
         this.§?!m§(param1.§5!c§);
      }
      
      private function §?!m§(param1:String) : void
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
      }
      
      public function §;^§(param1:Array = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Item = null;
         if(§90§)
         {
            return;
         }
         §90§ = param1;
         for each(_loc2_ in §90§)
         {
            _loc3_ = §3!D§.§ @§(String(_loc2_.id));
            if(_loc3_ != null)
            {
               this.§]"6§.getItemByName("Inventory_Item_" + _loc3_.§;!Y§);
            }
         }
         this.§@!D§();
      }
      
      public function dispose() : void
      {
         this.mClip.Container_Popup.Container_Avatars.removeChild(this.§>u§.scrollerSprite);
         this.§>u§.dispose();
      }
   }
}
