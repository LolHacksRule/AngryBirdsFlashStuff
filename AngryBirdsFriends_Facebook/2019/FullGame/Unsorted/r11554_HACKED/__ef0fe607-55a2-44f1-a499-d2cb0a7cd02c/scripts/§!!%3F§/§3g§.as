package §!!?§
{
   import §+#B§.§""D§;
   import §]"'§.§#$D§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §3g§ extends §&#+§
   {
      
      private static const §]8§:int = -90;
      
      private static const §[#$§:int = 175;
       
      
      private var §&!c§:Boolean = false;
      
      private var §,§:String = "";
      
      public function §3g§(param1:§,!K§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false)
      {
         this.§&!c§ = param8;
         this.§,§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         §-!?§.owned.visible = this.§&!c§;
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §#$D§.§?q§.§<"M§(§4">§.id);
         if(_loc1_ >= 1)
         {
            if(!this.§&!c§)
            {
               this.§&!c§ = true;
            }
            §-!?§.owned.visible = this.§&!c§;
            this.createButtons();
         }
      }
      
      override protected function createButtons() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = null;
         var _loc6_:MovieClip = null;
         var _loc7_:TextField = null;
         var _loc8_:TextField = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:Number = NaN;
         var _loc13_:MovieClip = null;
         var _loc14_:SimpleButton = null;
         var _loc16_:MovieClip = null;
         var _loc17_:int = 0;
         §"!y§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §^$9§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §^"#§["price" + _loc2_];
            §^"#§["amount" + _loc2_];
            §^"#§["free" + _loc2_];
            _loc6_ = §^"#§["icon" + _loc2_];
            _loc7_ = §^"#§["description"];
            _loc8_ = §^"#§["title"];
            _loc9_ = §^"#§["owned"];
            _loc10_ = §^"#§["payButton"];
            _loc11_ = §^"#§["oldPrice"];
            _loc10_.gotoAndStop(1);
            _loc9_.visible = this.§&!c§;
            _loc8_.text = this.§,§;
            _loc7_.text = §`E§;
            if(§'$$§.isOnSale)
            {
               _loc12_ = §'$$§.getPricePoint(_loc1_).campaignPrice;
               _loc11_.former_cost.text = "" + §'$$§.getPricePoint(_loc1_).price;
               _loc11_.visible = true;
            }
            else
            {
               _loc12_ = §'$$§.getPricePoint(_loc1_).price;
               _loc11_.visible = false;
            }
            _loc3_.text = §&#+§.MULTIPLIER_STRING + §""D§.§"k§(_loc12_);
            if((_loc13_ = §^"#§["MovieClip_Icon_VirtualCurrency"]) && §'$$§.currencyID != "IVC")
            {
               _loc13_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(_loc12_,true,"",§'$$§.currencyID);
            }
            else
            {
               _loc13_.visible = !this.§&!c§;
            }
            _loc3_.visible = _loc10_.visible = !this.§&!c§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc13_.mouseEnabled = _loc7_.mouseEnabled = this.§&!c§;
            _loc6_.mouseChildren = false;
            (_loc14_ = §^"#§["buy" + _loc2_]).mouseEnabled = false;
            if(!this.§&!c§)
            {
               _loc10_.addEventListener(MouseEvent.CLICK,§0T§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OVER,this.§,"d§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_DOWN,this.§,! §,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_UP,this.§5M§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OUT,this.§ !G§,false,0,true);
            }
            else
            {
               _loc11_.visible = false;
            }
            §"!y§.push(_loc14_);
            if(!this.§&!c§ && §'$$§.isOnSale)
            {
               _loc16_ = new §2"O§.§`>§("Tag_Sale_30percent")();
               _loc17_ = §'$$§.getPricePoint(_loc1_).campaignSalePercentage;
               (_loc16_.getChildByName("Percentage") as TextField).text = "-" + _loc17_ + "%";
               _loc16_.name = "Tag_Sale_30percent";
               _loc16_.x = §]8§;
               _loc16_.y = §[#$§;
               §^"#§.addChild(_loc16_);
            }
            else if((_loc16_ = §^"#§.getChildByName("Tag_Sale_30percent") as MovieClip) && _loc16_.parent)
            {
               _loc16_.parent.removeChild(_loc16_);
            }
            _loc1_++;
         }
      }
      
      public function §#! §() : Boolean
      {
         return this.§&!c§;
      }
      
      private function §,"d§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §,! §(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(3);
      }
      
      private function §5M§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function § !G§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(1);
      }
   }
}
