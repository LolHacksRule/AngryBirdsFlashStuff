package §`D§
{
   import §!L§.§`#u§;
   import §#"4§.§6!B§;
   import §#"4§.§>0§;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §9T§.§ "T§;
   import §[#V§.§<"f§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §7#+§ extends EventDispatcher
   {
      
      public static var MULTIPLIER_STRING:String = "x ";
      
      private static const §]"h§:int = -144;
      
      private static const §<!g§:int = -99;
       
      
      protected var §@u§:String;
      
      protected var §@l§:§2_§;
      
      protected var §@#"§:String;
      
      protected var §"##§:MovieClip;
      
      protected var §2"L§:MovieClip;
      
      protected var §^$!§:Array;
      
      protected var §+"@§:String;
      
      protected var §98§:int;
      
      public function §7#+§(param1:§2_§, param2:String, param3:String, param4:MovieClip, param5:String, param6:int = 5)
      {
         super();
         this.§@l§ = param1;
         this.§@u§ = param2;
         this.§@#"§ = param3;
         this.§2"L§ = param4;
         this.§+"@§ = param5;
         this.§98§ = param6;
         if(this.§2"L§.active)
         {
            this.§2"L§.active.visible = false;
         }
         this.§ "`§();
         if(param1.id == § "T§.§%!W§.§8t§)
         {
            this.§2"L§.tagForNumberOfPowerups.visible = param1.id != § "T§.§%!W§.§8t§;
         }
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      private function §54§(param1:MouseEvent) : void
      {
         this.§>$§.easterEgg1Button.visible = false;
         (dataModel.userProgress as §`#u§).§0a§("1000-1");
      }
      
      private function §%#u§() : void
      {
         if(!(dataModel.userProgress as §`#u§).§`p§("1000-1"))
         {
            this.§>$§.easterEgg1Button.visible = true;
            this.§>$§.easterEgg1Button.addEventListener(MouseEvent.CLICK,this.§54§);
         }
         else
         {
            this.§>$§.easterEgg1Button.visible = false;
         }
      }
      
      protected function § "`§() : void
      {
         if(this.§@" §.id == § "T§.§]",§)
         {
            this.§%#u§();
         }
         this.§,!K§();
         this.§,#w§();
         this.§,!w§();
         this.refreshItemCount();
         this.createButtons();
      }
      
      protected function §,!w§() : void
      {
         this.§2"L§.iconContainer.addChild(this.icon);
         this.§2"L§.buttonMode = true;
         this.§2"L§.mouseChildren = false;
         if(this.§2"L§.infinity)
         {
            this.§2"L§.infinity.visible = false;
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
         this.§^$!§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < this.§98§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = this.§>$§["price" + _loc2_];
            _loc4_ = this.§>$§["amount" + _loc2_];
            _loc5_ = this.§>$§["icon" + _loc2_];
            _loc3_.text = §6!B§.§^"O§(this.§@l§.getPricePoint(_loc1_).price);
            _loc4_.text = MULTIPLIER_STRING + §6!B§.§^"O§(this.§@l§.getPricePoint(_loc1_).totalQuantity);
            _loc3_.mouseEnabled = _loc4_.mouseEnabled = _loc5_.mouseEnabled = false;
            _loc5_.mouseChildren = false;
            (_loc6_ = this.§>$§["buy" + _loc2_]).addEventListener(MouseEvent.CLICK,this.§?#U§);
            this.§^$!§.push(_loc6_);
            if(this.§@l§.getPricePoint(_loc1_).campaignPrice > 0)
            {
               (_loc8_ = new (_loc7_ = §[a§.§8#k§("Tag_Sale_percent"))()).x = _loc6_.x + §]"h§;
               _loc8_.y = _loc6_.y + §<!g§;
               (_loc8_.getChildByName("Sale_Percentage") as TextField).text = "-" + this.§@l§.getPricePoint(_loc1_).campaignSalePercentage + "%";
               this.§>$§.addChild(_loc8_);
               _loc3_.text = §6!B§.§^"O§(this.§@l§.getPricePoint(_loc1_).campaignPrice);
               (_loc10_ = new (_loc9_ = §[a§.§8#k§("Tag_Sale_OldPrice"))()).x = _loc6_.x + _loc6_.width * 0.5 - _loc10_.width - 25;
               _loc10_.y = _loc6_.y + _loc6_.height * 0.5 - _loc10_.height - 45;
               (_loc10_.getChildByName("former_cost") as TextField).text = §6!B§.§^"O§(this.§@l§.getPricePoint(_loc1_).price);
               this.§>$§.addChild(_loc10_);
            }
            else if(this.§@l§.getPricePoint(_loc1_).§+"l§ > 0)
            {
               (_loc12_ = new (_loc11_ = §[a§.§8#k§("Tag_Powerup_Free_Quantity"))()).amount.text = this.§@l§.getPricePoint(_loc1_).§+"l§;
               _loc12_.x = _loc6_.x + _loc6_.width * 0.5 - _loc12_.width * 0.8;
               _loc12_.y = _loc6_.y - _loc6_.height * 0.5 - _loc12_.height * 0.25;
               _loc12_.mouseEnabled = false;
               _loc12_.mouseChildren = false;
               this.§>$§.addChild(_loc12_);
            }
            _loc1_++;
         }
      }
      
      protected function §?#U§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:SimpleButton = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc3_:int = 0;
         for each(_loc4_ in this.§^$!§)
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
         _loc7_ = TabbedShopPopup.§"#$§;
         if(this is §`""§)
         {
            _loc7_ = TabbedShopPopup.§]!j§;
         }
         else if(this is §<-§)
         {
            _loc7_ = TabbedShopPopup.§!!6§;
         }
         dispatchEvent(new §<"f§(§<"f§.§5"n§,_loc7_,false,false,this.§@l§,this.§@l§.getPricePoint(_loc2_),new Point(_loc5_,_loc6_)));
      }
      
      public function refreshItemCount() : void
      {
         var _loc1_:int = §]#0§.§+!,§.§,#k§(this.§@" §.id,false);
         this.§2"L§.tagForNumberOfPowerups.visible = this.§@" §.id != § "T§.§%!W§.§8t§;
         this.§2"L§.tagForNumberOfPowerups.numberOfPowerups.text = §>0§.§9#9§(_loc1_);
      }
      
      protected function §,!K§() : void
      {
         this.§2"L§.addEventListener(MouseEvent.CLICK,this.§0!&§);
         this.§2"L§.addEventListener(MouseEvent.ROLL_OVER,this.§!!M§);
         this.§2"L§.addEventListener(MouseEvent.ROLL_OUT,this.§,#w§);
      }
      
      protected function §=$@§() : void
      {
         this.§2"L§.removeEventListener(MouseEvent.CLICK,this.§0!&§);
         this.§2"L§.removeEventListener(MouseEvent.ROLL_OVER,this.§!!M§);
         this.§2"L§.removeEventListener(MouseEvent.ROLL_OUT,this.§,#w§);
      }
      
      protected function §0!&§(param1:MouseEvent) : void
      {
         dispatchEvent(new §<"f§(§<"f§.§;"n§,TabbedShopPopup.§"#$§));
      }
      
      protected function §!!M§(param1:MouseEvent) : void
      {
         this.§2"L§.gotoAndStop("MouseOver");
      }
      
      protected function §,#w§(param1:MouseEvent = null) : void
      {
         this.§2"L§.gotoAndStop("Normal");
      }
      
      public function §]6§() : void
      {
         this.§2"L§.gotoAndStop("Normal");
         this.§,!K§();
      }
      
      public function select() : void
      {
         this.§2"L§.gotoAndStop("Selected");
         this.§=$@§();
      }
      
      public function get §@" §() : §2_§
      {
         return this.§@l§;
      }
      
      public function get §>$§() : MovieClip
      {
         if(this.§"##§)
         {
            return this.§"##§;
         }
         var _loc1_:Class = §[a§.§8#k§(this.§@#"§);
         this.§"##§ = new _loc1_();
         return this.§"##§;
      }
      
      private function get icon() : MovieClip
      {
         var _loc1_:Class = §[a§.§8#k§(this.§@u§);
         return new _loc1_();
      }
      
      public function dispose() : void
      {
      }
   }
}
