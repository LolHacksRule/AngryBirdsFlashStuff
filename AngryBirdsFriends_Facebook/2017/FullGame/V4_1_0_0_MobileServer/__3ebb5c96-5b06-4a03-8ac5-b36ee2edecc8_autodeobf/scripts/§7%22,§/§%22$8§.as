package §7",§
{
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §+"E§.§#!S§;
   import §5"?§.§4"-§;
   import §6V§.§ "b§;
   import §6V§.§^">§;
   import §;P§.§super§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §"$8§ extends EventDispatcher
   {
      
      public static var MULTIPLIER_STRING:String = "x ";
      
      private static const §]!0§:int = -144;
      
      private static const §8#F§:int = -99;
       
      
      protected var §5#H§:String;
      
      protected var §]#+§:§2#i§;
      
      protected var §3$4§:String;
      
      protected var §]"Y§:MovieClip;
      
      protected var §1!'§:MovieClip;
      
      protected var §"!M§:Array;
      
      protected var §'$>§:String;
      
      protected var §#"X§:int;
      
      public function §"$8§(param1:§2#i§, param2:String, param3:String, param4:MovieClip, param5:String, param6:int = 5)
      {
         super();
         this.§]#+§ = param1;
         this.§5#H§ = param2;
         this.§3$4§ = param3;
         this.§1!'§ = param4;
         this.§'$>§ = param5;
         this.§#"X§ = param6;
         if(this.§1!'§.active)
         {
            this.§1!'§.active.visible = false;
         }
         this.§!h§();
         if(param1.id == §super§.§4T§.§?"9§)
         {
            this.§1!'§.tagForNumberOfPowerups.visible = param1.id != §super§.§4T§.§?"9§;
         }
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         this.§6d§.easterEgg1Button.visible = false;
         (dataModel.userProgress as §4"-§).§%#k§("1000-1");
      }
      
      private function §<#v§() : void
      {
         if(!(dataModel.userProgress as §4"-§).§#!V§("1000-1"))
         {
            this.§6d§.easterEgg1Button.visible = true;
            this.§6d§.easterEgg1Button.addEventListener(MouseEvent.CLICK,this.§`!a§);
         }
         else
         {
            this.§6d§.easterEgg1Button.visible = false;
         }
      }
      
      protected function §!h§() : void
      {
         if(this.§in§.id == §super§.§5"b§)
         {
            this.§<#v§();
         }
         this.§2!%§();
         this.§%$4§();
         this.§!$0§();
         this.refreshItemCount();
         this.createButtons();
      }
      
      protected function §!$0§() : void
      {
         this.§1!'§.iconContainer.addChild(this.icon);
         this.§1!'§.buttonMode = true;
         this.§1!'§.mouseChildren = false;
         if(this.§1!'§.infinity)
         {
            this.§1!'§.infinity.visible = false;
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
         this.§"!M§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < this.§#"X§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = this.§6d§["price" + _loc2_];
            _loc4_ = this.§6d§["amount" + _loc2_];
            _loc5_ = this.§6d§["icon" + _loc2_];
            _loc3_.text = §^">§.§?"Y§(this.§]#+§.getPricePoint(_loc1_).price);
            _loc4_.text = MULTIPLIER_STRING + §^">§.§?"Y§(this.§]#+§.getPricePoint(_loc1_).totalQuantity);
            _loc3_.mouseEnabled = _loc4_.mouseEnabled = _loc5_.mouseEnabled = false;
            _loc5_.mouseChildren = false;
            (_loc6_ = this.§6d§["buy" + _loc2_]).addEventListener(MouseEvent.CLICK,this.§=#,§);
            this.§"!M§.push(_loc6_);
            if(this.§]#+§.getPricePoint(_loc1_).campaignPrice > 0)
            {
               (_loc8_ = new (_loc7_ = §+$#§.§["`§("Tag_Sale_percent"))()).x = _loc6_.x + §]!0§;
               _loc8_.y = _loc6_.y + §8#F§;
               (_loc8_.getChildByName("Sale_Percentage") as TextField).text = "-" + this.§]#+§.getPricePoint(_loc1_).campaignSalePercentage + "%";
               this.§6d§.addChild(_loc8_);
               _loc3_.text = §^">§.§?"Y§(this.§]#+§.getPricePoint(_loc1_).campaignPrice);
               (_loc10_ = new (_loc9_ = §+$#§.§["`§("Tag_Sale_OldPrice"))()).x = _loc6_.x + _loc6_.width * 0.5 - _loc10_.width - 25;
               _loc10_.y = _loc6_.y + _loc6_.height * 0.5 - _loc10_.height - 45;
               (_loc10_.getChildByName("former_cost") as TextField).text = §^">§.§?"Y§(this.§]#+§.getPricePoint(_loc1_).price);
               this.§6d§.addChild(_loc10_);
            }
            else if(this.§]#+§.getPricePoint(_loc1_).§3y§ > 0)
            {
               (_loc12_ = new (_loc11_ = §+$#§.§["`§("Tag_Powerup_Free_Quantity"))()).amount.text = this.§]#+§.getPricePoint(_loc1_).§3y§;
               _loc12_.x = _loc6_.x + _loc6_.width * 0.5 - _loc12_.width * 0.8;
               _loc12_.y = _loc6_.y - _loc6_.height * 0.5 - _loc12_.height * 0.25;
               _loc12_.mouseEnabled = false;
               _loc12_.mouseChildren = false;
               this.§6d§.addChild(_loc12_);
            }
            _loc1_++;
         }
      }
      
      protected function §=#,§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:SimpleButton = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc3_:int = 0;
         for each(_loc4_ in this.§"!M§)
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
         _loc7_ = TabbedShopPopup.§>$>§;
         if(this is §-!Q§)
         {
            _loc7_ = TabbedShopPopup.§+!7§;
         }
         else if(this is §<#w§)
         {
            _loc7_ = TabbedShopPopup.§+6§;
         }
         dispatchEvent(new §#!S§(§#!S§.§8!d§,_loc7_,false,false,this.§]#+§,this.§]#+§.getPricePoint(_loc2_),new Point(_loc5_,_loc6_)));
      }
      
      public function refreshItemCount() : void
      {
         var _loc1_:int = §4"W§.§ "D§.§04§(this.§in§.id,false);
         this.§1!'§.tagForNumberOfPowerups.visible = this.§in§.id != §super§.§4T§.§?"9§;
         this.§1!'§.tagForNumberOfPowerups.numberOfPowerups.text = § "b§.§-j§(_loc1_);
      }
      
      protected function §2!%§() : void
      {
         this.§1!'§.addEventListener(MouseEvent.CLICK,this.§+"u§);
         this.§1!'§.addEventListener(MouseEvent.ROLL_OVER,this.§9!>§);
         this.§1!'§.addEventListener(MouseEvent.ROLL_OUT,this.§%$4§);
      }
      
      protected function §9!Z§() : void
      {
         this.§1!'§.removeEventListener(MouseEvent.CLICK,this.§+"u§);
         this.§1!'§.removeEventListener(MouseEvent.ROLL_OVER,this.§9!>§);
         this.§1!'§.removeEventListener(MouseEvent.ROLL_OUT,this.§%$4§);
      }
      
      protected function §+"u§(param1:MouseEvent) : void
      {
         dispatchEvent(new §#!S§(§#!S§.§,"p§,TabbedShopPopup.§>$>§));
      }
      
      protected function §9!>§(param1:MouseEvent) : void
      {
         this.§1!'§.gotoAndStop("MouseOver");
      }
      
      protected function §%$4§(param1:MouseEvent = null) : void
      {
         this.§1!'§.gotoAndStop("Normal");
      }
      
      public function §"!L§() : void
      {
         this.§1!'§.gotoAndStop("Normal");
         this.§2!%§();
      }
      
      public function select() : void
      {
         this.§1!'§.gotoAndStop("Selected");
         this.§9!Z§();
      }
      
      public function get §in§() : §2#i§
      {
         return this.§]#+§;
      }
      
      public function get §6d§() : MovieClip
      {
         if(this.§]"Y§)
         {
            return this.§]"Y§;
         }
         var _loc1_:Class = §+$#§.§["`§(this.§3$4§);
         this.§]"Y§ = new _loc1_();
         return this.§]"Y§;
      }
      
      private function get icon() : MovieClip
      {
         var _loc1_:Class = §+$#§.§["`§(this.§5#H§);
         return new _loc1_();
      }
      
      public function dispose() : void
      {
      }
   }
}
