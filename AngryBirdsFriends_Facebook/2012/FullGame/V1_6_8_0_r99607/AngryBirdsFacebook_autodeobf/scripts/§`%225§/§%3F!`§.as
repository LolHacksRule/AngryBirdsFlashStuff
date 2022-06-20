package §`"5§
{
   import §2b§.§^m§;
   import §7N§.Popup;
   import §<m§.§9"1§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §?!`§
   {
      
      public static const §@!>§:Number = 600;
      
      public static var §<"2§:Array;
       
      
      private var §[0§:§9"1§;
      
      private var mClip:MovieClip;
      
      private var §do§:Popup;
      
      private var §[B§:Boolean = false;
      
      public function §?!`§(param1:Popup)
      {
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
         this.§[B§ = true;
         this.mClip.Container_Popup.Container_LevelPacks.btnLeft.addEventListener(MouseEvent.CLICK,this.§1!d§);
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.addEventListener(MouseEvent.CLICK,this.§+s§);
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.x = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.x + §@!>§ + 30;
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.y = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.y;
         this.§[0§ = new §9"1§(§@!>§,200,§<"2§ || [],§^z§,5);
         this.§[0§.scrollerSprite.addEventListener(§^m§.§&!8§,this.onBuyItemClicked);
         this.§[0§.scrollerSprite.x = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.x + 30;
         this.§[0§.scrollerSprite.y = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.y - 40;
         this.§=!U§();
         this.mClip.Container_Popup.Container_LevelPacks.addChild(this.§[0§.scrollerSprite);
         this.§[0§.scrollerSprite.visible = true;
      }
      
      private function §1!d§(param1:MouseEvent) : void
      {
         this.scroll(-this.§[0§.§?3§);
      }
      
      private function §+s§(param1:MouseEvent) : void
      {
         this.scroll(this.§[0§.§?3§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§[0§.scroll(param1);
            this.§=!U§();
         }
      }
      
      private function §=!U§() : void
      {
         var _loc1_:* = this.§[0§.offset != 0;
         var _loc2_:* = this.§[0§.offset != this.§[0§.data.length - this.§[0§.§?3§;
         this.mClip.Container_Popup.Container_LevelPacks.btnLeft.visible = _loc1_;
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.visible = _loc2_;
      }
      
      private function onBuyItemClicked(param1:§^m§) : void
      {
         this.§`J§(param1.§8"?§);
      }
      
      public function §&!^§(param1:Array) : void
      {
         §<"2§ = param1;
         this.§[!G§();
      }
      
      private function §`J§(param1:String) : void
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
      }
      
      public function dispose() : void
      {
         this.mClip.Container_Popup.Container_LevelPacks.removeChild(this.§[0§.scrollerSprite);
         this.§[0§.dispose();
      }
   }
}
