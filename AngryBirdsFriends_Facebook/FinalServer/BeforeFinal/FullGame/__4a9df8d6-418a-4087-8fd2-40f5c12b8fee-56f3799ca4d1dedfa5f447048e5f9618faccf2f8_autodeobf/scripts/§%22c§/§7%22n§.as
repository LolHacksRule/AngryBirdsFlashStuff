package §"c§
{
   import §!#C§.§4!Q§;
   import §&!_§.§9#%§;
   import §5" §.§5u§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §7"n§ extends § L§
   {
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §?"1§:String = "ButtonBGSmallDefault";
      
      private static const §'#W§:int = 10;
       
      
      private var §&!G§:TextFormat;
      
      public function §7"n§(param1:int, param2:§5u§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5);
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
         var _loc1_:MovieClip = §`#q§["DiscountTag3"];
         if(§?!M§.freeQuantityInPercentage() > 0)
         {
            _loc1_.offer.text = "(" + §?!M§.freeQuantityAsPercentage() + " free)";
            _loc1_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
         }
      }
      
      override protected function setMainIcon() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §`#q§["Icon" + _loc1_].visible = _loc1_ == §-#M§ + 1;
            _loc1_++;
         }
      }
      
      override protected function setBCIcon() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 4)
         {
            §`#q§["BirdCoin" + _loc1_].visible = _loc1_ == §>1§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         §`#q§[§?"1§].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 4)
         {
            §`#q§["CoinAmount" + _loc2_].visible = false;
            _loc2_++;
         }
         _loc1_ = §`#q§["CoinAmount" + §>1§];
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §9#%§.§##W§(§?!M§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
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
         _loc1_.visible = §4!Q§(AngryBirdsBase.singleton.dataModel).§8!'§.indexOf(§"#u§ + §?!M§.price) > -1;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         §`#q§[§?"1§].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §`#q§[§?"1§].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §`#q§[§?"1§].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §`#q§[§?"1§].gotoAndStop("Active_Up_Default");
      }
   }
}
