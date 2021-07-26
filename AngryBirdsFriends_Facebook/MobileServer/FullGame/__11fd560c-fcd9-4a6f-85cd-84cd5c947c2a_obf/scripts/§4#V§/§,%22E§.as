package §4#V§
{
   import §&"`§.§##P§;
   import §2G§.§#"8§;
   import §`7§.§!"b§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §,"E§ extends §7w§
   {
      
      protected static const §5!^§:int = 0;
      
      protected static const §<!V§:int = 1;
      
      protected static const §=!d§:int = 2;
      
      protected static const §5E§:int = 3;
      
      protected static const §^"C§:int = 4;
      
      protected static const §!!^§:Array = ["ButtonBGYellowDark","ButtonBGYellowMid","ButtonBGYellowLight","ButtonBGBlue","ButtonBGSpecialOffer"];
      
      private static const §#$7§:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const § #x§:int = 10;
       
      
      protected var §@"p§:int;
      
      private var §7#d§:TextFormat;
      
      public function §,"E§(param1:int, param2:§##P§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5,§#$7§);
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
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §;!V§["DiscountTag" + _loc1_].visible = false;
            _loc1_++;
         }
         if(§+$'§.freeQuantityInPercentage() > 0)
         {
            §;!V§["DiscountTag" + §1#1§].offer.text = "(" + §+$'§.freeQuantityAsPercentage() + " free)";
            §;!V§["DiscountTag" + §1#1§].visible = true;
         }
      }
      
      override protected function setMainIcon() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 6)
         {
            §;!V§["Icon" + _loc1_].visible = _loc1_ == §&!&§ + 1;
            if(§;!V§["Icon" + _loc1_ + "Special"])
            {
               if(§+$'§.specialOffer)
               {
                  if(_loc1_ == §&!&§ + 1)
                  {
                     §;!V§["Icon" + _loc1_ + "Special"].visible = true;
                     §;!V§["Icon" + _loc1_].visible = false;
                  }
                  else
                  {
                     §;!V§["Icon" + _loc1_ + "Special"].visible = false;
                  }
               }
               else
               {
                  §;!V§["Icon" + _loc1_ + "Special"].visible = false;
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
            §;!V§["BirdCoin" + _loc1_].visible = _loc1_ == §1#1§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         this.§@"p§ = 0;
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
         else if(§&!&§ == §5!^§)
         {
            this.§@"p§ = §5!^§;
         }
         else if(§&!&§ == §<!V§)
         {
            this.§@"p§ = §<!V§;
         }
         else if(§&!&§ == §=!d§)
         {
            this.§@"p§ = §=!d§;
         }
         else
         {
            this.§@"p§ = §5E§;
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
            §;!V§["CoinAmount" + _loc2_ + "Blue"].visible = false;
            §;!V§["CoinAmount" + _loc2_ + "Yellow"].visible = false;
            §;!V§["CoinAmount" + _loc2_ + "Green"].visible = false;
            _loc2_++;
         }
         if(§+$'§.specialOffer)
         {
            _loc1_ = §;!V§["CoinAmount" + §1#1§ + "Green"];
         }
         else if(§&!&§ == §5!^§ || §&!&§ == §<!V§ || §&!&§ == §=!d§)
         {
            _loc1_ = §;!V§["CoinAmount" + §1#1§ + "Yellow"];
         }
         else
         {
            _loc1_ = §;!V§["CoinAmount" + §1#1§ + "Blue"];
         }
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §!"b§.§@]§(§+$'§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         §;!V§.MovieClip_Popular.visible = §+$'§.popular;
         §;!V§.MovieClip_BestValue.visible = §+$'§.bestValue;
         §;!V§.OneTimeOfferLarge.visible = §+$'§.specialOffer;
         §;!V§.OneTimeOfferSmall.visible = false;
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
         _loc1_.visible = _loc1_.visible = §#"8§(AngryBirdsBase.singleton.dataModel).§ $>§.indexOf(§<";§ + §+$'§.price) > -1;
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
