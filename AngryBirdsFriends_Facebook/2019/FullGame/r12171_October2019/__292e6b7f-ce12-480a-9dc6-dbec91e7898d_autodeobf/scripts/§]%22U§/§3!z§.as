package §]"U§
{
   import §#"4§.§6!B§;
   import §,#,§.§=#o§;
   import §`D§.§'"j§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §3!z§ extends §]#e§
   {
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §7#Q§:String = "ButtonBGSmallDefault";
      
      private static const §[#S§:int = 10;
       
      
      private var §"#U§:TextFormat;
      
      public function §3!z§(param1:int, param2:§'"j§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5);
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
         var _loc1_:MovieClip = §1!]§["DiscountTag3"];
         if(§`!Q§.freeQuantityInPercentage() > 0)
         {
            _loc1_.offer.text = "(" + §`!Q§.freeQuantityAsPercentage() + " free)";
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
            §1!]§["Icon" + _loc1_].visible = _loc1_ == §`!x§ + 1;
            _loc1_++;
         }
      }
      
      override protected function setBCIcon() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 4)
         {
            §1!]§["BirdCoin" + _loc1_].visible = _loc1_ == §4""§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         §1!]§[§7#Q§].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 4)
         {
            §1!]§["CoinAmount" + _loc2_].visible = false;
            _loc2_++;
         }
         _loc1_ = §1!]§["CoinAmount" + §4""§];
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §6!B§.§^"O§(§`!Q§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
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
         _loc1_.visible = §=#o§(AngryBirdsBase.singleton.dataModel).§45§.indexOf(§'!N§ + §`!Q§.price) > -1;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         §1!]§[§7#Q§].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §1!]§[§7#Q§].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §1!]§[§7#Q§].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §1!]§[§7#Q§].gotoAndStop("Active_Up_Default");
      }
   }
}
