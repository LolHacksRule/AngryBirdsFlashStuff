package § each§
{
   import §!K§.Item;
   import §-!+§.§;!B§;
   import §0p§.§3!D§;
   import §3!7§.§2G§;
   import §3!7§.§>,§;
   import §]!A§.§&A§;
   import §^!r§.§=!x§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §+z§ extends §;!B§
   {
       
      
      private var §#!U§:MovieClip;
      
      private var §9m§:SimpleButton;
      
      private var §"!N§:TextField;
      
      public function §+z§()
      {
         super();
         this.§#!U§ = new §8B§.§6"C§("ShopItemRendererAsset")();
         addChild(this.§#!U§);
         this.§9m§ = this.§#!U§.btnShop;
         this.§"!N§ = this.§#!U§.TextField;
         this.§#!U§.btnShop.addEventListener(MouseEvent.CLICK,this.§?!5§);
      }
      
      private function §?!5§(param1:MouseEvent) : void
      {
         if(§>">§ && §>">§.id)
         {
            dispatchEvent(new §=!x§(§=!x§.§!m§,§>">§.id,true));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var success:Boolean = false;
         var item:Item = null;
         var clip:MovieClip = null;
         var price:Object = null;
         var value:Object = param1;
         super.data = value;
         visible = data != null;
         if(§>">§)
         {
            success = false;
            try
            {
               this.§#!U§.gotoAndStop("Unknown");
               success = true;
            }
            catch(e:Error)
            {
            }
            item = §3!D§.§ @§(String(§>">§.id));
            if(item != null)
            {
               this.§#!U§.gotoAndStop("Empty");
               while(this.§#!U§.numChildren > 0)
               {
                  this.§#!U§.removeChildAt(0);
               }
               clip = item.§@!j§();
               clip.scaleX = 0.65;
               clip.scaleY = 0.65;
               clip.y += 25;
               clip.x += 50;
               this.§#!U§.addChild(clip);
               this.§#!U§.addChild(this.§9m§);
               this.§#!U§.addChild(this.§"!N§);
               this.§"!N§.text = item.mName;
            }
            this.§#!U§.SaleTag.visible = false;
            if(§>">§.prices)
            {
               for each(price in §>">§.prices)
               {
                  if(price.cp)
                  {
                     this.§#!U§.SaleTag.visible = true;
                  }
               }
            }
            this.§>![§(§>">§.id);
            switch(§>">§.id)
            {
               case §>v§.§`!M§:
                  this.§#!U§.gotoAndStop(§>v§.§`!M§);
                  this.§#!U§.TextField.text = §&A§.§`!M§;
            }
            if(this.§#!U§.currentFrameLabel == "Unknown")
            {
               while(this.§#!U§.numChildren > 0)
               {
                  this.§#!U§.removeChildAt(0);
               }
            }
            this.§?$§();
         }
      }
      
      private function §>![§(param1:String) : void
      {
         var _loc2_:§2G§ = §>,§.§'!i§(param1);
         if(_loc2_)
         {
            this.§#!U§.gotoAndStop(_loc2_.§]6§);
            this.§#!U§.TextField.text = _loc2_.§7!5§;
         }
      }
      
      protected function §?$§() : void
      {
      }
      
      override public function get width() : Number
      {
         return 80;
      }
   }
}
