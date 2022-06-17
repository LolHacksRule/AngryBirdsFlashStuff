package §%4§
{
   import §!!?§.§<#a§;
   import §+#B§.§""D§;
   import §]"'§.§@"%§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §7#'§ extends §]#X§
   {
      
      protected static const §#r§:int = 0;
      
      protected static const §-!Z§:int = 1;
      
      protected static const §]j§:Array = ["ButtonLargeDefault","ButtonLargeOnetime"];
      
      private static const §-#]§:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §"!S§:int = 10;
       
      
      protected var §<n§:int;
      
      private var §-$,§:TextFormat;
      
      public function §7#'§(param1:int, param2:§<#a§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5);
         this.§-$,§ = new TextFormat(null,24,null);
         this.§-$,§.align = "center";
         init();
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      override protected function setDiscountTag() : void
      {
         var _loc1_:MovieClip = §>"k§["DiscountTag3"];
         if(§^"v§.freeQuantityInPercentage() > 0)
         {
            _loc1_.offer.text = "(" + §^"v§.freeQuantityAsPercentage() + " free)";
            _loc1_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
         }
      }
      
      override protected function setMainIcon() : void
      {
         §>"k§["IconBestValue"].visible = §^"v§.bestValue;
         §>"k§["IconPopular"].visible = §^"v§.popular;
         §>"k§["IconOneTimeOffer"].visible = §^"v§.specialOffer;
      }
      
      override protected function setBCIcon() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §>"k§["BirdCoin" + _loc1_].visible = _loc1_ == §&#&§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         this.§<n§ = §#r§;
         var _loc1_:int = 0;
         while(_loc1_ < §]j§.length)
         {
            §>"k§[§]j§[_loc1_]].visible = false;
            _loc1_++;
         }
         if(§^"v§.specialOffer)
         {
            this.§<n§ = §-!Z§;
         }
         §>"k§[§]j§[this.§<n§]].visible = true;
         §>"k§[§]j§[this.§<n§]].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 5)
         {
            §>"k§["CoinAmount" + _loc2_].visible = false;
            _loc2_++;
         }
         _loc1_ = §>"k§["CoinAmount" + §&#&§];
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §""D§.§"k§(§^"v§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         §>"k§.TagMostPopular.visible = §^"v§.popular;
         §>"k§.TagBestValue.visible = §^"v§.bestValue;
         §>"k§.TagOneTimeOffer.visible = §^"v§.specialOffer;
      }
      
      override protected function setPrice() : void
      {
         var _loc1_:Sprite = §>"k§["saleTag"];
         _loc1_.visible = false;
         if(§^"v§.campaignPrice > 0)
         {
            _loc1_.visible = true;
            (_loc1_.getChildByName("Percentage") as TextField).text = "-" + §^"v§.campaignSalePercentage + "%";
            §>"k§.addChild(_loc1_);
            §>"k§.cost.text = dataModel.currencyModel.getPriceTag(§^"v§.campaignPrice,true,"",§+0§);
            §>"k§.former_cost.text = dataModel.currencyModel.getPriceTag(§^"v§.price,true,"",§+0§);
            §>"k§.Crossover_Line.visible = true;
         }
         else
         {
            §>"k§.cost.text = dataModel.currencyModel.getPriceTag(§^"v§.price,true,"",§+0§);
            §>"k§.former_cost.text = "";
            §>"k§.Crossover_Line.visible = false;
         }
         if(§>"k§.cost.text.length > §"!S§)
         {
            §>"k§.cost.setTextFormat(this.§-$,§);
         }
      }
      
      override protected function setNewTag() : void
      {
         var _loc1_:Sprite = §>"k§.newTag;
         _loc1_.visible = §@"%§(AngryBirdsBase.singleton.dataModel).§+d§.indexOf(§?!l§ + §^"v§.price) > -1;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         §>"k§[§]j§[this.§<n§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §>"k§[§]j§[this.§<n§]].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §>"k§[§]j§[this.§<n§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §>"k§[§]j§[this.§<n§]].gotoAndStop("Active_Up_Default");
      }
   }
}
