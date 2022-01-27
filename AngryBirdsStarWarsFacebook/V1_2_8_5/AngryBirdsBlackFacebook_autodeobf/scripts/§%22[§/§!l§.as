package §"[§
{
   import §9"U§.§7"1§;
   import §9"U§.§;"[§;
   import §98§.§'"M§;
   import §=Z§.§;g§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   
   public class §!l§
   {
      
      private static const §#"I§:int = 261;
       
      
      public var view:§;g§;
      
      private var §-""§:String;
      
      private var §5!Y§:§'"M§;
      
      private var §&#7§:Number;
      
      private var §]"1§:§;"[§;
      
      public function §!l§(param1:§;g§, param2:String, param3:§'"M§, param4:int)
      {
         super();
         this.view = param1;
         this.§-""§ = this.dataID;
         this.§5!Y§ = param3;
         this.§&#7§ = param4;
         param1.mClip.purchaseComplete.gotoAndStop(1);
         param1.mClip.purchaseComplete.mouseChildren = false;
         param1.mClip.purchaseComplete.mouseEnabled = false;
         this.§]"1§ = §7"1§(§4"#§.singleton.dataModel).§,!6§;
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§-""§ = param1;
         this.refresh();
      }
      
      public function get dataID() : String
      {
         return this.§-""§;
      }
      
      public function set prices(param1:§'"M§) : void
      {
         this.§5!Y§ = param1;
         this.refresh();
      }
      
      public function get prices() : §'"M§
      {
         return this.§5!Y§;
      }
      
      public function set singlePrice(param1:Number) : void
      {
         this.§&#7§ = param1;
         this.refresh();
      }
      
      public function §5"d§() : void
      {
         this.view.mClip.purchaseComplete.gotoAndPlay(1);
         §=Q§.§`!A§("black_shop_purchase");
      }
      
      public function §'"0§() : void
      {
         this.view.mClip.purchaseComplete.gotoAndStop(§#"I§);
      }
      
      protected function §>"b§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      protected function refresh() : void
      {
         var offerAmount:int = 0;
         if(this.§-""§)
         {
            try
            {
               MovieClip(this.view.mClip.icon).gotoAndStop(this.§-""§.toLowerCase());
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
         if(this.§5!Y§)
         {
            this.view.mClip.title.htmlText = this.§>"b§("x" + this.§]"1§.§=U§(this.§&#7§,this.§5!Y§));
            this.view.mClip.cost.htmlText = this.§>"b§(this.§5!Y§.price.toString());
            offerAmount = this.§]"1§.§#!I§(this.§&#7§,this.§5!Y§);
            this.view.mClip.offer.htmlText = this.§>"b§(offerAmount == 0 ? "" : "+ " + offerAmount + " " + §4"#§.singleton.§1!L§.getLocalizedString("starcoin_free"));
            if(this.§5!Y§.§4<§)
            {
               this.view.mClip.saleStamp.salePercentage.text = "-" + this.§]"1§.§!!g§(this.§5!Y§) + "%";
               this.view.mClip.saleOldPrice.priceField.text = this.§5!Y§.normalPrice;
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
