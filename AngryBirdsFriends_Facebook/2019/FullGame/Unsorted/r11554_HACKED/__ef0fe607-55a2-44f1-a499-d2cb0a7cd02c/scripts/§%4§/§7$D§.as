package §%4§
{
   import §!!?§.§<#a§;
   import §+#B§.§""D§;
   import §]"'§.§@"%§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §7$D§ extends §]#X§
   {
      
      protected static const §;_§:int = 0;
      
      protected static const §["y§:int = 1;
      
      protected static const §&"n§:int = 2;
      
      protected static const §#r§:int = 3;
      
      protected static const §-!Z§:int = 4;
      
      protected static const §]j§:Array = ["ButtonBGYellowDark","ButtonBGYellowMid","ButtonBGYellowLight","ButtonBGBlue","ButtonBGSpecialOffer"];
      
      private static const §-#]§:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §"!S§:int = 10;
       
      
      protected var §<n§:int;
      
      private var §-$,§:TextFormat;
      
      public function §7$D§(param1:int, param2:§<#a§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5,§-#]§);
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
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §>"k§["DiscountTag" + _loc1_].visible = false;
            _loc1_++;
         }
         if(§^"v§.freeQuantityInPercentage() > 0)
         {
            §>"k§["DiscountTag" + §&#&§].offer.text = "(" + §^"v§.freeQuantityAsPercentage() + " free)";
            §>"k§["DiscountTag" + §&#&§].visible = true;
         }
      }
      
      override protected function setMainIcon() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 6)
         {
            §>"k§["Icon" + _loc1_].visible = _loc1_ == §4$C§ + 1;
            if(§>"k§["Icon" + _loc1_ + "Special"])
            {
               if(§^"v§.specialOffer)
               {
                  if(_loc1_ == §4$C§ + 1)
                  {
                     §>"k§["Icon" + _loc1_ + "Special"].visible = true;
                     §>"k§["Icon" + _loc1_].visible = false;
                  }
                  else
                  {
                     §>"k§["Icon" + _loc1_ + "Special"].visible = false;
                  }
               }
               else
               {
                  §>"k§["Icon" + _loc1_ + "Special"].visible = false;
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
            §>"k§["BirdCoin" + _loc1_].visible = _loc1_ == §&#&§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         this.§<n§ = 0;
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
         else if(§4$C§ == §;_§)
         {
            this.§<n§ = §;_§;
         }
         else if(§4$C§ == §["y§)
         {
            this.§<n§ = §["y§;
         }
         else if(§4$C§ == §&"n§)
         {
            this.§<n§ = §&"n§;
         }
         else
         {
            this.§<n§ = §#r§;
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
            §>"k§["CoinAmount" + _loc2_ + "Blue"].visible = false;
            §>"k§["CoinAmount" + _loc2_ + "Yellow"].visible = false;
            §>"k§["CoinAmount" + _loc2_ + "Green"].visible = false;
            _loc2_++;
         }
         if(§^"v§.specialOffer)
         {
            _loc1_ = §>"k§["CoinAmount" + §&#&§ + "Green"];
         }
         else if(§4$C§ == §;_§ || §4$C§ == §["y§ || §4$C§ == §&"n§)
         {
            _loc1_ = §>"k§["CoinAmount" + §&#&§ + "Yellow"];
         }
         else
         {
            _loc1_ = §>"k§["CoinAmount" + §&#&§ + "Blue"];
         }
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §""D§.§"k§(§^"v§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         §>"k§.MovieClip_Popular.visible = §^"v§.popular;
         §>"k§.MovieClip_BestValue.visible = §^"v§.bestValue;
         §>"k§.OneTimeOfferLarge.visible = §^"v§.specialOffer;
         §>"k§.OneTimeOfferSmall.visible = false;
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
         _loc1_.visible = _loc1_.visible = §@"%§(AngryBirdsBase.singleton.dataModel).§+d§.indexOf(§?!l§ + §^"v§.price) > -1;
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
