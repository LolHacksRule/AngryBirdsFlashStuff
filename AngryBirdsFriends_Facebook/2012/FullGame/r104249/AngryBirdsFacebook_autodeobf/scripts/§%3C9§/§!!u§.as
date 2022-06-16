package §<9§
{
   import § !i§.§=?§;
   import §2!6§.§ !h§;
   import §2!6§.§?G§;
   import §=E§.§0"1§;
   import §?!z§.§6"@§;
   import §?V§.§6!P§;
   import §`!?§.Item;
   import com.rovio.assets.§>"5§;
   import §each §.§@x§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §!!u§ extends §0"1§
   {
       
      
      private var §>!8§:MovieClip;
      
      private var §,%§:SimpleButton;
      
      private var §^!Q§:TextField;
      
      public function §!!u§()
      {
         super();
         this.§>!8§ = new §>"5§.§6s§("ShopItemRendererAsset")();
         addChild(this.§>!8§);
         this.§,%§ = this.§>!8§.btnShop;
         this.§^!Q§ = this.§>!8§.TextField;
         this.§>!8§.btnShop.addEventListener(MouseEvent.CLICK,this.§1"4§);
      }
      
      private function §1"4§(param1:MouseEvent) : void
      {
         if(§=]§ && §=]§.id)
         {
            dispatchEvent(new §6!P§(§6!P§.§#!"§,§=]§.id,true));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var success:Boolean = false;
         var item:Item = null;
         var clip:MovieClip = null;
         var value:Object = param1;
         super.data = value;
         visible = data != null;
         if(§=]§)
         {
            success = false;
            try
            {
               this.§>!8§.gotoAndStop("Unknown");
               success = true;
            }
            catch(e:Error)
            {
            }
            item = §=?§.§7[§(String(§=]§.id));
            if(item != null)
            {
               this.§>!8§.gotoAndStop("Empty");
               while(this.§>!8§.numChildren > 0)
               {
                  this.§>!8§.removeChildAt(0);
               }
               clip = item.§`"8§();
               clip.scaleX = 0.65;
               clip.scaleY = 0.65;
               clip.y += 25;
               clip.x += 50;
               this.§>!8§.addChild(clip);
               this.§>!8§.addChild(this.§,%§);
               this.§>!8§.addChild(this.§^!Q§);
               this.§^!Q§.text = item.mName;
            }
            this.§>!8§.SaleTag.visible = §@x§.§11§();
            this.§>!8§.SaleText.visible = §@x§.§11§();
            this.§?%§(§=]§.id);
            switch(§=]§.id)
            {
               case § ">§.§ !V§:
                  this.§>!8§.gotoAndStop(§ ">§.§ !V§);
                  this.§>!8§.TextField.text = §6"@§.§ !V§;
            }
            if(this.§>!8§.currentFrameLabel == "Unknown")
            {
               while(this.§>!8§.numChildren > 0)
               {
                  this.§>!8§.removeChildAt(0);
               }
            }
            this.§8"?§();
         }
      }
      
      private function §?%§(param1:String) : void
      {
         var _loc2_:§?G§ = § !h§.§ "8§(param1);
         if(_loc2_)
         {
            this.§>!8§.gotoAndStop(_loc2_.§5"5§);
            this.§>!8§.TextField.text = _loc2_.§&Z§;
         }
      }
      
      protected function §8"?§() : void
      {
      }
      
      override public function get width() : Number
      {
         return 80;
      }
   }
}
