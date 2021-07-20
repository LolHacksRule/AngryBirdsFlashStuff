package §<9§
{
   import § !i§.§=?§;
   import §&!"§.Popup;
   import §=E§.§="$§;
   import §?V§.§6!P§;
   import §`!?§.Item;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §6">§
   {
      
      public static const §`l§:Number = 600;
      
      public static const §0X§:int = 4;
      
      public static var §`!J§:Array;
      
      private static var §%g§:String;
       
      
      private var §%!2§:§="$§;
      
      private var mAvatarItemsScroller2:§="$§;
      
      private var mClip:MovieClip;
      
      private var §71§:Popup;
      
      private var §#v§:Boolean = false;
      
      private var §1! §:Array;
      
      private var §!!i§:Array;
      
      public function §6">§(param1:Popup)
      {
         this.§1! § = [];
         this.§!!i§ = [];
         super();
         this.§71§ = param1;
         this.mClip = param1.mClip;
      }
      
      public function §>!-§() : void
      {
         if(this.§#v§)
         {
            return;
         }
         this.§7g§();
         this.§#v§ = true;
         this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.addEventListener(MouseEvent.CLICK,this.§[q§);
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.addEventListener(MouseEvent.CLICK,this.§ a§);
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + §`l§ + 30;
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y;
         this.§%!2§ = new §="$§(§`l§,200,this.§1! § || [],§!!u§,50);
         this.§%!2§.scrollerSprite.addEventListener(§6!P§.§#!"§,this.onBuyItemClicked);
         this.§%!2§.scrollerSprite.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + 30;
         this.§%!2§.scrollerSprite.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y - 40;
         this.mAvatarItemsScroller2 = new §="$§(§`l§,200,this.§!!i§ || [],§!!u§,50);
         this.mAvatarItemsScroller2.scrollerSprite.addEventListener(§6!P§.§#!"§,this.onBuyItemClicked);
         this.mAvatarItemsScroller2.scrollerSprite.x = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.x + 30;
         this.mAvatarItemsScroller2.scrollerSprite.y = this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.y - 40 + 100;
         this.§@$§();
         this.§%!2§.scrollerSprite.visible = true;
         this.mClip.Container_Popup.Container_Avatars.addChild(this.§%!2§.scrollerSprite);
         this.mClip.Container_Popup.Container_Avatars.addChild(this.mAvatarItemsScroller2.scrollerSprite);
      }
      
      private function §7g§() : void
      {
         var _loc1_:Array = §`!J§.concat();
         while(_loc1_.length > 0)
         {
            this.§1! § = this.§1! §.concat(_loc1_.splice(0,§0X§));
            if(_loc1_.length > 0)
            {
               this.§!!i§ = this.§!!i§.concat(_loc1_.splice(0,§0X§));
            }
         }
         while(this.§1! §.length % §0X§ != 0)
         {
            this.§1! §.push(null);
         }
         while(this.§!!i§.length < this.§1! §.length)
         {
            this.§!!i§.push(null);
         }
      }
      
      private function §[q§(param1:MouseEvent) : void
      {
         this.scroll(-this.§%!2§.§-!v§);
      }
      
      private function § a§(param1:MouseEvent) : void
      {
         this.scroll(this.§%!2§.§-!v§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§%!2§.scroll(param1);
            this.mAvatarItemsScroller2.scroll(param1);
            this.§@$§();
         }
      }
      
      private function §@$§() : void
      {
         var _loc1_:* = this.§%!2§.offset != 0;
         var _loc2_:* = this.§%!2§.offset != this.§%!2§.data.length - this.§%!2§.§-!v§;
         this.mClip.Container_Popup.Container_Avatars.btnLeftAvatar.visible = _loc1_;
         this.mClip.Container_Popup.Container_Avatars.btnRightAvatar.visible = _loc2_;
      }
      
      private function onBuyItemClicked(param1:§6!P§) : void
      {
         this.§?3§(param1.§"i§);
      }
      
      private function §?3§(param1:String) : void
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
      }
      
      public function §0"?§(param1:Array = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Item = null;
         if(§`!J§)
         {
            return;
         }
         §`!J§ = param1;
         for each(_loc2_ in §`!J§)
         {
            _loc3_ = §=?§.§7[§(String(_loc2_.id));
            if(_loc3_ != null)
            {
               this.§71§.getItemByName("Inventory_Item_" + _loc3_.§3!9§);
            }
         }
         this.§>!-§();
      }
      
      public function dispose() : void
      {
         this.mClip.Container_Popup.Container_Avatars.removeChild(this.§%!2§.scrollerSprite);
         this.§%!2§.dispose();
      }
   }
}
