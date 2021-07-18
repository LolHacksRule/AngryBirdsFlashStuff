package §"!U§
{
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §'"-§.§`j§;
   import §4q§.§!#Q§;
   import §>!#§.§9#a§;
   import §>!#§.§]#§;
   import §^$4§.§&6§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class § !3§ extends EventDispatcher
   {
      
      public static var MULTIPLIER_STRING:String = "x ";
      
      private static const §""U§:int = -144;
      
      private static const §5s§:int = -99;
       
      
      protected var §2"[§:String;
      
      protected var §""Q§:§=#V§;
      
      protected var §9"R§:String;
      
      protected var §+i§:MovieClip;
      
      protected var §-#5§:MovieClip;
      
      protected var §5!2§:Array;
      
      protected var §6c§:String;
      
      protected var §+k§:int;
      
      public function § !3§(param1:§=#V§, param2:String, param3:String, param4:MovieClip, param5:String, param6:int = 5)
      {
         super();
         this.§""Q§ = param1;
         this.§2"[§ = param2;
         this.§9"R§ = param3;
         this.§-#5§ = param4;
         this.§6c§ = param5;
         this.§+k§ = param6;
         if(this.§-#5§.active)
         {
            this.§-#5§.active.visible = false;
         }
         this.§!!6§();
         if(param1.id == §`j§.§+#4§.§"!E§)
         {
            this.§-#5§.tagForNumberOfPowerups.visible = param1.id != §`j§.§+#4§.§"!E§;
         }
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      private function §[!O§(param1:MouseEvent) : void
      {
         this.§9",§.easterEgg1Button.visible = false;
         (dataModel.userProgress as §!#Q§).§ R§("1000-1");
      }
      
      private function §in §() : void
      {
         if(!(dataModel.userProgress as §!#Q§).§9"C§("1000-1"))
         {
            this.§9",§.easterEgg1Button.visible = true;
            this.§9",§.easterEgg1Button.addEventListener(MouseEvent.CLICK,this.§[!O§);
         }
         else
         {
            this.§9",§.easterEgg1Button.visible = false;
         }
      }
      
      protected function §!!6§() : void
      {
         if(this.§^$2§.id == §`j§.§8!3§)
         {
            this.§in §();
         }
         this.§+!T§();
         this.§8!n§();
         this.§9K§();
         this.refreshItemCount();
         this.createButtons();
      }
      
      protected function §9K§() : void
      {
         this.§-#5§.iconContainer.addChild(this.icon);
         this.§-#5§.buttonMode = true;
         this.§-#5§.mouseChildren = false;
         if(this.§-#5§.infinity)
         {
            this.§-#5§.infinity.visible = false;
         }
      }
      
      protected function createButtons() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = null;
         var _loc4_:TextField = null;
         var _loc5_:MovieClip = null;
         var _loc6_:SimpleButton = null;
         null;
         var _loc8_:MovieClip = null;
         null;
         var _loc10_:MovieClip = null;
         null;
         var _loc12_:MovieClip = null;
         this.§5!2§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < this.§+k§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = this.§9",§["price" + _loc2_];
            _loc4_ = this.§9",§["amount" + _loc2_];
            _loc5_ = this.§9",§["icon" + _loc2_];
            _loc3_.text = §9#a§.§^#&§(this.§""Q§.getPricePoint(_loc1_).price);
            _loc4_.text = MULTIPLIER_STRING + §9#a§.§^#&§(this.§""Q§.getPricePoint(_loc1_).totalQuantity - this.§""Q§.getPricePoint(_loc1_).§8=§);
            _loc3_.mouseEnabled = _loc4_.mouseEnabled = _loc5_.mouseEnabled = false;
            _loc5_.mouseChildren = false;
            (_loc6_ = this.§9",§["buy" + _loc2_]).addEventListener(MouseEvent.CLICK,this.§6!D§);
            this.§5!2§.push(_loc6_);
            if(this.§""Q§.getPricePoint(_loc1_).campaignPrice > 0)
            {
               (_loc8_ = new §@`§.§4!i§("Tag_Sale_percent")()).x = _loc6_.x + §""U§;
               _loc8_.y = _loc6_.y + §5s§;
               (_loc8_.getChildByName("Sale_Percentage") as TextField).text = "-" + this.§""Q§.getPricePoint(_loc1_).campaignSalePercentage + "%";
               this.§9",§.addChild(_loc8_);
               _loc3_.text = §9#a§.§^#&§(this.§""Q§.getPricePoint(_loc1_).campaignPrice);
               (_loc10_ = new §@`§.§4!i§("Tag_Sale_OldPrice")()).x = _loc6_.x + _loc6_.width * 0.5 - _loc10_.width - 25;
               _loc10_.y = _loc6_.y + _loc6_.height * 0.5 - _loc10_.height - 45;
               (_loc10_.getChildByName("former_cost") as TextField).text = §9#a§.§^#&§(this.§""Q§.getPricePoint(_loc1_).price);
               this.§9",§.addChild(_loc10_);
            }
            else if(this.§""Q§.getPricePoint(_loc1_).§8=§ > 0)
            {
               (_loc12_ = new §@`§.§4!i§("Tag_Powerup_Free_Quantity_" + (_loc1_ + 1))()).amount.text = "+" + this.§""Q§.getPricePoint(_loc1_).§8=§;
               _loc12_.x = _loc6_.x + _loc6_.width * 0.5 - _loc12_.width * 0.8;
               _loc12_.y = _loc6_.y - _loc6_.height * 0.5 - _loc12_.height * 0.25;
               _loc12_.mouseEnabled = false;
               _loc12_.mouseChildren = false;
               this.§9",§.addChild(_loc12_);
            }
            _loc1_++;
         }
      }
      
      protected function §6!D§(param1:MouseEvent) : void
      {
         null;
         var _loc3_:int = 0;
         var _loc5_:SimpleButton = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         var _loc4_:int = 0;
         for each(_loc5_ in this.§5!2§)
         {
            if(_loc5_ == param1.currentTarget)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         _loc6_ = _loc5_.x + _loc5_.width * 0.5;
         _loc7_ = _loc5_.y - _loc5_.height * 0.5;
         _loc8_ = TabbedShopPopup.§%C§;
         if(this is §"J§)
         {
            _loc8_ = TabbedShopPopup.§ !§;
         }
         else if(this is §4#b§)
         {
            _loc8_ = TabbedShopPopup.§5U§;
         }
         dispatchEvent(new §&6§(§&6§.§'#S§,_loc8_,false,false,this.§""Q§,this.§""Q§.getPricePoint(_loc3_),new Point(_loc6_,_loc7_)));
      }
      
      public function refreshItemCount() : void
      {
         var _loc1_:int = §%h§.§3!]§.§7#S§(this.§^$2§.id,false);
         this.§-#5§.tagForNumberOfPowerups.visible = this.§^$2§.id != §`j§.§+#4§.§"!E§;
         this.§-#5§.tagForNumberOfPowerups.numberOfPowerups.text = §]#§.§`" §(_loc1_);
      }
      
      protected function §+!T§() : void
      {
         this.§-#5§.addEventListener(MouseEvent.CLICK,this.§^%§);
         this.§-#5§.addEventListener(MouseEvent.ROLL_OVER,this.§`!D§);
         this.§-#5§.addEventListener(MouseEvent.ROLL_OUT,this.§8!n§);
      }
      
      protected function §;!'§() : void
      {
         this.§-#5§.removeEventListener(MouseEvent.CLICK,this.§^%§);
         this.§-#5§.removeEventListener(MouseEvent.ROLL_OVER,this.§`!D§);
         this.§-#5§.removeEventListener(MouseEvent.ROLL_OUT,this.§8!n§);
      }
      
      protected function §^%§(param1:MouseEvent) : void
      {
         dispatchEvent(new §&6§(§&6§.§>#O§,TabbedShopPopup.§%C§));
      }
      
      protected function §`!D§(param1:MouseEvent) : void
      {
         this.§-#5§.gotoAndStop("MouseOver");
      }
      
      protected function §8!n§(param1:MouseEvent = null) : void
      {
         this.§-#5§.gotoAndStop("Normal");
      }
      
      public function §!!?§() : void
      {
         this.§-#5§.gotoAndStop("Normal");
         this.§+!T§();
      }
      
      public function select() : void
      {
         this.§-#5§.gotoAndStop("Selected");
         this.§;!'§();
      }
      
      public function get §^$2§() : §=#V§
      {
         return this.§""Q§;
      }
      
      public function get §9",§() : MovieClip
      {
         if(this.§+i§)
         {
            return this.§+i§;
         }
         var _loc1_:Class = §@`§.§4!i§(this.§9"R§);
         this.§+i§ = new _loc1_();
         return this.§+i§;
      }
      
      private function get icon() : MovieClip
      {
         var _loc1_:Class = §@`§.§4!i§(this.§2"[§);
         return new _loc1_();
      }
      
      public function dispose() : void
      {
      }
   }
}
