package §5" §
{
   import §!#C§.§ $?§;
   import §&!_§.§9#%§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §'R§ extends §2$0§
   {
      
      private static const §set §:int = -90;
      
      private static const §7!7§:int = 175;
       
      
      private var §1!#§:Boolean = false;
      
      private var §0?§:String = "";
      
      public function §'R§(param1:§=n§, param2:String, param3:String, param4:MovieClip, param5:String, param6:String, param7:int = 5, param8:Boolean = false)
      {
         this.§1!#§ = param8;
         this.§0?§ = param6;
         super(param1,param2,param3,param4,param5,param7);
         §8#q§.owned.visible = this.§1!#§;
      }
      
      override public function refreshItemCount() : void
      {
         var _loc1_:int = § $?§.§`"H§.§0#s§(§6!-§.id);
         if(_loc1_ >= 1)
         {
            if(!this.§1!#§)
            {
               this.§1!#§ = true;
            }
            §8#q§.owned.visible = this.§1!#§;
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
         §-"6§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < §1h§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = §'"+§["price" + _loc2_];
            _loc4_ = §'"+§["amount" + _loc2_];
            _loc5_ = §'"+§["free" + _loc2_];
            _loc6_ = §'"+§["icon" + _loc2_];
            _loc7_ = §'"+§["description"];
            _loc8_ = §'"+§["title"];
            _loc9_ = §'"+§["owned"];
            _loc10_ = §'"+§["payButton"];
            _loc11_ = §'"+§["oldPrice"];
            _loc10_.gotoAndStop(1);
            _loc9_.visible = this.§1!#§;
            _loc8_.text = this.§0?§;
            _loc7_.text = §,"w§;
            if(§3$@§.isOnSale)
            {
               _loc12_ = §3$@§.getPricePoint(_loc1_).campaignPrice;
               _loc11_.former_cost.text = "" + §3$@§.getPricePoint(_loc1_).price;
               _loc11_.visible = true;
            }
            else
            {
               _loc12_ = §3$@§.getPricePoint(_loc1_).price;
               _loc11_.visible = false;
            }
            _loc3_.text = §2$0§.MULTIPLIER_STRING + §9#%§.§##W§(_loc12_);
            if((_loc13_ = §'"+§["MovieClip_Icon_VirtualCurrency"]) && §3$@§.currencyID != "IVC")
            {
               _loc13_.visible = false;
               _loc3_.text = dataModel.currencyModel.getPriceTag(_loc12_,true,"",§3$@§.currencyID);
            }
            else
            {
               _loc13_.visible = !this.§1!#§;
            }
            _loc3_.visible = _loc10_.visible = !this.§1!#§;
            _loc3_.mouseEnabled = _loc6_.mouseEnabled = _loc13_.mouseEnabled = _loc7_.mouseEnabled = this.§1!#§;
            _loc6_.mouseChildren = false;
            (_loc14_ = §'"+§["buy" + _loc2_]).mouseEnabled = false;
            if(!this.§1!#§)
            {
               _loc10_.addEventListener(MouseEvent.CLICK,§^0§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OVER,this.§=#M§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_DOWN,this.§1-§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_UP,this.§@#_§,false,0,true);
               _loc10_.addEventListener(MouseEvent.MOUSE_OUT,this.§&G§,false,0,true);
            }
            else
            {
               _loc11_.visible = false;
            }
            §-"6§.push(_loc14_);
            if(!this.§1!#§ && §3$@§.isOnSale)
            {
               _loc16_ = new (_loc15_ = §6$A§.§1!m§("Tag_Sale_30percent"))();
               _loc17_ = §3$@§.getPricePoint(_loc1_).campaignSalePercentage;
               (_loc16_.getChildByName("Percentage") as TextField).text = "-" + _loc17_ + "%";
               _loc16_.name = "Tag_Sale_30percent";
               _loc16_.x = §set §;
               _loc16_.y = §7!7§;
               §'"+§.addChild(_loc16_);
            }
            else if((_loc16_ = §'"+§.getChildByName("Tag_Sale_30percent") as MovieClip) && _loc16_.parent)
            {
               _loc16_.parent.removeChild(_loc16_);
            }
            _loc1_++;
         }
      }
      
      public function §#s§() : Boolean
      {
         return this.§1!#§;
      }
      
      private function §=#M§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §1-§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(3);
      }
      
      private function §@#_§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function §&G§(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).gotoAndStop(1);
      }
   }
}
