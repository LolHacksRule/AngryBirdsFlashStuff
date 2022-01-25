package §%n§
{
   import §'P§.§+x§;
   import §'P§.§,!"§;
   import §'P§.§5!_§;
   import §'P§.§]! §;
   import §'P§.§`;§;
   import §,@§.§"!'§;
   import §-v§.§,!1§;
   import §32§.HighscoreSidebar;
   import §6!@§.§ !!§;
   import §7I§.§<!0§;
   import §7]§.§8N§;
   import §7]§.§;T§;
   import §86§.§!!d§;
   import §86§.§[!$§;
   import §="§.§@5§;
   import §>9§.§9!V§;
   import §[!=§.§!!K§;
   import §[!=§.§3!2§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §@t§ extends §91§
   {
      
      public static const §^6§:String = "LevelSelectionState";
      
      private static const §]!C§:Number = 0.5;
      
      public static var §,D§:String = "";
       
      
      private var §`N§:Boolean = false;
      
      private var §'9§:§`;§;
      
      private var §>4§:§`;§;
      
      private var § use§:MovieClip;
      
      private var §>&§:Array;
      
      private var §@Y§:Array;
      
      private var §@Q§:int = 0;
      
      private var §5a§:int = 0;
      
      private var §#c§:int = 0;
      
      private var §;!=§:Boolean = false;
      
      private var §7z§:§3!2§ = null;
      
      private var §2!b§:Dictionary;
      
      private var §,n§:Array;
      
      private var §7!c§:Array;
      
      private var §@!N§:§"!'§;
      
      private var §+h§:Number = 0;
      
      public function §@t§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5d§ = new §"!'§(41,118,142,1);
         §5!R§ = new §^R§(this);
         §5!R§.init(§7!^§.§`!E§.Views.View_LevelSelection[0]);
         this.§>4§ = §5!R§.getItemByName("Container_LevelRepeaters") as §`;§;
         this.§'9§ = §5!R§.getItemByName("Container_LevelSelection") as §`;§;
         while(this.§>4§.mClip.numChildren > 0)
         {
            this.§>4§.mClip.removeChildAt(0);
         }
         this.§@Y§ = [];
         this.§>&§ = [];
      }
      
      override public function activate() : void
      {
         super.activate();
         §"!@§.§2_§ = §^6§;
         §,!1§.§2T§.clearLevel();
         §,!1§.§2T§.§=!H§(false);
         §,!1§.§2T§.§&c§(false);
         this.§>A§();
         §"!@§.§>!$§();
         if(this.§@Y§.length == 1)
         {
            (§5!R§.getItemByName("Button_Prev") as §,!"§).setVisibility(false);
            (§5!R§.getItemByName("Button_Next") as §,!"§).setVisibility(false);
            (§5!R§.getItemByName("TextField_LevelNumberSmall") as §5!_§).setVisibility(false);
         }
         else
         {
            (§5!R§.getItemByName("Button_Prev") as §,!"§).setVisibility(true);
            (§5!R§.getItemByName("Button_Next") as §,!"§).setVisibility(true);
            (§5!R§.getItemByName("TextField_LevelNumberSmall") as §5!_§).setVisibility(true);
         }
         var _loc1_:§[!$§ = §!!d§.§+0§();
         §5!R§.setText(§"!@§.§-5§.§=5§(_loc1_) + "/" + §"!@§.§-5§.§6v§(_loc1_),"Textfield_CollectedStars");
         this.§+h§ = this.§>4§.x;
      }
      
      override protected function setInitialState() : void
      {
         §'! §.changeState(HighscoreSidebar.§+,§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,X§();
         this.§8!K§();
         if(mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         return § !!§.STATE_STATUS_RUNNING;
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      private function §,X§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>&§.length)
         {
            if(-this.§>4§.x >= this.§@Y§[_loc1_].x && -this.§+h§ < this.§@Y§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§>&§.length)
               {
                  this.§>&§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#c§ = _loc1_;
               this.§>&§[_loc1_].gotoAndStop("Selected");
               (§5!R§.getItemByName("TextField_LevelNumberSmall") as §5!_§).x = this.§>&§[_loc1_].x;
               this.§+!K§(_loc1_);
            }
            if(-this.§>4§.x <= this.§@Y§[_loc1_].x && -this.§+h§ > this.§@Y§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§>&§.length)
               {
                  this.§>&§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#c§ = _loc1_;
               this.§>&§[_loc1_].gotoAndStop("Selected");
               (§5!R§.getItemByName("TextField_LevelNumberSmall") as §5!_§).x = this.§>&§[_loc1_].x;
               this.§+!K§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§#c§ != this.§@Q§)
         {
            if(this.§@Q§ > this.§#c§)
            {
               this.§5a§ = this.§#c§ + 1;
            }
            else if(this.§@Q§ < this.§#c§)
            {
               this.§5a§ = this.§#c§ - 1;
            }
            else
            {
               this.§5a§ = this.§#c§;
            }
            this.§@!N§.§+7§(this.§,n§[this.§5a§].red,this.§,n§[this.§5a§].green,this.§,n§[this.§5a§].blue);
         }
         this.§+h§ = this.§>4§.x;
      }
      
      private function §8!K§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@Y§.length)
         {
            _loc2_ = this.§>4§.x + this.§@Y§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§@Y§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§@Y§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§@Y§[_loc1_].mClip.alpha < 1)
            {
               (this.§@Y§[_loc1_] as §]! §).setEnabled(false);
            }
            else
            {
               (this.§@Y§[_loc1_] as §]! §).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4!U§();
         (§5!R§.getItemByName("Button_Back") as §,!"§).setComponentVisualState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §!!d§.§>?§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§7z§)
         {
            this.§7z§.stop();
            this.§7z§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param2.length > 0 && param3 is §+x§)
         {
            if((param3 as §+x§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §+x§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§;!=§)
               {
                  if(§9!V§.§6p§(param2))
                  {
                     §!!d§.§do §(§!!d§.§#P§(param2.toLowerCase()));
                     mNextState = StateCutScene.§^6§;
                  }
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §<!0§.playSound("Menu_Back");
               mNextState = §3v§.§^6§;
               break;
            case "NEXT":
               this.§6R§();
               break;
            case "PREV":
               this.§6[§();
               break;
            case "FULLSCREEN_BUTTON":
               §<!0§.playSound("Menu_Confirm");
         }
      }
      
      private function §6R§() : void
      {
         §<!0§.playSound("Menu_Confirm");
         if(!this.§;!=§)
         {
            ++this.§@Q§;
            this.§#s§(this.§@Q§);
         }
      }
      
      private function §6[§() : void
      {
         §<!0§.playSound("Menu_Confirm");
         if(!this.§;!=§)
         {
            --this.§@Q§;
            this.§#s§(this.§@Q§);
         }
      }
      
      public function §>A§() : void
      {
         var _loc8_:Array = null;
         var _loc1_:Number = 0;
         this.§,n§ = [];
         this.§7!c§ = [];
         this.§@Q§ = §!!d§.§,!c§(§!!d§.§&1§).§[G§;
         this.§5a§ = this.§@Q§;
         this.§#c§ = this.§@Q§;
         var _loc2_:§[!$§ = §!!d§.§,!c§(§!!d§.§&1§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc8_ = _loc2_.§<!&§(_loc2_.pageIndexes[_loc3_]);
            this.§,n§.push(_loc2_.§6!]§(_loc3_));
            this.§7!c§.push(_loc2_.§"!8§(_loc3_));
            _loc1_ = this.§]V§(_loc8_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§@!N§ = new §"!'§(this.§,n§[this.§@Q§].red,this.§,n§[this.§@Q§].green,this.§,n§[this.§@Q§].blue,1);
         §5!R§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§@!N§);
         var _loc4_:Class;
         var _loc5_:MovieClip = new (_loc4_ = §@5§.§>! §(_loc2_.§ 7§))();
         var _loc6_:Class;
         var _loc7_:MovieClip = new (_loc6_ = §@5§.§>! §(_loc2_.§9`§))();
         §5!R§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc5_);
         §5!R§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc7_);
         this.§18§();
         if(§,D§ == StateCutScene.§^6§)
         {
            §,D§ = "";
            this.§#s§(this.§#c§);
         }
         else
         {
            this.§#s§(this.§@Q§,true);
         }
      }
      
      private function §]V§(param1:Array, param2:int, param3:Number, param4:§[!$§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §@5§.§>! §(this.§7!c§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §"!@§.§-5§.§%3§(_loc10_);
            _loc12_ = this.§3q§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §"!@§.§&g§)
            {
               _loc13_.@MouseUp = _loc10_;
            }
            _loc13_.@scaleOnMouseOver = "True";
            _loc5_[0].push(new Array(_loc13_,null,_loc12_));
            if(_loc11_)
            {
               _loc12_.MovieClip_Stars.mouseEnabled = false;
            }
            _loc12_.TextField_LevelNum.text.mouseEnabled = false;
            _loc7_++;
         }
         (_loc8_ = <Repeater/>).@name = "Repeater_LevelSelection";
         _loc8_.@button = this.§7!c§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§]! §;
         (_loc9_ = new §]! §(_loc8_,this.§>4§,null,null)).§[W§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§>4§.addComponent(_loc9_);
         this.§@Y§.push(_loc9_);
         return Number(param3 + §"!@§.§9<§);
      }
      
      protected function §3q§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§"!@§.§-5§.§=[§(param1) == 100)
            {
               _loc6_.MovieClip_Feather.gotoAndStop("Visible");
               _loc6_.MovieClip_Feather.mouseEnabled = false;
            }
            else
            {
               _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
               _loc6_.MovieClip_Feather.mouseEnabled = false;
            }
         }
         else
         {
            _loc6_.gotoAndStop("Locked");
         }
         _loc6_.isOpen = param2;
         if(param2)
         {
            _loc7_ = §"!@§.§-5§.§9!8§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      private function §18§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§@Y§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§2!b§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§@Y§.length)
         {
            _loc1_ = §@5§.§>! §("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §"!@§.§9<§ / 2 + _loc3_ - this.§@Y§.length * _loc2_.width / 2;
            _loc2_.y = (§5!R§.getItemByName("Button_Next") as §,!"§).y - _loc2_.height / 2;
            if(_loc4_ == this.§@Q§)
            {
               _loc2_.gotoAndStop("Selected");
               (§5!R§.getItemByName("TextField_LevelNumberSmall") as §5!_§).x = _loc2_.x;
               (§5!R§.getItemByName("TextField_LevelNumberSmall") as §5!_§).y = _loc2_.y - _loc2_.height;
               this.§+!K§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§'9§.mClip.addChild(_loc2_);
            this.§2!b§[_loc2_] = _loc4_;
            this.§>&§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§@z§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§@Y§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§5!R§.getItemByName("Button_Next") as §,!"§).x = §"!@§.§9<§ / 2;
         (§5!R§.getItemByName("Button_Prev") as §,!"§).x = §"!@§.§9<§ / 2;
         (§5!R§.getItemByName("Button_Next") as §,!"§).x = (§5!R§.getItemByName("Button_Next") as §,!"§).x + (_loc3_ + 10);
         (§5!R§.getItemByName("Button_Prev") as §,!"§).x = (§5!R§.getItemByName("Button_Prev") as §,!"§).x - (_loc3_ + 10);
      }
      
      private function §4!U§() : void
      {
         this.§@!N§.clean();
         var _loc1_:int = 0;
         while(_loc1_ < this.§>&§.length)
         {
            if(this.§'9§.mClip.contains(this.§>&§[_loc1_]))
            {
               this.§>&§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§@z§);
               this.§'9§.mClip.removeChild(this.§>&§[_loc1_]);
            }
            _loc1_++;
         }
         this.§>&§ = [];
         while(this.§>4§.mClip.numChildren > 0)
         {
            this.§>4§.mClip.removeChildAt(0);
         }
         this.§@Y§ = [];
      }
      
      private function §@z§(param1:MouseEvent) : void
      {
         if(!this.§;!=§)
         {
            this.§#s§(this.§2!b§[param1.target]);
         }
      }
      
      private function §2!U§(param1:MouseEvent) : void
      {
         if(!this.§;!=§)
         {
            mNextState = §@t§.§^6§;
         }
      }
      
      private function §#s§(param1:int, param2:Boolean = false) : void
      {
         this.§;!=§ = true;
         if(param1 > this.§@Y§.length - 1)
         {
            param1 = this.§@Y§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§@Q§ = param1;
         if(this.§@Q§ > this.§#c§)
         {
            this.§5a§ = this.§#c§ + 1;
         }
         else if(this.§@Q§ < this.§#c§)
         {
            this.§5a§ = this.§#c§ - 1;
         }
         var _loc3_:Number = -this.§@Y§[param1].x;
         var _loc4_:Number = this.§@Y§[param1].x + this.§>4§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §]!C§;
         if(this.§7z§ != null)
         {
            this.§7z§.stop();
         }
         if(param2)
         {
            this.§>4§.x = _loc3_;
         }
         else
         {
            this.§7z§ = §!!K§.§@!c§.§'!H§(this.§>4§,{"x":_loc3_},null,_loc5_,§!!K§.§^O§);
            this.§7z§.onComplete = this.§-!H§;
         }
         if(param2)
         {
            this.§-!H§();
         }
         else
         {
            this.§7z§.play();
         }
      }
      
      private function §-!H§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§>&§.length)
         {
            if(_loc1_ == this.§@Q§)
            {
               this.§>&§[_loc1_].gotoAndStop("Selected");
               (§5!R§.getItemByName("TextField_LevelNumberSmall") as §5!_§).x = this.§>&§[_loc1_].x;
               this.§+!K§(_loc1_);
            }
            else
            {
               this.§>&§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§;!=§ = false;
         §!!d§.§,!c§(§!!d§.§&1§).§[G§ = this.§@Q§;
      }
      
      protected function §+!K§(param1:int) : void
      {
         (§5!R§.getItemByName("TextField_LevelNumberSmall") as §5!_§).§5r§.text = §!!d§.§,!c§(§!!d§.§&1§).pageIndexes[param1];
      }
   }
}
