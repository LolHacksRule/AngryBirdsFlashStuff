package §'y§
{
   import §+D§.§^"m§;
   import §,"N§.§""t§;
   import §,"N§.§@#B§;
   import §7K§.§,T§;
   import §="2§.§?!r§;
   import flash.display.MovieClip;
   
   public class §7!,§
   {
      
      private static const §^"u§:int = 261;
       
      
      public var view:§^"m§;
      
      private var §]!=§:String;
      
      private var §1>§:§,T§;
      
      private var §?!v§:Number;
      
      private var §2"O§:§""t§;
      
      public function §7!,§(param1:§^"m§, param2:String, param3:§,T§, param4:int)
      {
         super();
         this.view = param1;
         this.§]!=§ = this.dataID;
         this.§1>§ = param3;
         this.§?!v§ = param4;
         param1.mClip.purchaseComplete.gotoAndStop(1);
         param1.mClip.purchaseComplete.mouseChildren = false;
         param1.mClip.purchaseComplete.mouseEnabled = false;
         this.§2"O§ = §@#B§(§4#;§.singleton.dataModel).§1!f§;
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§]!=§ = param1;
         this.refresh();
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set prices(param1:§,T§) : void
      {
         this.§1>§ = param1;
         this.refresh();
      }
      
      public function get prices() : §,T§
      {
         return this.§1>§;
      }
      
      public function set singlePrice(param1:Number) : void
      {
         this.§?!v§ = param1;
         this.refresh();
      }
      
      public function §3"&§() : void
      {
         this.view.mClip.purchaseComplete.gotoAndPlay(1);
         §?!r§.§"#_§("black_shop_purchase");
      }
      
      public function §&5§() : void
      {
         this.view.mClip.purchaseComplete.gotoAndStop(§^"u§);
      }
      
      protected function §?"6§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      protected function refresh() : void
      {
         var offerAmount:int = 0;
         if(this.§]!=§)
         {
            try
            {
               MovieClip(this.view.mClip.icon).gotoAndStop(this.§]!=§.toLowerCase());
            }
            catch(e:Error)
            {
               MovieClip(view.mClip.icon).gotoAndStop(1);
            }
         }
         else
         {
            MovieClip(this.view.mClip.icon).gotoAndStop(1);
         }
         if(this.§1>§)
         {
            this.view.mClip.title.htmlText = this.§?"6§("x" + this.§2"O§.§;C§(this.§?!v§,this.§1>§));
            this.view.mClip.cost.htmlText = this.§?"6§(this.§1>§.price.toString());
            offerAmount = this.§2"O§.§`§(this.§?!v§,this.§1>§);
            this.view.mClip.offer.htmlText = this.§?"6§(offerAmount == 0 ? "" : "+ " + offerAmount + " " + §4#;§.singleton.§4#,§.getLocalizedString("starcoin_free"));
            if(this.§1>§.§%D§)
            {
               this.view.mClip.saleStamp.salePercentage.text = "-" + this.§2"O§.§<# §(this.§1>§) + "%";
               this.view.mClip.saleOldPrice.priceField.text = this.§1>§.normalPrice;
               this.view.mClip.saleStamp.visible = true;
               this.view.mClip.saleOldPrice.visible = true;
            }
            else
            {
               this.view.mClip.saleStamp.visible = false;
               this.view.mClip.saleOldPrice.visible = false;
            }
         }
         else
         {
            this.view.mClip.title.text = "";
            this.view.mClip.cost.text = "";
            this.view.mClip.offer.text = "";
            this.view.mClip.saleStamp.visible = false;
            this.view.mClip.saleOldPrice.visible = false;
         }
      }
   }
}
