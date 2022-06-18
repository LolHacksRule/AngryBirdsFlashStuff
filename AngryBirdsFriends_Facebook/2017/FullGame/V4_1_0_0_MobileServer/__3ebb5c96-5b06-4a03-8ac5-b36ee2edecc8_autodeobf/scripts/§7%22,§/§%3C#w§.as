package §7",§
{
   import §&"J§.§4"W§;
   import §6V§.§^">§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §<#w§ extends §"$8§
   {
      
      private static const §]!0§:int = -90;
      
      private static const §8#F§:int = 175;
       
      
      private var §="r§:Boolean = false;
      
      private var §<"a§:String = "";
      
      public function §<#w§(param1:§2#i§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false)
      {
         this.§="r§ = param8;
         this.§<"a§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         §1!'§.owned.visible = this.§="r§;
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §4"W§.§ "D§.§04§(§in§.id);
         if(_loc1_ >= 1)
         {
            if(!this.§="r§)
            {
               this.§="r§ = true;
            }
            §1!'§.owned.visible = this.§="r§;
            this.createButtons();
         }
      }
      
      override protected function createButtons() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = null;
         var _loc4_:TextField = null;
         var _loc5_:TextField = null;
         var _loc6_:MovieClip = null;
         var _loc7_:TextField = null;
         var _loc8_:TextField = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:Number = NaN;
         var _loc13_:MovieClip = null;
         var _loc14_:SimpleButton = null;
         var _loc15_:Class = null;
         var _loc16_:MovieClip = null;
         var _loc17_:int = 0;
         §"!M§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §#"X§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §6d§["price" + _loc2_];
            _loc4_ = §6d§["amount" + _loc2_];
            _loc5_ = §6d§["free" + _loc2_];
            _loc6_ = §6d§["icon" + _loc2_];
            _loc7_ = §6d§["description"];
            _loc8_ = §6d§["title"];
            _loc9_ = §6d§["owned"];
            _loc10_ = §6d§["payButton"];
            _loc11_ = §6d§["oldPrice"];
            _loc10_.gotoAndStop(1);
            _loc9_.visible = this.§="r§;
            _loc8_.text = this.§<"a§;
            _loc7_.text = §'$>§;
            if(§]#+§.isOnSale)
            {
               _loc12_ = §]#+§.getPricePoint(_loc1_).campaignPrice;
               _loc11_.former_cost.text = "" + §]#+§.getPricePoint(_loc1_).price;
               _loc11_.visible = true;
            }
            else
            {
               _loc12_ = §]#+§.getPricePoint(_loc1_).price;
               _loc11_.visible = false;
            }
            _loc3_.text = §"$8§.MULTIPLIER_STRING + §^">§.§?"Y§(_loc12_);
            if((_loc13_ = §6d§["MovieClip_Icon_VirtualCurrency"]) && §]#+§.currencyID != "IVC")
            {
               _loc13_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(_loc12_,true,"",§]#+§.currencyID);
            }
            else
            {
               _loc13_.visible = !this.§="r§;
            }
            _loc3_.visible = _loc10_.visible = !this.§="r§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc13_.mouseEnabled = _loc7_.mouseEnabled = this.§="r§;
            _loc6_.mouseChildren = false;
            (_loc14_ = §6d§["buy" + _loc2_]).mouseEnabled = false;
            if(!this.§="r§)
            {
               _loc10_.addEventListener(MouseEvent.CLICK,§=#,§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OVER,this.§;##§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_DOWN,this.§^"X§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_UP,this.§>!@§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OUT,this.§6#v§,false,0,true);
            }
            else
            {
               _loc11_.visible = false;
            }
            §"!M§.push(_loc14_);
            if(!this.§="r§ && §]#+§.isOnSale)
            {
               _loc16_ = new (_loc15_ = §+$#§.§["`§("Tag_Sale_30percent"))();
               _loc17_ = §]#+§.getPricePoint(_loc1_).campaignSalePercentage;
               (_loc16_.getChildByName("Percentage") as TextField).text = "-" + _loc17_ + "%";
               _loc16_.name = "Tag_Sale_30percent";
               _loc16_.x = §]!0§;
               _loc16_.y = §8#F§;
               §6d§.addChild(_loc16_);
            }
            else if((_loc16_ = §6d§.getChildByName("Tag_Sale_30percent") as MovieClip) && _loc16_.parent)
            {
               _loc16_.parent.removeChild(_loc16_);
            }
            _loc1_++;
         }
      }
      
      public function §[!-§() : Boolean
      {
         return this.§="r§;
      }
      
      private function §;##§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §^"X§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(3);
      }
      
      private function §>!@§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §6#v§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(1);
      }
   }
}
