package §<9§
{
   import §&!"§.Popup;
   import §=E§.§="$§;
   import §?V§.§6!P§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §3"9§
   {
      
      public static const §`l§:Number = 600;
      
      public static var §=!I§:Array;
       
      
      private var §?! §:§="$§;
      
      private var mClip:MovieClip;
      
      private var §71§:Popup;
      
      private var §#v§:Boolean = false;
      
      public function §3"9§(param1:Popup)
      {
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
         this.§#v§ = true;
         this.mClip.Container_Popup.Container_LevelPacks.btnLeft.addEventListener(MouseEvent.CLICK,this.§[q§);
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.addEventListener(MouseEvent.CLICK,this.§ a§);
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.x = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.x + §`l§ + 30;
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.y = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.y;
         this.§?! § = new §="$§(§`l§,200,§=!I§ || [],§!!u§,5);
         this.§?! §.scrollerSprite.addEventListener(§6!P§.§#!"§,this.onBuyItemClicked);
         this.§?! §.scrollerSprite.x = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.x + 30;
         this.§?! §.scrollerSprite.y = this.mClip.Container_Popup.Container_LevelPacks.btnLeft.y - 40;
         this.§@$§();
         this.mClip.Container_Popup.Container_LevelPacks.addChild(this.§?! §.scrollerSprite);
         this.§?! §.scrollerSprite.visible = true;
      }
      
      private function §[q§(param1:MouseEvent) : void
      {
         this.scroll(-this.§?! §.§-!v§);
      }
      
      private function § a§(param1:MouseEvent) : void
      {
         this.scroll(this.§?! §.§-!v§);
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§?! §.scroll(param1);
            this.§@$§();
         }
      }
      
      private function §@$§() : void
      {
         var _loc1_:* = this.§?! §.offset != 0;
         var _loc2_:* = this.§?! §.offset != this.§?! §.data.length - this.§?! §.§-!v§;
         this.mClip.Container_Popup.Container_LevelPacks.btnLeft.visible = _loc1_;
         this.mClip.Container_Popup.Container_LevelPacks.btnRight.visible = _loc2_;
      }
      
      private function onBuyItemClicked(param1:§6!P§) : void
      {
         this.§?3§(param1.§"i§);
      }
      
      public function §#!%§(param1:Array) : void
      {
         §=!I§ = param1;
         this.§>!-§();
      }
      
      private function §?3§(param1:String) : void
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
      }
      
      public function dispose() : void
      {
         this.mClip.Container_Popup.Container_LevelPacks.removeChild(this.§?! §.scrollerSprite);
         this.§?! §.dispose();
      }
   }
}
