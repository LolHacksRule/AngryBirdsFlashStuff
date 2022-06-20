package §9"0§
{
   import §&"J§.§`]§;
   import §6V§.§^">§;
   import §7",§.§!#q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §+#%§ extends §<0§
   {
      
      protected static const §]!e§:int = 0;
      
      protected static const §+#o§:int = 1;
      
      protected static const §8#[§:Array = ["ButtonLargeDefault","ButtonLargeOnetime"];
      
      private static const §!"!§:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §8§:int = 10;
       
      
      protected var §8!4§:int;
      
      private var §,#b§:TextFormat;
      
      public function §+#%§(param1:int, param2:§!#q§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5);
         this.§,#b§ = new TextFormat(null,24,null);
         this.§,#b§.align = "center";
         init();
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      override protected function setDiscountTag() : void
      {
         var _loc1_:MovieClip = §@"<§["DiscountTag3"];
         if(§9#A§.freeQuantityInPercentage() > 0)
         {
            _loc1_.offer.text = "(" + §9#A§.freeQuantityAsPercentage() + " free)";
            _loc1_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
         }
      }
      
      override protected function setMainIcon() : void
      {
         §@"<§["IconBestValue"].visible = §9#A§.bestValue;
         §@"<§["IconPopular"].visible = §9#A§.popular;
         §@"<§["IconOneTimeOffer"].visible = §9#A§.specialOffer;
      }
      
      override protected function setBCIcon() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §@"<§["BirdCoin" + _loc1_].visible = _loc1_ == §2f§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         this.§8!4§ = §]!e§;
         var _loc1_:int = 0;
         while(_loc1_ < §8#[§.length)
         {
            §@"<§[§8#[§[_loc1_]].visible = false;
            _loc1_++;
         }
         if(§9#A§.specialOffer)
         {
            this.§8!4§ = §+#o§;
         }
         §@"<§[§8#[§[this.§8!4§]].visible = true;
         §@"<§[§8#[§[this.§8!4§]].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 5)
         {
            §@"<§["CoinAmount" + _loc2_].visible = false;
            _loc2_++;
         }
         _loc1_ = §@"<§["CoinAmount" + §2f§];
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §^">§.§?"Y§(§9#A§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         §@"<§.TagMostPopular.visible = §9#A§.popular;
         §@"<§.TagBestValue.visible = §9#A§.bestValue;
         §@"<§.TagOneTimeOffer.visible = §9#A§.specialOffer;
      }
      
      override protected function setPrice() : void
      {
         var _loc1_:Sprite = §@"<§["saleTag"];
         _loc1_.visible = false;
         if(§9#A§.campaignPrice > 0)
         {
            _loc1_.visible = true;
            (_loc1_.getChildByName("Percentage") as TextField).text = "-" + §9#A§.campaignSalePercentage + "%";
            §@"<§.addChild(_loc1_);
            §@"<§.cost.text = dataModel.currencyModel.getPriceTag(§9#A§.campaignPrice,true,"",§;"^§);
            §@"<§.former_cost.text = dataModel.currencyModel.getPriceTag(§9#A§.price,true,"",§;"^§);
            §@"<§.Crossover_Line.visible = true;
         }
         else
         {
            §@"<§.cost.text = dataModel.currencyModel.getPriceTag(§9#A§.price,true,"",§;"^§);
            §@"<§.former_cost.text = "";
            §@"<§.Crossover_Line.visible = false;
         }
         if(§@"<§.cost.text.length > §8§)
         {
            §@"<§.cost.setTextFormat(this.§,#b§);
         }
      }
      
      override protected function setNewTag() : void
      {
         var _loc1_:Sprite = §@"<§.newTag;
         _loc1_.visible = §`]§(AngryBirdsBase.singleton.dataModel).§!"z§.indexOf(§3!g§ + §9#A§.price) > -1;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         §@"<§[§8#[§[this.§8!4§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §@"<§[§8#[§[this.§8!4§]].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §@"<§[§8#[§[this.§8!4§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §@"<§[§8#[§[this.§8!4§]].gotoAndStop("Active_Up_Default");
      }
   }
}
