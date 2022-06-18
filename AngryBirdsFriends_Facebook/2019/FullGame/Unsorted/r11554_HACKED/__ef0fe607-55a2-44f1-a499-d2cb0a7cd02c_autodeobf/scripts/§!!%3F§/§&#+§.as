package §!!?§
{
   import §#!E§.§2#Q§;
   import §+#B§.§""D§;
   import §+#B§.§2#&§;
   import §-#R§.§0!w§;
   import §5"c§.§&#R§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §&#+§ extends EventDispatcher
   {
      
      public static var MULTIPLIER_STRING:String = "x ";
      
      private static const §]8§:int = -144;
      
      private static const §[#$§:int = -99;
       
      
      protected var §&E§:String;
      
      protected var §'$$§:§,!K§;
      
      protected var §,!F§:String;
      
      protected var §6!C§:MovieClip;
      
      protected var §-!?§:MovieClip;
      
      protected var §"!y§:Array;
      
      protected var §`E§:String;
      
      protected var §^$9§:int;
      
      public function §&#+§(param1:§,!K§, param2:String, param3:String, param4:MovieClip, param5:String, param6:int = 5)
      {
         super();
         this.§'$$§ = param1;
         this.§&E§ = param2;
         this.§,!F§ = param3;
         this.§-!?§ = param4;
         this.§`E§ = param5;
         this.§^$9§ = param6;
         if(this.§-!?§.active)
         {
            this.§-!?§.active.visible = false;
         }
         this.§;"o§();
         if(param1.id == §0!w§.§1J§.§]'§)
         {
            this.§-!?§.tagForNumberOfPowerups.visible = param1.id != §0!w§.§1J§.§]'§;
         }
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      private function §0#Z§(param1:MouseEvent) : void
      {
         this.§^"#§.easterEgg1Button.visible = false;
         (dataModel.userProgress as §2#Q§).§?!7§("1000-1");
      }
      
      private function §]#q§() : void
      {
         if(!(dataModel.userProgress as §2#Q§).§!#h§("1000-1"))
         {
            this.§^"#§.easterEgg1Button.visible = true;
            this.§^"#§.easterEgg1Button.addEventListener(MouseEvent.CLICK,this.§0#Z§);
         }
         else
         {
            this.§^"#§.easterEgg1Button.visible = false;
         }
      }
      
      protected function §;"o§() : void
      {
         if(this.§4">§.id == §0!w§.§3#0§)
         {
            this.§]#q§();
         }
         this.§<T§();
         this.§2#t§();
         this.§8"[§();
         this.refreshItemCount();
         this.createButtons();
      }
      
      protected function §8"[§() : void
      {
         this.§-!?§.iconContainer.addChild(this.icon);
         this.§-!?§.buttonMode = true;
         this.§-!?§.mouseChildren = false;
         if(this.§-!?§.infinity)
         {
            this.§-!?§.infinity.visible = false;
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
         this.§"!y§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < this.§^$9§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = this.§^"#§["price" + _loc2_];
            _loc4_ = this.§^"#§["amount" + _loc2_];
            _loc5_ = this.§^"#§["icon" + _loc2_];
            _loc3_.text = §""D§.§"k§(this.§'$$§.getPricePoint(_loc1_).price);
            _loc4_.text = MULTIPLIER_STRING + §""D§.§"k§(this.§'$$§.getPricePoint(_loc1_).totalQuantity);
            _loc3_.mouseEnabled = _loc4_.mouseEnabled = _loc5_.mouseEnabled = false;
            _loc5_.mouseChildren = false;
            (_loc6_ = this.§^"#§["buy" + _loc2_]).addEventListener(MouseEvent.CLICK,this.§0T§);
            this.§"!y§.push(_loc6_);
            if(this.§'$$§.getPricePoint(_loc1_).campaignPrice > 0)
            {
               (_loc8_ = new §2"O§.§`>§("Tag_Sale_percent")()).x = _loc6_.x + §]8§;
               _loc8_.y = _loc6_.y + §[#$§;
               (_loc8_.getChildByName("Sale_Percentage") as TextField).text = "-" + this.§'$$§.getPricePoint(_loc1_).campaignSalePercentage + "%";
               this.§^"#§.addChild(_loc8_);
               _loc3_.text = §""D§.§"k§(this.§'$$§.getPricePoint(_loc1_).campaignPrice);
               (_loc10_ = new §2"O§.§`>§("Tag_Sale_OldPrice")()).x = _loc6_.x + _loc6_.width * 0.5 - _loc10_.width - 25;
               _loc10_.y = _loc6_.y + _loc6_.height * 0.5 - _loc10_.height - 45;
               (_loc10_.getChildByName("former_cost") as TextField).text = §""D§.§"k§(this.§'$$§.getPricePoint(_loc1_).price);
               this.§^"#§.addChild(_loc10_);
            }
            else if(this.§'$$§.getPricePoint(_loc1_).§;2§ > 0)
            {
               (_loc12_ = new §2"O§.§`>§("Tag_Powerup_Free_Quantity")()).amount.text = this.§'$$§.getPricePoint(_loc1_).§;2§;
               _loc12_.x = _loc6_.x + _loc6_.width * 0.5 - _loc12_.width * 0.8;
               _loc12_.y = _loc6_.y - _loc6_.height * 0.5 - _loc12_.height * 0.25;
               _loc12_.mouseEnabled = false;
               _loc12_.mouseChildren = false;
               this.§^"#§.addChild(_loc12_);
            }
            _loc1_++;
         }
      }
      
      protected function §0T§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:SimpleButton = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc3_:int = 0;
         for each(_loc4_ in this.§"!y§)
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
         _loc7_ = TabbedShopPopup.§`!Q§;
         if(this is §'M§)
         {
            _loc7_ = TabbedShopPopup.§4Y§;
         }
         else if(this is §3g§)
         {
            _loc7_ = TabbedShopPopup.§@$<§;
         }
         dispatchEvent(new §&#R§(§&#R§.§+!a§,_loc7_,false,false,this.§'$$§,this.§'$$§.getPricePoint(_loc2_),new Point(_loc5_,_loc6_)));
      }
      
      public function refreshItemCount() : void
      {
         var _loc1_:int = §#$D§.§?q§.§<"M§(this.§4">§.id,false);
         this.§-!?§.tagForNumberOfPowerups.visible = this.§4">§.id != §0!w§.§1J§.§]'§;
         this.§-!?§.tagForNumberOfPowerups.numberOfPowerups.text = §2#&§.§9"Q§(_loc1_);
      }
      
      protected function §<T§() : void
      {
         this.§-!?§.addEventListener(MouseEvent.CLICK,this.§8!0§);
         this.§-!?§.addEventListener(MouseEvent.ROLL_OVER,this.§"#_§);
         this.§-!?§.addEventListener(MouseEvent.ROLL_OUT,this.§2#t§);
      }
      
      protected function §&$,§() : void
      {
         this.§-!?§.removeEventListener(MouseEvent.CLICK,this.§8!0§);
         this.§-!?§.removeEventListener(MouseEvent.ROLL_OVER,this.§"#_§);
         this.§-!?§.removeEventListener(MouseEvent.ROLL_OUT,this.§2#t§);
      }
      
      protected function §8!0§(param1:MouseEvent) : void
      {
         dispatchEvent(new §&#R§(§&#R§.§4"V§,TabbedShopPopup.§`!Q§));
      }
      
      protected function §"#_§(param1:MouseEvent) : void
      {
         this.§-!?§.gotoAndStop("MouseOver");
      }
      
      protected function §2#t§(param1:MouseEvent = null) : void
      {
         this.§-!?§.gotoAndStop("Normal");
      }
      
      public function §]#h§() : void
      {
         this.§-!?§.gotoAndStop("Normal");
         this.§<T§();
      }
      
      public function select() : void
      {
         this.§-!?§.gotoAndStop("Selected");
         this.§&$,§();
      }
      
      public function get §4">§() : §,!K§
      {
         return this.§'$$§;
      }
      
      public function get §^"#§() : MovieClip
      {
         if(this.§6!C§)
         {
            return this.§6!C§;
         }
         var _loc1_:Class = §2"O§.§`>§(this.§,!F§);
         this.§6!C§ = new _loc1_();
         return this.§6!C§;
      }
      
      private function get icon() : MovieClip
      {
         var _loc1_:Class = §2"O§.§`>§(this.§&E§);
         return new _loc1_();
      }
      
      public function dispose() : void
      {
      }
   }
}
