package §8!G§
{
   import §2E§.§,!8§;
   import §4#l§.§>"`§;
   import §>#Y§.§,#b§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class § "L§ extends §0!R§
   {
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §;#g§:String = "ButtonBGSmallDefault";
      
      private static const §#"$§:int = 10;
       
      
      private var §8"<§:TextFormat;
      
      public function § "L§(param1:int, param2:§>"`§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5);
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
         var _loc1_:MovieClip = §0?§["DiscountTag3"];
         if(§[!'§.freeQuantityInPercentage() > 0)
         {
            _loc1_.offer.text = "(" + §[!'§.freeQuantityAsPercentage() + " free)";
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
            §0?§["Icon" + _loc1_].visible = _loc1_ == §`!g§ + 1;
            _loc1_++;
         }
      }
      
      override protected function setBCIcon() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 4)
         {
            §0?§["BirdCoin" + _loc1_].visible = _loc1_ == §5!S§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         §0?§[§;#g§].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 4)
         {
            §0?§["CoinAmount" + _loc2_].visible = false;
            _loc2_++;
         }
         _loc1_ = §0?§["CoinAmount" + §5!S§];
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §,!8§.§1"h§(§[!'§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
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
         _loc1_.visible = §,#b§(AngryBirdsBase.singleton.dataModel).§'$2§.indexOf(§?#d§ + §[!'§.price) > -1;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         §0?§[§;#g§].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §0?§[§;#g§].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §0?§[§;#g§].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §0?§[§;#g§].gotoAndStop("Active_Up_Default");
      }
   }
}
