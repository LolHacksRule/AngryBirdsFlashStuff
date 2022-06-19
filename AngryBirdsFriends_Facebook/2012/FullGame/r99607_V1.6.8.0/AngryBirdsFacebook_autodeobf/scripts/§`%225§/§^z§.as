package §`"5§
{
   import §+I§.§`!o§;
   import §2b§.§^m§;
   import §8!-§.Item;
   import §<m§.§,0§;
   import §["@§.§["%§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §^z§ extends §,0§
   {
       
      
      private var §,!`§:MovieClip;
      
      private var §=!§:SimpleButton;
      
      private var §null§:TextField;
      
      public function §^z§()
      {
         super();
         this.§,!`§ = new §#!J§.§1!Y§("ShopItemRendererAsset")();
         addChild(this.§,!`§);
         this.§=!§ = this.§,!`§.btnShop;
         this.§null§ = this.§,!`§.TextField;
         this.§,!`§.btnShop.addEventListener(MouseEvent.CLICK,this.§^!+§);
      }
      
      private function §^!+§(param1:MouseEvent) : void
      {
         if(§ 9§ && § 9§.id)
         {
            dispatchEvent(new §^m§(§^m§.§&!8§,§ 9§.id,true));
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
         if(§ 9§)
         {
            success = false;
            try
            {
               this.§,!`§.gotoAndStop("Unknown");
               success = true;
            }
            catch(e:Error)
            {
            }
            item = §["%§.§3U§(String(§ 9§.id));
            if(item != null)
            {
               this.§,!`§.gotoAndStop("Empty");
               while(this.§,!`§.numChildren > 0)
               {
                  this.§,!`§.removeChildAt(0);
               }
               clip = item.§,!J§();
               clip.scaleX = 0.65;
               clip.scaleY = 0.65;
               clip.y += 25;
               clip.x += 50;
               this.§,!`§.addChild(clip);
               this.§,!`§.addChild(this.§=!§);
               this.§,!`§.addChild(this.§null§);
               this.§null§.text = item.mName;
            }
            this.§,!`§.SaleTag.visible = false;
            if(§ 9§.prices)
            {
               for each(price in § 9§.prices)
               {
                  if(price.cp)
                  {
                     this.§,!`§.SaleTag.visible = true;
                  }
               }
            }
            switch(§ 9§.id)
            {
               case §?Q§.§'!O§:
                  this.§,!`§.gotoAndStop(§?Q§.§'!O§);
                  this.§,!`§.TextField.text = §`!o§.§=!M§;
                  break;
               case §?Q§.§7C§:
                  this.§,!`§.gotoAndStop(§?Q§.§7C§);
                  this.§,!`§.TextField.text = §`!o§.POWERUP_BOMB;
                  break;
               case §?Q§.§^=§:
                  this.§,!`§.gotoAndStop(§?Q§.§^=§);
                  this.§,!`§.TextField.text = §`!o§.§@!j§;
                  break;
               case §?Q§.§?a§:
                  this.§,!`§.gotoAndStop(§?Q§.§?a§);
                  this.§,!`§.TextField.text = §`!o§.§7!D§;
                  break;
               case §?Q§.§;"1§:
                  this.§,!`§.gotoAndStop(§?Q§.§;"1§);
                  this.§,!`§.TextField.text = §`!o§.§?!5§;
                  break;
               case §?Q§.MIGHTY_EAGLE:
                  this.§,!`§.gotoAndStop(§?Q§.MIGHTY_EAGLE);
                  this.§,!`§.TextField.text = §`!o§.§[E§;
                  break;
               case §?Q§.§<",§:
                  this.§,!`§.gotoAndStop(§?Q§.§<",§);
                  this.§,!`§.TextField.text = §`!o§.§<",§;
            }
            if(this.§,!`§.currentFrameLabel == "Unknown")
            {
               while(this.§,!`§.numChildren > 0)
               {
                  this.§,!`§.removeChildAt(0);
               }
            }
            this.§6`§();
         }
      }
      
      protected function §6`§() : void
      {
      }
      
      override public function get width() : Number
      {
         return 80;
      }
   }
}
