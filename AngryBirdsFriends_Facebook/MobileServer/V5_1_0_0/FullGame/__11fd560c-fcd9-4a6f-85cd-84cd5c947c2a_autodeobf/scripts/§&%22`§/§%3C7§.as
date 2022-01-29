package §&"`§
{
   import §&$!§.§%#k§;
   import §-!S§.§##>§;
   import §2"5§.include;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §`7§.§!"b§;
   import §`7§.§9U§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §<7§ extends EventDispatcher
   {
      
      public static var MULTIPLIER_STRING:String = "x ";
      
      private static const §]#`§:int = -144;
      
      private static const §5#N§:int = -99;
       
      
      protected var §4#6§:String;
      
      protected var §!!b§:§"#x§;
      
      protected var §-?§:String;
      
      protected var §#!e§:MovieClip;
      
      protected var §3!5§:MovieClip;
      
      protected var §%!w§:Array;
      
      protected var §'#o§:String;
      
      protected var §;#h§:int;
      
      public function §<7§(param1:§"#x§, param2:String, param3:String, param4:MovieClip, param5:String, param6:int = 5)
      {
         super();
         this.§!!b§ = param1;
         this.§4#6§ = param2;
         this.§-?§ = param3;
         this.§3!5§ = param4;
         this.§'#o§ = param5;
         this.§;#h§ = param6;
         if(this.§3!5§.active)
         {
            this.§3!5§.active.visible = false;
         }
         this.§;#4§();
         if(param1.id == §%#k§.§[=§.§5"g§)
         {
            this.§3!5§.tagForNumberOfPowerups.visible = param1.id != §%#k§.§[=§.§5"g§;
         }
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      private function §&"&§(param1:MouseEvent) : void
      {
         this.§4#@§.easterEgg1Button.visible = false;
         (dataModel.userProgress as §##>§).§8$,§("1000-1");
      }
      
      private function §=$5§() : void
      {
         if(!(dataModel.userProgress as §##>§).§44§("1000-1"))
         {
            this.§4#@§.easterEgg1Button.visible = true;
            this.§4#@§.easterEgg1Button.addEventListener(MouseEvent.CLICK,this.§&"&§);
         }
         else
         {
            this.§4#@§.easterEgg1Button.visible = false;
         }
      }
      
      protected function §;#4§() : void
      {
         if(this.§2"X§.id == §%#k§.§6#%§)
         {
            this.§=$5§();
         }
         this.§09§();
         this.§+#3§();
         this.§9#n§();
         this.refreshItemCount();
         this.createButtons();
      }
      
      protected function §9#n§() : void
      {
         this.§3!5§.iconContainer.addChild(this.icon);
         this.§3!5§.buttonMode = true;
         this.§3!5§.mouseChildren = false;
         if(this.§3!5§.infinity)
         {
            this.§3!5§.infinity.visible = false;
         }
      }
      
      protected function createButtons() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = null;
         var _loc4_:TextField = null;
         var _loc5_:MovieClip = null;
         var _loc6_:SimpleButton = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:Class = null;
         var _loc10_:MovieClip = null;
         var _loc11_:Class = null;
         var _loc12_:MovieClip = null;
         this.§%!w§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < this.§;#h§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = this.§4#@§["price" + _loc2_];
            _loc4_ = this.§4#@§["amount" + _loc2_];
            _loc5_ = this.§4#@§["icon" + _loc2_];
            _loc3_.text = §!"b§.§@]§(this.§!!b§.getPricePoint(_loc1_).price);
            _loc4_.text = MULTIPLIER_STRING + §!"b§.§@]§(this.§!!b§.getPricePoint(_loc1_).totalQuantity);
            _loc3_.mouseEnabled = _loc4_.mouseEnabled = _loc5_.mouseEnabled = false;
            _loc5_.mouseChildren = false;
            (_loc6_ = this.§4#@§["buy" + _loc2_]).addEventListener(MouseEvent.CLICK,this.§^#]§);
            this.§%!w§.push(_loc6_);
            if(this.§!!b§.getPricePoint(_loc1_).campaignPrice > 0)
            {
               (_loc8_ = new (_loc7_ = §!"f§.§##?§("Tag_Sale_percent"))()).x = _loc6_.x + §]#`§;
               _loc8_.y = _loc6_.y + §5#N§;
               (_loc8_.getChildByName("Sale_Percentage") as TextField).text = "-" + this.§!!b§.getPricePoint(_loc1_).campaignSalePercentage + "%";
               this.§4#@§.addChild(_loc8_);
               _loc3_.text = §!"b§.§@]§(this.§!!b§.getPricePoint(_loc1_).campaignPrice);
               (_loc10_ = new (_loc9_ = §!"f§.§##?§("Tag_Sale_OldPrice"))()).x = _loc6_.x + _loc6_.width * 0.5 - _loc10_.width - 25;
               _loc10_.y = _loc6_.y + _loc6_.height * 0.5 - _loc10_.height - 45;
               (_loc10_.getChildByName("former_cost") as TextField).text = §!"b§.§@]§(this.§!!b§.getPricePoint(_loc1_).price);
               this.§4#@§.addChild(_loc10_);
            }
            else if(this.§!!b§.getPricePoint(_loc1_).§&!m§ > 0)
            {
               (_loc12_ = new (_loc11_ = §!"f§.§##?§("Tag_Powerup_Free_Quantity"))()).amount.text = this.§!!b§.getPricePoint(_loc1_).§&!m§;
               _loc12_.x = _loc6_.x + _loc6_.width * 0.5 - _loc12_.width * 0.8;
               _loc12_.y = _loc6_.y - _loc6_.height * 0.5 - _loc12_.height * 0.25;
               _loc12_.mouseEnabled = false;
               _loc12_.mouseChildren = false;
               this.§4#@§.addChild(_loc12_);
            }
            _loc1_++;
         }
      }
      
      protected function §^#]§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:SimpleButton = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc3_:int = 0;
         for each(_loc4_ in this.§%!w§)
         {
            if(_loc4_ == param1.currentTarget)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         _loc5_ = _loc4_.x + _loc4_.width * 0.5;
         _loc6_ = _loc4_.y - _loc4_.height * 0.5;
         _loc7_ = TabbedShopPopup.§!"e§;
         if(this is §'%§)
         {
            _loc7_ = TabbedShopPopup.§!#O§;
         }
         else if(this is §&!Y§)
         {
            _loc7_ = TabbedShopPopup.§?#-§;
         }
         dispatchEvent(new include(include.§@"s§,_loc7_,false,false,this.§!!b§,this.§!!b§.getPricePoint(_loc2_),new Point(_loc5_,_loc6_)));
      }
      
      public function refreshItemCount() : void
      {
         var _loc1_:int = §-#+§.§6!§.§=b§(this.§2"X§.id,false);
         this.§3!5§.tagForNumberOfPowerups.visible = this.§2"X§.id != §%#k§.§[=§.§5"g§;
         this.§3!5§.tagForNumberOfPowerups.numberOfPowerups.text = §9U§.§7",§(_loc1_);
      }
      
      protected function §09§() : void
      {
         this.§3!5§.addEventListener(MouseEvent.CLICK,this.§-!K§);
         this.§3!5§.addEventListener(MouseEvent.ROLL_OVER,this.§["m§);
         this.§3!5§.addEventListener(MouseEvent.ROLL_OUT,this.§+#3§);
      }
      
      protected function §3#f§() : void
      {
         this.§3!5§.removeEventListener(MouseEvent.CLICK,this.§-!K§);
         this.§3!5§.removeEventListener(MouseEvent.ROLL_OVER,this.§["m§);
         this.§3!5§.removeEventListener(MouseEvent.ROLL_OUT,this.§+#3§);
      }
      
      protected function §-!K§(param1:MouseEvent) : void
      {
         dispatchEvent(new include(include.§#]§,TabbedShopPopup.§!"e§));
      }
      
      protected function §["m§(param1:MouseEvent) : void
      {
         this.§3!5§.gotoAndStop("MouseOver");
      }
      
      protected function §+#3§(param1:MouseEvent = null) : void
      {
         this.§3!5§.gotoAndStop("Normal");
      }
      
      public function §!#z§() : void
      {
         this.§3!5§.gotoAndStop("Normal");
         this.§09§();
      }
      
      public function select() : void
      {
         this.§3!5§.gotoAndStop("Selected");
         this.§3#f§();
      }
      
      public function get §2"X§() : §"#x§
      {
         return this.§!!b§;
      }
      
      public function get §4#@§() : MovieClip
      {
         if(this.§#!e§)
         {
            return this.§#!e§;
         }
         var _loc1_:Class = §!"f§.§##?§(this.§-?§);
         this.§#!e§ = new _loc1_();
         return this.§#!e§;
      }
      
      private function get icon() : MovieClip
      {
         var _loc1_:Class = §!"f§.§##?§(this.§4#6§);
         return new _loc1_();
      }
      
      public function dispose() : void
      {
      }
   }
}
