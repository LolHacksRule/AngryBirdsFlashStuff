package §4#l§
{
   import §2E§.§,!8§;
   import §>#Y§.§!",§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §8"o§ extends §='§
   {
      
      private static const §'9§:int = -90;
      
      private static const §,!;§:int = 175;
       
      
      private var §?"a§:Boolean = false;
      
      private var §%!5§:String = "";
      
      public function §8"o§(param1:§8#E§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false)
      {
         this.§?"a§ = param8;
         this.§%!5§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         §&+§.owned.visible = this.§?"a§;
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §!",§.§3"1§.§2![§(§"^§.id);
         if(_loc1_ >= 1)
         {
            if(!this.§?"a§)
            {
               this.§?"a§ = true;
            }
            §&+§.owned.visible = this.§?"a§;
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
         §%"y§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §>"a§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §'$1§["price" + _loc2_];
            §'$1§["amount" + _loc2_];
            §'$1§["free" + _loc2_];
            _loc6_ = §'$1§["icon" + _loc2_];
            _loc7_ = §'$1§["description"];
            _loc8_ = §'$1§["title"];
            _loc9_ = §'$1§["owned"];
            _loc10_ = §'$1§["payButton"];
            _loc11_ = §'$1§["oldPrice"];
            _loc10_.gotoAndStop(1);
            _loc9_.visible = this.§?"a§;
            _loc8_.text = this.§%!5§;
            _loc7_.text = §7!O§;
            if(§=#Q§.isOnSale)
            {
               _loc12_ = §=#Q§.getPricePoint(_loc1_).campaignPrice;
               _loc11_.former_cost.text = "" + §=#Q§.getPricePoint(_loc1_).price;
               _loc11_.visible = true;
            }
            else
            {
               _loc12_ = §=#Q§.getPricePoint(_loc1_).price;
               _loc11_.visible = false;
            }
            _loc3_.text = §='§.MULTIPLIER_STRING + §,!8§.§1"h§(_loc12_);
            if((_loc13_ = §'$1§["MovieClip_Icon_VirtualCurrency"]) && §=#Q§.currencyID != "IVC")
            {
               _loc13_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(_loc12_,true,"",§=#Q§.currencyID);
            }
            else
            {
               _loc13_.visible = !this.§?"a§;
            }
            _loc3_.visible = _loc10_.visible = !this.§?"a§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc13_.mouseEnabled = _loc7_.mouseEnabled = this.§?"a§;
            _loc6_.mouseChildren = false;
            (_loc14_ = §'$1§["buy" + _loc2_]).mouseEnabled = false;
            if(!this.§?"a§)
            {
               _loc10_.addEventListener(MouseEvent.CLICK,§]!,§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OVER,this.§-"=§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!Q§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_UP,this.§1#P§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OUT,this.§-9§,false,0,true);
            }
            else
            {
               _loc11_.visible = false;
            }
            §%"y§.push(_loc14_);
            if(!this.§?"a§ && §=#Q§.isOnSale)
            {
               _loc16_ = new §=@§.§9!x§("Tag_Sale_30percent")();
               _loc17_ = §=#Q§.getPricePoint(_loc1_).campaignSalePercentage;
               (_loc16_.getChildByName("Percentage") as TextField).text = "-" + _loc17_ + "%";
               _loc16_.name = "Tag_Sale_30percent";
               _loc16_.x = §'9§;
               _loc16_.y = §,!;§;
               §'$1§.addChild(_loc16_);
            }
            else if((_loc16_ = §'$1§.getChildByName("Tag_Sale_30percent") as MovieClip) && _loc16_.parent)
            {
               _loc16_.parent.removeChild(_loc16_);
            }
            _loc1_++;
         }
      }
      
      public function §[![§() : Boolean
      {
         return this.§?"a§;
      }
      
      private function §-"=§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §1!Q§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(3);
      }
      
      private function §1#P§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §-9§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(1);
      }
   }
}
