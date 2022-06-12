package §5" §
{
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §&!_§.§4!H§;
   import §&!_§.§9#%§;
   import §-;§.§+"d§;
   import §6t§.§+=§;
   import §7R§.§ #`§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §2$0§ extends EventDispatcher
   {
      
      public static var MULTIPLIER_STRING:String = "x ";
      
      private static const §set §:int = -144;
      
      private static const §7!7§:int = -99;
       
      
      protected var §3!Q§:String;
      
      protected var §3$@§:§=n§;
      
      protected var §!?§:String;
      
      protected var §2#q§:MovieClip;
      
      protected var §8#q§:MovieClip;
      
      protected var §-"6§:Array;
      
      protected var §,"w§:String;
      
      protected var §1h§:int;
      
      public function §2$0§(param1:§=n§, param2:String, param3:String, param4:MovieClip, param5:String, param6:int = 5)
      {
         super();
         this.§3$@§ = param1;
         this.§3!Q§ = param2;
         this.§!?§ = param3;
         this.§8#q§ = param4;
         this.§,"w§ = param5;
         this.§1h§ = param6;
         if(this.§8#q§.active)
         {
            this.§8#q§.active.visible = false;
         }
         this.§'!r§();
         if(param1.id == §+"d§.§;#N§.§1#7§)
         {
            this.§8#q§.tagForNumberOfPowerups.visible = param1.id != §+"d§.§;#N§.§1#7§;
         }
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      private function §7#d§(param1:MouseEvent) : void
      {
         this.§'"+§.easterEgg1Button.visible = false;
         (dataModel.userProgress as § #`§).§#y§("1000-1");
      }
      
      private function §>#b§() : void
      {
         if(!(dataModel.userProgress as § #`§).§^!^§("1000-1"))
         {
            this.§'"+§.easterEgg1Button.visible = true;
            this.§'"+§.easterEgg1Button.addEventListener(MouseEvent.CLICK,this.§7#d§);
         }
         else
         {
            this.§'"+§.easterEgg1Button.visible = false;
         }
      }
      
      protected function §'!r§() : void
      {
         if(this.§6!-§.id == §+"d§.§<!Y§)
         {
            this.§>#b§();
         }
         this.§0!;§();
         this.§#"?§();
         this.§&"`§();
         this.refreshItemCount();
         this.createButtons();
      }
      
      protected function §&"`§() : void
      {
         this.§8#q§.iconContainer.addChild(this.icon);
         this.§8#q§.buttonMode = true;
         this.§8#q§.mouseChildren = false;
         if(this.§8#q§.infinity)
         {
            this.§8#q§.infinity.visible = false;
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
         this.§-"6§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < this.§1h§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = this.§'"+§["price" + _loc2_];
            _loc4_ = this.§'"+§["amount" + _loc2_];
            _loc5_ = this.§'"+§["icon" + _loc2_];
            _loc3_.text = §9#%§.§##W§(this.§3$@§.getPricePoint(_loc1_).price);
            _loc4_.text = MULTIPLIER_STRING + §9#%§.§##W§(this.§3$@§.getPricePoint(_loc1_).totalQuantity);
            _loc3_.mouseEnabled = _loc4_.mouseEnabled = _loc5_.mouseEnabled = false;
            _loc5_.mouseChildren = false;
            (_loc6_ = this.§'"+§["buy" + _loc2_]).addEventListener(MouseEvent.CLICK,this.§^0§);
            this.§-"6§.push(_loc6_);
            if(this.§3$@§.getPricePoint(_loc1_).campaignPrice > 0)
            {
               (_loc8_ = new (_loc7_ = §6$A§.§1!m§("Tag_Sale_percent"))()).x = _loc6_.x + §set §;
               _loc8_.y = _loc6_.y + §7!7§;
               (_loc8_.getChildByName("Sale_Percentage") as TextField).text = "-" + this.§3$@§.getPricePoint(_loc1_).campaignSalePercentage + "%";
               this.§'"+§.addChild(_loc8_);
               _loc3_.text = §9#%§.§##W§(this.§3$@§.getPricePoint(_loc1_).campaignPrice);
               (_loc10_ = new (_loc9_ = §6$A§.§1!m§("Tag_Sale_OldPrice"))()).x = _loc6_.x + _loc6_.width * 0.5 - _loc10_.width - 25;
               _loc10_.y = _loc6_.y + _loc6_.height * 0.5 - _loc10_.height - 45;
               (_loc10_.getChildByName("former_cost") as TextField).text = §9#%§.§##W§(this.§3$@§.getPricePoint(_loc1_).price);
               this.§'"+§.addChild(_loc10_);
            }
            else if(this.§3$@§.getPricePoint(_loc1_).§^!B§ > 0)
            {
               (_loc12_ = new (_loc11_ = §6$A§.§1!m§("Tag_Powerup_Free_Quantity"))()).amount.text = this.§3$@§.getPricePoint(_loc1_).§^!B§;
               _loc12_.x = _loc6_.x + _loc6_.width * 0.5 - _loc12_.width * 0.8;
               _loc12_.y = _loc6_.y - _loc6_.height * 0.5 - _loc12_.height * 0.25;
               _loc12_.mouseEnabled = false;
               _loc12_.mouseChildren = false;
               this.§'"+§.addChild(_loc12_);
            }
            _loc1_++;
         }
      }
      
      protected function §^0§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:SimpleButton = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc3_:int = 0;
         for each(_loc4_ in this.§-"6§)
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
         _loc7_ = TabbedShopPopup.§[#^§;
         if(this is §7!'§)
         {
            _loc7_ = TabbedShopPopup.§"!g§;
         }
         else if(this is §'R§)
         {
            _loc7_ = TabbedShopPopup.§+!A§;
         }
         dispatchEvent(new §+=§(§+=§.§-#D§,_loc7_,false,false,this.§3$@§,this.§3$@§.getPricePoint(_loc2_),new Point(_loc5_,_loc6_)));
      }
      
      public function refreshItemCount() : void
      {
         var _loc1_:int = § $?§.§`"H§.§0#s§(this.§6!-§.id,false);
         this.§8#q§.tagForNumberOfPowerups.visible = this.§6!-§.id != §+"d§.§;#N§.§1#7§;
         this.§8#q§.tagForNumberOfPowerups.numberOfPowerups.text = §4!H§.§9!-§(_loc1_);
      }
      
      protected function §0!;§() : void
      {
         this.§8#q§.addEventListener(MouseEvent.CLICK,this.§?"V§);
         this.§8#q§.addEventListener(MouseEvent.ROLL_OVER,this.§1!n§);
         this.§8#q§.addEventListener(MouseEvent.ROLL_OUT,this.§#"?§);
      }
      
      protected function §;!4§() : void
      {
         this.§8#q§.removeEventListener(MouseEvent.CLICK,this.§?"V§);
         this.§8#q§.removeEventListener(MouseEvent.ROLL_OVER,this.§1!n§);
         this.§8#q§.removeEventListener(MouseEvent.ROLL_OUT,this.§#"?§);
      }
      
      protected function §?"V§(param1:MouseEvent) : void
      {
         dispatchEvent(new §+=§(§+=§.§+!P§,TabbedShopPopup.§[#^§));
      }
      
      protected function §1!n§(param1:MouseEvent) : void
      {
         this.§8#q§.gotoAndStop("MouseOver");
      }
      
      protected function §#"?§(param1:MouseEvent = null) : void
      {
         this.§8#q§.gotoAndStop("Normal");
      }
      
      public function §throw§() : void
      {
         this.§8#q§.gotoAndStop("Normal");
         this.§0!;§();
      }
      
      public function select() : void
      {
         this.§8#q§.gotoAndStop("Selected");
         this.§;!4§();
      }
      
      public function get §6!-§() : §=n§
      {
         return this.§3$@§;
      }
      
      public function get §'"+§() : MovieClip
      {
         if(this.§2#q§)
         {
            return this.§2#q§;
         }
         var _loc1_:Class = §6$A§.§1!m§(this.§!?§);
         this.§2#q§ = new _loc1_();
         return this.§2#q§;
      }
      
      private function get icon() : MovieClip
      {
         var _loc1_:Class = §6$A§.§1!m§(this.§3!Q§);
         return new _loc1_();
      }
      
      public function dispose() : void
      {
      }
   }
}
