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
   
   public class §=!W§ extends §<0§
   {
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §6##§:String = "ButtonBGSmallDefault";
      
      private static const §8§:int = 10;
       
      
      private var §,#b§:TextFormat;
      
      public function §=!W§(param1:int, param2:§!#q§, param3:String, param4:String, param5:String)
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
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §@"<§["Icon" + _loc1_].visible = _loc1_ == §,$<§ + 1;
            _loc1_++;
         }
      }
      
      override protected function setBCIcon() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 4)
         {
            §@"<§["BirdCoin" + _loc1_].visible = _loc1_ == §2f§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         §@"<§[§6##§].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 4)
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
         §@"<§[§6##§].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §@"<§[§6##§].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §@"<§[§6##§].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §@"<§[§6##§].gotoAndStop("Active_Up_Default");
      }
   }
}
