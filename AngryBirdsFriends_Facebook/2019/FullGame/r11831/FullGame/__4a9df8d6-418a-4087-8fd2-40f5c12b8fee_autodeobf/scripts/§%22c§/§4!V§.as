package §"c§
{
   import §!#C§.§4!Q§;
   import §&!_§.§9#%§;
   import §5" §.§5u§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §4!V§ extends § L§
   {
      
      protected static const § !I§:int = 0;
      
      protected static const §-+§:int = 1;
      
      protected static const §[$&§:int = 2;
      
      protected static const §@!u§:int = 3;
      
      protected static const §"#M§:int = 4;
      
      protected static const §8#z§:Array = ["ButtonBGYellowDark","ButtonBGYellowMid","ButtonBGYellowLight","ButtonBGBlue","ButtonBGSpecialOffer"];
      
      private static const §&"o§:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §'#W§:int = 10;
       
      
      protected var §2#y§:int;
      
      private var §&!G§:TextFormat;
      
      public function §4!V§(param1:int, param2:§5u§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5,§&"o§);
         this.§&!G§ = new TextFormat(null,24,null);
         this.§&!G§.align = "center";
         init();
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      override protected function setDiscountTag() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §`#q§["DiscountTag" + _loc1_].visible = false;
            _loc1_++;
         }
         if(§?!M§.freeQuantityInPercentage() > 0)
         {
            §`#q§["DiscountTag" + §>1§].offer.text = "(" + §?!M§.freeQuantityAsPercentage() + " free)";
            §`#q§["DiscountTag" + §>1§].visible = true;
         }
      }
      
      override protected function setMainIcon() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 6)
         {
            §`#q§["Icon" + _loc1_].visible = _loc1_ == §-#M§ + 1;
            if(§`#q§["Icon" + _loc1_ + "Special"])
            {
               if(§?!M§.specialOffer)
               {
                  if(_loc1_ == §-#M§ + 1)
                  {
                     §`#q§["Icon" + _loc1_ + "Special"].visible = true;
                     §`#q§["Icon" + _loc1_].visible = false;
                  }
                  else
                  {
                     §`#q§["Icon" + _loc1_ + "Special"].visible = false;
                  }
               }
               else
               {
                  §`#q§["Icon" + _loc1_ + "Special"].visible = false;
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
            §`#q§["BirdCoin" + _loc1_].visible = _loc1_ == §>1§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         this.§2#y§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < §8#z§.length)
         {
            §`#q§[§8#z§[_loc1_]].visible = false;
            _loc1_++;
         }
         if(§?!M§.specialOffer)
         {
            this.§2#y§ = §"#M§;
         }
         else if(§-#M§ == § !I§)
         {
            this.§2#y§ = § !I§;
         }
         else if(§-#M§ == §-+§)
         {
            this.§2#y§ = §-+§;
         }
         else if(§-#M§ == §[$&§)
         {
            this.§2#y§ = §[$&§;
         }
         else
         {
            this.§2#y§ = §@!u§;
         }
         §`#q§[§8#z§[this.§2#y§]].visible = true;
         §`#q§[§8#z§[this.§2#y§]].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 5)
         {
            §`#q§["CoinAmount" + _loc2_ + "Blue"].visible = false;
            §`#q§["CoinAmount" + _loc2_ + "Yellow"].visible = false;
            §`#q§["CoinAmount" + _loc2_ + "Green"].visible = false;
            _loc2_++;
         }
         if(§?!M§.specialOffer)
         {
            _loc1_ = §`#q§["CoinAmount" + §>1§ + "Green"];
         }
         else if(§-#M§ == § !I§ || §-#M§ == §-+§ || §-#M§ == §[$&§)
         {
            _loc1_ = §`#q§["CoinAmount" + §>1§ + "Yellow"];
         }
         else
         {
            _loc1_ = §`#q§["CoinAmount" + §>1§ + "Blue"];
         }
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §9#%§.§##W§(§?!M§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         §`#q§.MovieClip_Popular.visible = §?!M§.popular;
         §`#q§.MovieClip_BestValue.visible = §?!M§.bestValue;
         §`#q§.OneTimeOfferLarge.visible = §?!M§.specialOffer;
         §`#q§.OneTimeOfferSmall.visible = false;
      }
      
      override protected function setPrice() : void
      {
         var _loc1_:Sprite = §`#q§["saleTag"];
         _loc1_.visible = false;
         if(§?!M§.campaignPrice > 0)
         {
            _loc1_.visible = true;
            (_loc1_.getChildByName("Percentage") as TextField).text = "-" + §?!M§.campaignSalePercentage + "%";
            §`#q§.addChild(_loc1_);
            §`#q§.cost.text = dataModel.currencyModel.getPriceTag(§?!M§.campaignPrice,true,"",§>!T§);
            §`#q§.former_cost.text = dataModel.currencyModel.getPriceTag(§?!M§.price,true,"",§>!T§);
            §`#q§.Crossover_Line.visible = true;
         }
         else
         {
            §`#q§.cost.text = dataModel.currencyModel.getPriceTag(§?!M§.price,true,"",§>!T§);
            §`#q§.former_cost.text = "";
            §`#q§.Crossover_Line.visible = false;
         }
         if(§`#q§.cost.text.length > §'#W§)
         {
            §`#q§.cost.setTextFormat(this.§&!G§);
         }
      }
      
      override protected function setNewTag() : void
      {
         var _loc1_:Sprite = §`#q§.newTag;
         _loc1_.visible = _loc1_.visible = §4!Q§(AngryBirdsBase.singleton.dataModel).§8!'§.indexOf(§"#u§ + §?!M§.price) > -1;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         §`#q§[§8#z§[this.§2#y§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §`#q§[§8#z§[this.§2#y§]].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §`#q§[§8#z§[this.§2#y§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §`#q§[§8#z§[this.§2#y§]].gotoAndStop("Active_Up_Default");
      }
   }
}
