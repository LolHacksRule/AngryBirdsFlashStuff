package §7#+§
{
   import §""d§.§2"8§;
   import §,"v§.§@§;
   import §;q§.§ true§;
   import §`"8§.§-!w§;
   import §`"8§.§6v§;
   import flash.display.MovieClip;
   
   public class §5!b§
   {
      
      private static const §]"#§:int = 261;
       
      
      public var view:§2"8§;
      
      private var §?§:String;
      
      private var §@J§:§ true§;
      
      private var §#G§:Number;
      
      private var §`"J§:§6v§;
      
      public function §5!b§(param1:§2"8§, param2:String, param3:§ true§, param4:int)
      {
         super();
         this.view = param1;
         this.§?§ = this.dataID;
         this.§@J§ = param3;
         this.§#G§ = param4;
         param1.mClip.purchaseComplete.gotoAndStop(1);
         param1.mClip.purchaseComplete.mouseChildren = false;
         param1.mClip.purchaseComplete.mouseEnabled = false;
         this.§`"J§ = §-!w§(§;"@§.singleton.dataModel).§9"1§;
         this.refresh();
      }
      
      public function set dataID(param1:String) : void
      {
         this.§?§ = param1;
         this.refresh();
      }
      
      public function get dataID() : String
      {
         return this.§?§;
      }
      
      public function set prices(param1:§ true§) : void
      {
         this.§@J§ = param1;
         this.refresh();
      }
      
      public function get prices() : § true§
      {
         return this.§@J§;
      }
      
      public function set singlePrice(param1:Number) : void
      {
         this.§#G§ = param1;
         this.refresh();
      }
      
      public function §&!y§() : void
      {
         this.view.mClip.purchaseComplete.gotoAndPlay(1);
         §@§.§=Y§("black_shop_purchase");
      }
      
      public function §<"A§() : void
      {
         this.view.mClip.purchaseComplete.gotoAndStop(§]"#§);
      }
      
      protected function §!!%§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      protected function refresh() : void
      {
         var offerAmount:int = 0;
         if(this.§?§)
         {
            try
            {
               MovieClip(this.view.mClip.icon).gotoAndStop(this.§?§.toLowerCase());
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
         if(this.§@J§)
         {
            this.view.mClip.title.htmlText = this.§!!%§("x" + this.§`"J§.§";§(this.§#G§,this.§@J§));
            this.view.mClip.cost.htmlText = this.§!!%§(this.§@J§.price.toString());
            offerAmount = this.§`"J§.§ var§(this.§#G§,this.§@J§);
            this.view.mClip.offer.htmlText = this.§!!%§(offerAmount == 0 ? "" : "+ " + offerAmount + " " + §;"@§.singleton.§!# §.getLocalizedString("starcoin_free"));
            if(this.§@J§.§`"p§)
            {
               this.view.mClip.saleStamp.salePercentage.text = "-" + this.§`"J§.§="K§(this.§@J§) + "%";
               this.view.mClip.saleOldPrice.priceField.text = this.§@J§.normalPrice;
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
