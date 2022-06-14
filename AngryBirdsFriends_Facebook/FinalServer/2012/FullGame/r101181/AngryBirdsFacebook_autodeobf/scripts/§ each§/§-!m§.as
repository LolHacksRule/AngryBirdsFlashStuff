package § each§
{
   import §'!s§.Popup;
   import §-!+§.§<i§;
   import §^!r§.§=!x§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §-!m§
   {
      
      public static const §4!-§:Number = 600;
      
      public static var §>!l§:Array;
       
      
      private var §?!?§:§<i§;
      
      private var mClip:MovieClip;
      
      private var §]"6§:Popup;
      
      private var §!"!§:Boolean = false;
      
      public function §-!m§(param1:Popup)
      {
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
         this.§!"!§ = true;
         this.mClip.Container_Popup.Container_LevelPacks.btnLeft.addEventListener(MouseEvent.CLICK,this.§3!b§);
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.addEventListener(MouseEvent.CLICK,this.§>`§);
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.x = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.x + §4!-§ + 30;
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.y = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.y;
         this.§?!?§ = new §<i§(§4!-§,200,§>!l§ || [],§+z§,5);
         this.§?!?§.scrollerSprite.addEventListener(§=!x§.§!m§,this.onBuyItemClicked);
         this.§?!?§.scrollerSprite.x = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.x + 30;
         this.§?!?§.scrollerSprite.y = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.y - 40;
         this.§@!&§();
         this.mClip.Container_Popup.Container_LevelPacks.addChild(this.§?!?§.scrollerSprite);
         this.§?!?§.scrollerSprite.visible = true;
      }
      
      private function §3!b§(param1:MouseEvent) : void
      {
         this.scroll(-this.§?!?§.§1!a§);
      }
      
      private function §>`§(param1:MouseEvent) : void
      {
         this.scroll(this.§?!?§.§1!a§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§?!?§.scroll(param1);
            this.§@!&§();
         }
      }
      
      private function §@!&§() : void
      {
         var _loc1_:* = this.§?!?§.offset != 0;
         var _loc2_:* = this.§?!?§.offset != this.§?!?§.data.length - this.§?!?§.§1!a§;
         this.mClip.Container_Popup.Container_LevelPacks.btnLeft.visible = _loc1_;
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.visible = _loc2_;
      }
      
      private function onBuyItemClicked(param1:§=!x§) : void
      {
         this.§?!m§(param1.§5!c§);
      }
      
      public function §]!s§(param1:Array) : void
      {
         §>!l§ = param1;
         this.§@!D§();
      }
      
      private function §?!m§(param1:String) : void
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
      }
      
      public function dispose() : void
      {
         this.mClip.Container_Popup.Container_LevelPacks.removeChild(this.§?!?§.scrollerSprite);
         this.§?!?§.dispose();
      }
   }
}
