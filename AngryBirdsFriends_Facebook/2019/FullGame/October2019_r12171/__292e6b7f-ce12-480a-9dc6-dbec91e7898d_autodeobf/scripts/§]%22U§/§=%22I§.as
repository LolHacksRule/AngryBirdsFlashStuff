package §]"U§
{
   import §#"4§.§6!B§;
   import §,#,§.§=#o§;
   import §`D§.§'"j§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §="I§ extends §]#e§
   {
      
      protected static const §`_§:int = 0;
      
      protected static const §;"@§:int = 1;
      
      protected static const §<!m§:int = 2;
      
      protected static const §while§:int = 3;
      
      protected static const §"!h§:int = 4;
      
      protected static const §5"L§:Array = ["ButtonBGYellowDark","ButtonBGYellowMid","ButtonBGYellowLight","ButtonBGBlue","ButtonBGSpecialOffer"];
      
      private static const §0"+§:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §[#S§:int = 10;
       
      
      protected var §]!c§:int;
      
      private var §"#U§:TextFormat;
      
      public function §="I§(param1:int, param2:§'"j§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5,§0"+§);
         this.§"#U§ = new TextFormat(null,24,null);
         this.§"#U§.align = "center";
         init();
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      override protected function setDiscountTag() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §1!]§["DiscountTag" + _loc1_].visible = false;
            _loc1_++;
         }
         if(§`!Q§.freeQuantityInPercentage() > 0)
         {
            §1!]§["DiscountTag" + §4""§].offer.text = "(" + §`!Q§.freeQuantityAsPercentage() + " free)";
            §1!]§["DiscountTag" + §4""§].visible = true;
         }
      }
      
      override protected function setMainIcon() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 6)
         {
            §1!]§["Icon" + _loc1_].visible = _loc1_ == §`!x§ + 1;
            if(§1!]§["Icon" + _loc1_ + "Special"])
            {
               if(§`!Q§.specialOffer)
               {
                  if(_loc1_ == §`!x§ + 1)
                  {
                     §1!]§["Icon" + _loc1_ + "Special"].visible = true;
                     §1!]§["Icon" + _loc1_].visible = false;
                  }
                  else
                  {
                     §1!]§["Icon" + _loc1_ + "Special"].visible = false;
                  }
               }
               else
               {
                  §1!]§["Icon" + _loc1_ + "Special"].visible = false;
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
            §1!]§["BirdCoin" + _loc1_].visible = _loc1_ == §4""§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         this.§]!c§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < §5"L§.length)
         {
            §1!]§[§5"L§[_loc1_]].visible = false;
            _loc1_++;
         }
         if(§`!Q§.specialOffer)
         {
            this.§]!c§ = §"!h§;
         }
         else if(§`!x§ == §`_§)
         {
            this.§]!c§ = §`_§;
         }
         else if(§`!x§ == §;"@§)
         {
            this.§]!c§ = §;"@§;
         }
         else if(§`!x§ == §<!m§)
         {
            this.§]!c§ = §<!m§;
         }
         else
         {
            this.§]!c§ = §while§;
         }
         §1!]§[§5"L§[this.§]!c§]].visible = true;
         §1!]§[§5"L§[this.§]!c§]].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 5)
         {
            §1!]§["CoinAmount" + _loc2_ + "Blue"].visible = false;
            §1!]§["CoinAmount" + _loc2_ + "Yellow"].visible = false;
            §1!]§["CoinAmount" + _loc2_ + "Green"].visible = false;
            _loc2_++;
         }
         if(§`!Q§.specialOffer)
         {
            _loc1_ = §1!]§["CoinAmount" + §4""§ + "Green"];
         }
         else if(§`!x§ == §`_§ || §`!x§ == §;"@§ || §`!x§ == §<!m§)
         {
            _loc1_ = §1!]§["CoinAmount" + §4""§ + "Yellow"];
         }
         else
         {
            _loc1_ = §1!]§["CoinAmount" + §4""§ + "Blue"];
         }
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §6!B§.§^"O§(§`!Q§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         §1!]§.MovieClip_Popular.visible = §`!Q§.popular;
         §1!]§.MovieClip_BestValue.visible = §`!Q§.bestValue;
         §1!]§.OneTimeOfferLarge.visible = §`!Q§.specialOffer;
         §1!]§.OneTimeOfferSmall.visible = false;
      }
      
      override protected function setPrice() : void
      {
         var _loc1_:Sprite = §1!]§["saleTag"];
         _loc1_.visible = false;
         if(§`!Q§.campaignPrice > 0)
         {
            _loc1_.visible = true;
            (_loc1_.getChildByName("Percentage") as TextField).text = "-" + §`!Q§.campaignSalePercentage + "%";
            §1!]§.addChild(_loc1_);
            §1!]§.cost.text = dataModel.currencyModel.getPriceTag(§`!Q§.campaignPrice,true,"",§]"'§);
            §1!]§.former_cost.text = dataModel.currencyModel.getPriceTag(§`!Q§.price,true,"",§]"'§);
            §1!]§.Crossover_Line.visible = true;
         }
         else
         {
            §1!]§.cost.text = dataModel.currencyModel.getPriceTag(§`!Q§.price,true,"",§]"'§);
            §1!]§.former_cost.text = "";
            §1!]§.Crossover_Line.visible = false;
         }
         if(§1!]§.cost.text.length > §[#S§)
         {
            §1!]§.cost.setTextFormat(this.§"#U§);
         }
      }
      
      override protected function setNewTag() : void
      {
         var _loc1_:Sprite = §1!]§.newTag;
         _loc1_.visible = _loc1_.visible = §=#o§(AngryBirdsBase.singleton.dataModel).§45§.indexOf(§'!N§ + §`!Q§.price) > -1;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         §1!]§[§5"L§[this.§]!c§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §1!]§[§5"L§[this.§]!c§]].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §1!]§[§5"L§[this.§]!c§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §1!]§[§5"L§[this.§]!c§]].gotoAndStop("Active_Up_Default");
      }
   }
}
