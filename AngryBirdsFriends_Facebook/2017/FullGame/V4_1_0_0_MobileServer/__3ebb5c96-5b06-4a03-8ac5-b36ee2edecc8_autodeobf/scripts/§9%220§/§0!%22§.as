package §9"0§
{
   import §&"J§.§`]§;
   import §6V§.§^">§;
   import §7",§.§!#q§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §0!"§ extends §<0§
   {
      
      protected static const §`?§:int = 0;
      
      protected static const §1"Y§:int = 1;
      
      protected static const §"!J§:int = 2;
      
      protected static const §]!e§:int = 3;
      
      protected static const §+#o§:int = 4;
      
      protected static const §8#[§:Array = ["ButtonBGYellowDark","ButtonBGYellowMid","ButtonBGYellowLight","ButtonBGBlue","ButtonBGSpecialOffer"];
      
      private static const §!"!§:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §8§:int = 10;
       
      
      protected var §8!4§:int;
      
      private var §,#b§:TextFormat;
      
      public function §0!"§(param1:int, param2:§!#q§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5,§!"!§);
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
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §@"<§["DiscountTag" + _loc1_].visible = false;
            _loc1_++;
         }
         if(§9#A§.freeQuantityInPercentage() > 0)
         {
            §@"<§["DiscountTag" + §2f§].offer.text = "(" + §9#A§.freeQuantityAsPercentage() + " free)";
            §@"<§["DiscountTag" + §2f§].visible = true;
         }
      }
      
      override protected function setMainIcon() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 6)
         {
            §@"<§["Icon" + _loc1_].visible = _loc1_ == §,$<§ + 1;
            if(§@"<§["Icon" + _loc1_ + "Special"])
            {
               if(§9#A§.specialOffer)
               {
                  if(_loc1_ == §,$<§ + 1)
                  {
                     §@"<§["Icon" + _loc1_ + "Special"].visible = true;
                     §@"<§["Icon" + _loc1_].visible = false;
                  }
                  else
                  {
                     §@"<§["Icon" + _loc1_ + "Special"].visible = false;
                  }
               }
               else
               {
                  §@"<§["Icon" + _loc1_ + "Special"].visible = false;
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
            §@"<§["BirdCoin" + _loc1_].visible = _loc1_ == §2f§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         this.§8!4§ = 0;
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
         else if(§,$<§ == §`?§)
         {
            this.§8!4§ = §`?§;
         }
         else if(§,$<§ == §1"Y§)
         {
            this.§8!4§ = §1"Y§;
         }
         else if(§,$<§ == §"!J§)
         {
            this.§8!4§ = §"!J§;
         }
         else
         {
            this.§8!4§ = §]!e§;
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
            §@"<§["CoinAmount" + _loc2_ + "Blue"].visible = false;
            §@"<§["CoinAmount" + _loc2_ + "Yellow"].visible = false;
            §@"<§["CoinAmount" + _loc2_ + "Green"].visible = false;
            _loc2_++;
         }
         if(§9#A§.specialOffer)
         {
            _loc1_ = §@"<§["CoinAmount" + §2f§ + "Green"];
         }
         else if(§,$<§ == §`?§ || §,$<§ == §1"Y§ || §,$<§ == §"!J§)
         {
            _loc1_ = §@"<§["CoinAmount" + §2f§ + "Yellow"];
         }
         else
         {
            _loc1_ = §@"<§["CoinAmount" + §2f§ + "Blue"];
         }
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §^">§.§?"Y§(§9#A§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         §@"<§.MovieClip_Popular.visible = §9#A§.popular;
         §@"<§.MovieClip_BestValue.visible = §9#A§.bestValue;
         §@"<§.OneTimeOfferLarge.visible = §9#A§.specialOffer;
         §@"<§.OneTimeOfferSmall.visible = false;
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
         _loc1_.visible = _loc1_.visible = §`]§(AngryBirdsBase.singleton.dataModel).§!"z§.indexOf(§3!g§ + §9#A§.price) > -1;
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
