package §>q§
{
   import §"!U§.§6!J§;
   import §%$!§.§+3§;
   import §>!#§.§9#a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §0#"§ extends §@#a§
   {
      
      protected static const §9$;§:int = 0;
      
      protected static const §1#Z§:int = 1;
      
      protected static const §>>§:Array = ["ButtonLargeDefault","ButtonLargeOnetime"];
      
      private static const §&#+§:int = -17;
      
      public static const MULTIPLIER_STRING:String = "x ";
      
      private static const §4$,§:int = 10;
       
      
      protected var §,#G§:int;
      
      private var §,!S§:TextFormat;
      
      public function §0#"§(param1:int, param2:§6!J§, param3:String, param4:String, param5:String)
      {
         super(this,param1,param2,param3,param4,param5);
         this.§,!S§ = new TextFormat(null,24,null);
         this.§,!S§.align = "center";
         init();
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      override protected function setDiscountTag() : void
      {
         var _loc1_:MovieClip = §>"'§["DiscountTag3"];
         if(§3!@§.freeQuantityInPercentage() > 0)
         {
            _loc1_.offer.text = "(" + §3!@§.freeQuantityAsPercentage() + " free)";
            _loc1_.visible = true;
         }
         else
         {
            _loc1_.visible = false;
         }
      }
      
      override protected function setMainIcon() : void
      {
         §>"'§["IconBestValue"].visible = §3!@§.bestValue;
         §>"'§["IconPopular"].visible = §3!@§.popular;
         §>"'§["IconOneTimeOffer"].visible = §3!@§.specialOffer;
      }
      
      override protected function setBCIcon() : void
      {
         var _loc1_:int = 3;
         while(_loc1_ <= 5)
         {
            §>"'§["BirdCoin" + _loc1_].visible = _loc1_ == §=!'§;
            _loc1_++;
         }
      }
      
      override protected function setBG() : void
      {
         this.§,#G§ = §9$;§;
         var _loc1_:int = 0;
         while(_loc1_ < §>>§.length)
         {
            §>"'§[§>>§[_loc1_]].visible = false;
            _loc1_++;
         }
         if(§3!@§.specialOffer)
         {
            this.§,#G§ = §1#Z§;
         }
         §>"'§[§>>§[this.§,#G§]].visible = true;
         §>"'§[§>>§[this.§,#G§]].gotoAndStop("Active_Up_Default");
      }
      
      override protected function setBCTextField() : void
      {
         var _loc1_:TextField = null;
         var _loc2_:int = 3;
         while(_loc2_ <= 5)
         {
            §>"'§["CoinAmount" + _loc2_].visible = false;
            _loc2_++;
         }
         _loc1_ = §>"'§["CoinAmount" + §=!'§];
         _loc1_.visible = true;
         _loc1_.text = MULTIPLIER_STRING + §9#a§.§^#&§(§3!@§.totalQuantity);
      }
      
      override protected function setSpecialTag() : void
      {
         §>"'§.TagMostPopular.visible = §3!@§.popular;
         §>"'§.TagBestValue.visible = §3!@§.bestValue;
         §>"'§.TagOneTimeOffer.visible = §3!@§.specialOffer;
      }
      
      override protected function setPrice() : void
      {
         var _loc1_:Sprite = §>"'§["saleTag"];
         _loc1_.visible = false;
         if(§3!@§.campaignPrice > 0)
         {
            _loc1_.visible = true;
            (_loc1_.getChildByName("Percentage") as TextField).text = "-" + §3!@§.campaignSalePercentage + "%";
            §>"'§.addChild(_loc1_);
            §>"'§.cost.text = dataModel.currencyModel.getPriceTag(§3!@§.campaignPrice,true,"",§-[§);
            §>"'§.former_cost.text = dataModel.currencyModel.getPriceTag(§3!@§.price,true,"",§-[§);
            §>"'§.Crossover_Line.visible = true;
         }
         else
         {
            §>"'§.cost.text = dataModel.currencyModel.getPriceTag(§3!@§.price,true,"",§-[§);
            §>"'§.former_cost.text = "";
            §>"'§.Crossover_Line.visible = false;
         }
         if(§>"'§.cost.text.length > §4$,§)
         {
            §>"'§.cost.setTextFormat(this.§,!S§);
         }
      }
      
      override protected function setNewTag() : void
      {
         var _loc1_:Sprite = §>"'§.newTag;
         _loc1_.visible = §+3§(AngryBirdsBase.singleton.dataModel).§5`§.indexOf(§#?§ + §3!@§.price) > -1;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         §>"'§[§>>§[this.§,#G§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         §>"'§[§>>§[this.§,#G§]].gotoAndStop("Active_Down");
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         §>"'§[§>>§[this.§,#G§]].gotoAndStop("Active_Over");
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         §>"'§[§>>§[this.§,#G§]].gotoAndStop("Active_Up_Default");
      }
   }
}
