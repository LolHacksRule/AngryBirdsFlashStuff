package §8!G§
{
   import §2E§.§,!8§;
   import §4#l§.§>"`§;
   import §>#Y§.§,#b§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §+"G§ extends §0!R§
   {
      
      protected static const §`#k§:int = 0;
      
      protected static const §5"y§:int = 1;
      
      protected static const §!G§:int = 2;
      
      protected static const § !y§:int = 3;
      
      protected static const §,1§:int = 4;
      
      protected static const §%!+§:Array = ["ButtonBGYellowDark","ButtonBGYellowMid","ButtonBGYellowLight","ButtonBGBlue","ButtonBGSpecialOffer"];
      
      private static const §&#=§:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §#"$§:int = 10;
       
      
      protected var § #[§:int;
      
      private var §8"<§:TextFormat;
      
      public function §+"G§(param1:int, param2:§>"`§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5,§&#=§);
         this.§8"<§ = new TextFormat(null,24,null);
         this.§8"<§.align = "center";
         init();
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      override protected function setDiscountTag() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §0?§["DiscountTag" + _loc1_].visible = false;
            _loc1_++;
         }
         if(§[!'§.freeQuantityInPercentage() > 0)
         {
            §0?§["DiscountTag" + §5!S§].offer.text = "(" + §[!'§.freeQuantityAsPercentage() + " free)";
            §0?§["DiscountTag" + §5!S§].visible = true;
         }
      }
      
      override protected function setMainIcon() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 6)
         {
            §0?§["Icon" + _loc1_].visible = _loc1_ == §`!g§ + 1;
            if(§0?§["Icon" + _loc1_ + "Special"])
            {
               if(§[!'§.specialOffer)
               {
                  if(_loc1_ == §`!g§ + 1)
                  {
                     §0?§["Icon" + _loc1_ + "Special"].visible = true;
                     §0?§["Icon" + _loc1_].visible = false;
                  }
                  else
                  {
                     §0?§["Icon" + _loc1_ + "Special"].visible = false;
                  }
               }
               else
               {
                  §0?§["Icon" + _loc1_ + "Special"].visible = false;
               }
            }
            _loc1_++;
         }
      }
      
      override protected function setBCIcon() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §0?§["BirdCoin" + _loc1_].visible = _loc1_ == §5!S§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         this.§ #[§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < §%!+§.length)
         {
            §0?§[§%!+§[_loc1_]].visible = false;
            _loc1_++;
         }
         if(§[!'§.specialOffer)
         {
            this.§ #[§ = §,1§;
         }
         else if(§`!g§ == §`#k§)
         {
            this.§ #[§ = §`#k§;
         }
         else if(§`!g§ == §5"y§)
         {
            this.§ #[§ = §5"y§;
         }
         else if(§`!g§ == §!G§)
         {
            this.§ #[§ = §!G§;
         }
         else
         {
            this.§ #[§ = § !y§;
         }
         §0?§[§%!+§[this.§ #[§]].visible = true;
         §0?§[§%!+§[this.§ #[§]].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 5)
         {
            §0?§["CoinAmount" + _loc2_ + "Blue"].visible = false;
            §0?§["CoinAmount" + _loc2_ + "Yellow"].visible = false;
            §0?§["CoinAmount" + _loc2_ + "Green"].visible = false;
            _loc2_++;
         }
         if(§[!'§.specialOffer)
         {
            _loc1_ = §0?§["CoinAmount" + §5!S§ + "Green"];
         }
         else if(§`!g§ == §`#k§ || §`!g§ == §5"y§ || §`!g§ == §!G§)
         {
            _loc1_ = §0?§["CoinAmount" + §5!S§ + "Yellow"];
         }
         else
         {
            _loc1_ = §0?§["CoinAmount" + §5!S§ + "Blue"];
         }
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §,!8§.§1"h§(§[!'§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         §0?§.MovieClip_Popular.visible = §[!'§.popular;
         §0?§.MovieClip_BestValue.visible = §[!'§.bestValue;
         §0?§.OneTimeOfferLarge.visible = §[!'§.specialOffer;
         §0?§.OneTimeOfferSmall.visible = false;
      }
      
      override protected function setPrice() : void
      {
         var _loc1_:Sprite = §0?§["saleTag"];
         _loc1_.visible = false;
         if(§[!'§.campaignPrice > 0)
         {
            _loc1_.visible = true;
            (_loc1_.getChildByName("Percentage") as TextField).text = "-" + §[!'§.campaignSalePercentage + "%";
            §0?§.addChild(_loc1_);
            §0?§.cost.text = dataModel.currencyModel.getPriceTag(§[!'§.campaignPrice,true,"",§6#>§);
            §0?§.former_cost.text = dataModel.currencyModel.getPriceTag(§[!'§.price,true,"",§6#>§);
            §0?§.Crossover_Line.visible = true;
         }
         else
         {
            §0?§.cost.text = dataModel.currencyModel.getPriceTag(§[!'§.price,true,"",§6#>§);
            §0?§.former_cost.text = "";
            §0?§.Crossover_Line.visible = false;
         }
         if(§0?§.cost.text.length > §#"$§)
         {
            §0?§.cost.setTextFormat(this.§8"<§);
         }
      }
      
      override protected function setNewTag() : void
      {
         var _loc1_:Sprite = §0?§.newTag;
         _loc1_.visible = _loc1_.visible = §,#b§(AngryBirdsBase.singleton.dataModel).§'$2§.indexOf(§?#d§ + §[!'§.price) > -1;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         §0?§[§%!+§[this.§ #[§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §0?§[§%!+§[this.§ #[§]].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §0?§[§%!+§[this.§ #[§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §0?§[§%!+§[this.§ #[§]].gotoAndStop("Active_Up_Default");
      }
   }
}
