package §4#V§
{
   import §&"`§.§##P§;
   import §2G§.§#"8§;
   import §`7§.§!"b§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §9h§ extends §7w§
   {
      
      protected static const §5E§:int = 0;
      
      protected static const §^"C§:int = 1;
      
      protected static const §!!^§:Array = ["ButtonLargeDefault","ButtonLargeOnetime"];
      
      private static const §#$7§:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const § #x§:int = 10;
       
      
      protected var §@"p§:int;
      
      private var §7#d§:TextFormat;
      
      public function §9h§(param1:int, param2:§##P§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5);
         this.§7#d§ = new TextFormat(null,24,null);
         this.§7#d§.align = "center";
         init();
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      override protected function setDiscountTag() : void
      {
         var _loc1_:MovieClip = §;!V§["DiscountTag3"];
         if(§+$'§.freeQuantityInPercentage() > 0)
         {
            _loc1_.offer.text = "(" + §+$'§.freeQuantityAsPercentage() + " free)";
            _loc1_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
         }
      }
      
      override protected function setMainIcon() : void
      {
         §;!V§["IconBestValue"].visible = §+$'§.bestValue;
         §;!V§["IconPopular"].visible = §+$'§.popular;
         §;!V§["IconOneTimeOffer"].visible = §+$'§.specialOffer;
      }
      
      override protected function setBCIcon() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §;!V§["BirdCoin" + _loc1_].visible = _loc1_ == §1#1§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         this.§@"p§ = §5E§;
         var _loc1_:int = 0;
         while(_loc1_ < §!!^§.length)
         {
            §;!V§[§!!^§[_loc1_]].visible = false;
            _loc1_++;
         }
         if(§+$'§.specialOffer)
         {
            this.§@"p§ = §^"C§;
         }
         §;!V§[§!!^§[this.§@"p§]].visible = true;
         §;!V§[§!!^§[this.§@"p§]].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 5)
         {
            §;!V§["CoinAmount" + _loc2_].visible = false;
            _loc2_++;
         }
         _loc1_ = §;!V§["CoinAmount" + §1#1§];
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §!"b§.§@]§(§+$'§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         §;!V§.TagMostPopular.visible = §+$'§.popular;
         §;!V§.TagBestValue.visible = §+$'§.bestValue;
         §;!V§.TagOneTimeOffer.visible = §+$'§.specialOffer;
      }
      
      override protected function setPrice() : void
      {
         var _loc1_:Sprite = §;!V§["saleTag"];
         _loc1_.visible = false;
         if(§+$'§.campaignPrice > 0)
         {
            _loc1_.visible = true;
            (_loc1_.getChildByName("Percentage") as TextField).text = "-" + §+$'§.campaignSalePercentage + "%";
            §;!V§.addChild(_loc1_);
            §;!V§.cost.text = dataModel.currencyModel.getPriceTag(§+$'§.campaignPrice,true,"",§<#+§);
            §;!V§.former_cost.text = dataModel.currencyModel.getPriceTag(§+$'§.price,true,"",§<#+§);
            §;!V§.Crossover_Line.visible = true;
         }
         else
         {
            §;!V§.cost.text = dataModel.currencyModel.getPriceTag(§+$'§.price,true,"",§<#+§);
            §;!V§.former_cost.text = "";
            §;!V§.Crossover_Line.visible = false;
         }
         if(§;!V§.cost.text.length > § #x§)
         {
            §;!V§.cost.setTextFormat(this.§7#d§);
         }
      }
      
      override protected function setNewTag() : void
      {
         var _loc1_:Sprite = §;!V§.newTag;
         _loc1_.visible = §#"8§(AngryBirdsBase.singleton.dataModel).§ $>§.indexOf(§<";§ + §+$'§.price) > -1;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         §;!V§[§!!^§[this.§@"p§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §;!V§[§!!^§[this.§@"p§]].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §;!V§[§!!^§[this.§@"p§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §;!V§[§!!^§[this.§@"p§]].gotoAndStop("Active_Up_Default");
      }
   }
}
