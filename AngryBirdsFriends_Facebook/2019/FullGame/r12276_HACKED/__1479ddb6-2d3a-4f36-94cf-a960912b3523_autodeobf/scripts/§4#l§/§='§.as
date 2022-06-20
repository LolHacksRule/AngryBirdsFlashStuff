package §4#l§
{
   import §+Z§.§1"@§;
   import §-"S§.§>#G§;
   import §2E§.§,!8§;
   import §2E§.§6#T§;
   import §<"I§.§<$B§;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §='§ extends EventDispatcher
   {
      
      public static var MULTIPLIER_STRING:String = "x ";
      
      private static const §'9§:int = -144;
      
      private static const §,!;§:int = -99;
       
      
      protected var §%#D§:String;
      
      protected var §=#Q§:§8#E§;
      
      protected var §5"o§:String;
      
      protected var §[l§:MovieClip;
      
      protected var §&+§:MovieClip;
      
      protected var §%"y§:Array;
      
      protected var §7!O§:String;
      
      protected var §>"a§:int;
      
      public function §='§(param1:§8#E§, param2:String, param3:String, param4:MovieClip, param5:String, param6:int = 5)
      {
         super();
         this.§=#Q§ = param1;
         this.§%#D§ = param2;
         this.§5"o§ = param3;
         this.§&+§ = param4;
         this.§7!O§ = param5;
         this.§>"a§ = param6;
         if(this.§&+§.active)
         {
            this.§&+§.active.visible = false;
         }
         this.§7!I§();
         if(param1.id == §<$B§.§@!&§.§=#@§)
         {
            this.§&+§.tagForNumberOfPowerups.visible = param1.id != §<$B§.§@!&§.§=#@§;
         }
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      private function §`p§(param1:MouseEvent) : void
      {
         this.§'$1§.easterEgg1Button.visible = false;
         (dataModel.userProgress as §>#G§).§9#0§("1000-1");
      }
      
      private function §%$&§() : void
      {
         if(!(dataModel.userProgress as §>#G§).§3"^§("1000-1"))
         {
            this.§'$1§.easterEgg1Button.visible = true;
            this.§'$1§.easterEgg1Button.addEventListener(MouseEvent.CLICK,this.§`p§);
         }
         else
         {
            this.§'$1§.easterEgg1Button.visible = false;
         }
      }
      
      protected function §7!I§() : void
      {
         if(this.§"^§.id == §<$B§.§3M§)
         {
            this.§%$&§();
         }
         this.§3k§();
         this.§4r§();
         this.§=p§();
         this.refreshItemCount();
         this.createButtons();
      }
      
      protected function §=p§() : void
      {
         this.§&+§.iconContainer.addChild(this.icon);
         this.§&+§.buttonMode = true;
         this.§&+§.mouseChildren = false;
         if(this.§&+§.infinity)
         {
            this.§&+§.infinity.visible = false;
         }
      }
      
      protected function createButtons() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = null;
         var _loc4_:TextField = null;
         var _loc5_:MovieClip = null;
         var _loc6_:SimpleButton = null;
         var _loc8_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc12_:MovieClip = null;
         this.§%"y§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < this.§>"a§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = this.§'$1§["price" + _loc2_];
            _loc4_ = this.§'$1§["amount" + _loc2_];
            _loc5_ = this.§'$1§["icon" + _loc2_];
            _loc3_.text = §,!8§.§1"h§(this.§=#Q§.getPricePoint(_loc1_).price);
            _loc4_.text = MULTIPLIER_STRING + §,!8§.§1"h§(this.§=#Q§.getPricePoint(_loc1_).totalQuantity);
            _loc3_.mouseEnabled = _loc4_.mouseEnabled = _loc5_.mouseEnabled = false;
            _loc5_.mouseChildren = false;
            (_loc6_ = this.§'$1§["buy" + _loc2_]).addEventListener(MouseEvent.CLICK,this.§]!,§);
            this.§%"y§.push(_loc6_);
            if(this.§=#Q§.getPricePoint(_loc1_).campaignPrice > 0)
            {
               (_loc8_ = new §=@§.§9!x§("Tag_Sale_percent")()).x = _loc6_.x + §'9§;
               _loc8_.y = _loc6_.y + §,!;§;
               (_loc8_.getChildByName("Sale_Percentage") as TextField).text = "-" + this.§=#Q§.getPricePoint(_loc1_).campaignSalePercentage + "%";
               this.§'$1§.addChild(_loc8_);
               _loc3_.text = §,!8§.§1"h§(this.§=#Q§.getPricePoint(_loc1_).campaignPrice);
               (_loc10_ = new §=@§.§9!x§("Tag_Sale_OldPrice")()).x = _loc6_.x + _loc6_.width * 0.5 - _loc10_.width - 25;
               _loc10_.y = _loc6_.y + _loc6_.height * 0.5 - _loc10_.height - 45;
               (_loc10_.getChildByName("former_cost") as TextField).text = §,!8§.§1"h§(this.§=#Q§.getPricePoint(_loc1_).price);
               this.§'$1§.addChild(_loc10_);
            }
            else if(this.§=#Q§.getPricePoint(_loc1_).§%"X§ > 0)
            {
               (_loc12_ = new §=@§.§9!x§("Tag_Powerup_Free_Quantity")()).amount.text = this.§=#Q§.getPricePoint(_loc1_).§%"X§;
               _loc12_.x = _loc6_.x + _loc6_.width * 0.5 - _loc12_.width * 0.8;
               _loc12_.y = _loc6_.y - _loc6_.height * 0.5 - _loc12_.height * 0.25;
               _loc12_.mouseEnabled = false;
               _loc12_.mouseChildren = false;
               this.§'$1§.addChild(_loc12_);
            }
            _loc1_++;
         }
      }
      
      protected function §]!,§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:SimpleButton = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc3_:int = 0;
         for each(_loc4_ in this.§%"y§)
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
         _loc7_ = TabbedShopPopup.§"5§;
         if(this is §+%§)
         {
            _loc7_ = TabbedShopPopup.§[!4§;
         }
         else if(this is §8"o§)
         {
            _loc7_ = TabbedShopPopup.§1"d§;
         }
         dispatchEvent(new §1"@§(§1"@§.§1+§,_loc7_,false,false,this.§=#Q§,this.§=#Q§.getPricePoint(_loc2_),new Point(_loc5_,_loc6_)));
      }
      
      public function refreshItemCount() : void
      {
         var _loc1_:int = §!",§.§3"1§.§2![§(this.§"^§.id,false);
         this.§&+§.tagForNumberOfPowerups.visible = this.§"^§.id != §<$B§.§@!&§.§=#@§;
         this.§&+§.tagForNumberOfPowerups.numberOfPowerups.text = §6#T§.§1$E§(_loc1_);
      }
      
      protected function §3k§() : void
      {
         this.§&+§.addEventListener(MouseEvent.CLICK,this.§#!O§);
         this.§&+§.addEventListener(MouseEvent.ROLL_OVER,this.§="j§);
         this.§&+§.addEventListener(MouseEvent.ROLL_OUT,this.§4r§);
      }
      
      protected function §4#,§() : void
      {
         this.§&+§.removeEventListener(MouseEvent.CLICK,this.§#!O§);
         this.§&+§.removeEventListener(MouseEvent.ROLL_OVER,this.§="j§);
         this.§&+§.removeEventListener(MouseEvent.ROLL_OUT,this.§4r§);
      }
      
      protected function §#!O§(param1:MouseEvent) : void
      {
         dispatchEvent(new §1"@§(§1"@§.§3$9§,TabbedShopPopup.§"5§));
      }
      
      protected function §="j§(param1:MouseEvent) : void
      {
         this.§&+§.gotoAndStop("MouseOver");
      }
      
      protected function §4r§(param1:MouseEvent = null) : void
      {
         this.§&+§.gotoAndStop("Normal");
      }
      
      public function §2!9§() : void
      {
         this.§&+§.gotoAndStop("Normal");
         this.§3k§();
      }
      
      public function select() : void
      {
         this.§&+§.gotoAndStop("Selected");
         this.§4#,§();
      }
      
      public function get §"^§() : §8#E§
      {
         return this.§=#Q§;
      }
      
      public function get §'$1§() : MovieClip
      {
         if(this.§[l§)
         {
            return this.§[l§;
         }
         var _loc1_:Class = §=@§.§9!x§(this.§5"o§);
         this.§[l§ = new _loc1_();
         return this.§[l§;
      }
      
      private function get icon() : MovieClip
      {
         var _loc1_:Class = §=@§.§9!x§(this.§%#D§);
         return new _loc1_();
      }
      
      public function dispose() : void
      {
      }
   }
}
