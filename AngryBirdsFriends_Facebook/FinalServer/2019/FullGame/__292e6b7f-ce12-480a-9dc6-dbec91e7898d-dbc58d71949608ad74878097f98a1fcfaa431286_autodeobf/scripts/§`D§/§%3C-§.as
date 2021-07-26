package §`D§
{
   import §#"4§.§6!B§;
   import §,#,§.§]§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §<-§ extends §7#+§
   {
      
      private static const §]"h§:int = -90;
      
      private static const §<!g§:int = 175;
       
      
      private var §-!'§:Boolean = false;
      
      private var §7![§:String = "";
      
      public function §<-§(param1:§2_§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false)
      {
         this.§-!'§ = param8;
         this.§7![§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         §2"L§.owned.visible = this.§-!'§;
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = §]#0§.§+!,§.§,#k§(§@" §.id);
         if(_loc1_ >= 1)
         {
            if(!this.§-!'§)
            {
               this.§-!'§ = true;
            }
            §2"L§.owned.visible = this.§-!'§;
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
         §^$!§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §98§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §>$§["price" + _loc2_];
            _loc4_ = §>$§["amount" + _loc2_];
            _loc5_ = §>$§["free" + _loc2_];
            _loc6_ = §>$§["icon" + _loc2_];
            _loc7_ = §>$§["description"];
            _loc8_ = §>$§["title"];
            _loc9_ = §>$§["owned"];
            _loc10_ = §>$§["payButton"];
            _loc11_ = §>$§["oldPrice"];
            _loc10_.gotoAndStop(1);
            _loc9_.visible = this.§-!'§;
            _loc8_.text = this.§7![§;
            _loc7_.text = §+"@§;
            if(§@l§.isOnSale)
            {
               _loc12_ = §@l§.getPricePoint(_loc1_).campaignPrice;
               _loc11_.former_cost.text = "" + §@l§.getPricePoint(_loc1_).price;
               _loc11_.visible = true;
            }
            else
            {
               _loc12_ = §@l§.getPricePoint(_loc1_).price;
               _loc11_.visible = false;
            }
            _loc3_.text = §7#+§.MULTIPLIER_STRING + §6!B§.§^"O§(_loc12_);
            if((_loc13_ = §>$§["MovieClip_Icon_VirtualCurrency"]) && §@l§.currencyID != "IVC")
            {
               _loc13_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(_loc12_,true,"",§@l§.currencyID);
            }
            else
            {
               _loc13_.visible = !this.§-!'§;
            }
            _loc3_.visible = _loc10_.visible = !this.§-!'§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc13_.mouseEnabled = _loc7_.mouseEnabled = this.§-!'§;
            _loc6_.mouseChildren = false;
            (_loc14_ = §>$§["buy" + _loc2_]).mouseEnabled = false;
            if(!this.§-!'§)
            {
               _loc10_.addEventListener(MouseEvent.CLICK,§?#U§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OVER,this.§`X§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_DOWN,this.§`!m§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_UP,this.§&"n§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OUT,this.§=$5§,false,0,true);
            }
            else
            {
               _loc11_.visible = false;
            }
            §^$!§.push(_loc14_);
            if(!this.§-!'§ && §@l§.isOnSale)
            {
               _loc16_ = new (_loc15_ = §[a§.§8#k§("Tag_Sale_30percent"))();
               _loc17_ = §@l§.getPricePoint(_loc1_).campaignSalePercentage;
               (_loc16_.getChildByName("Percentage") as TextField).text = "-" + _loc17_ + "%";
               _loc16_.name = "Tag_Sale_30percent";
               _loc16_.x = §]"h§;
               _loc16_.y = §<!g§;
               §>$§.addChild(_loc16_);
            }
            else if((_loc16_ = §>$§.getChildByName("Tag_Sale_30percent") as MovieClip) && _loc16_.parent)
            {
               _loc16_.parent.removeChild(_loc16_);
            }
            _loc1_++;
         }
      }
      
      public function §#;§() : Boolean
      {
         return this.§-!'§;
      }
      
      private function §`X§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §`!m§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(3);
      }
      
      private function §&"n§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §=$5§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(1);
      }
   }
}
