package §>I§
{
   import § !C§.§6!W§;
   import § 9§.§=!a§;
   import § ]§.HighscoreSidebar;
   import §%!^§.§"=§;
   import §%!^§.§#!@§;
   import §&V§.§4o§;
   import §&V§.§9t§;
   import §+x§.§-6§;
   import §-"§.§,_§;
   import §0!_§.§>!'§;
   import §0!b§.§#!=§;
   import §68§.§0_§;
   import §68§.§6!E§;
   import §68§.§9v§;
   import §68§.§[!V§;
   import §68§.§`?§;
   import §7H§.§'!Y§;
   import §7H§.§8Q§;
   import §^6§.§5@§;
   import §^6§.§;l§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §<-§ extends §for §
   {
      
      public static const § !P§:String = "LevelSelectionState";
      
      private static const § v§:Number = 0.5;
      
      public static var § !Z§:String = "";
       
      
      private var §<!1§:Boolean = false;
      
      private var §+^§:§`?§;
      
      private var §+!>§:§`?§;
      
      private var §,!;§:MovieClip;
      
      private var §'^§:Array;
      
      private var §@!4§:Array;
      
      private var §=0§:int = 0;
      
      private var §@@§:int = 0;
      
      private var §++§:int = 0;
      
      private var §+E§:Boolean = false;
      
      private var §@=§:§'!Y§ = null;
      
      private var §,!b§:Dictionary;
      
      private var §7K§:Array;
      
      private var §0c§:Array;
      
      private var §,]§:§>!'§;
      
      private var §5!8§:Number = 0;
      
      public function §<-§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]Z§ = new §>!'§(41,118,142,1);
         §^!;§ = new §;l§(this);
         §^!;§.init(§5@§.§^!1§.Views.View_LevelSelection[0]);
         this.§+!>§ = §^!;§.getItemByName("Container_LevelRepeaters") as §`?§;
         this.§+^§ = §^!;§.getItemByName("Container_LevelSelection") as §`?§;
         while(this.§+!>§.mClip.numChildren > 0)
         {
            this.§+!>§.mClip.removeChildAt(0);
         }
         this.§@!4§ = [];
         this.§'^§ = [];
      }
      
      override public function activate() : void
      {
         super.activate();
         §-!#§.§2t§ = § !P§;
         §#!=§.§&![§.clearLevel();
         §#!=§.§&![§.§[!&§(false);
         §#!=§.§&![§.§0!D§(false);
         this.§@`§();
         §-!#§.§each §();
         if(this.§@!4§.length == 1)
         {
            (§^!;§.getItemByName("Button_Prev") as §0_§).setVisibility(false);
            (§^!;§.getItemByName("Button_Next") as §0_§).setVisibility(false);
            (§^!;§.getItemByName("TextField_LevelNumberSmall") as §9v§).setVisibility(false);
         }
         else
         {
            (§^!;§.getItemByName("Button_Prev") as §0_§).setVisibility(true);
            (§^!;§.getItemByName("Button_Next") as §0_§).setVisibility(true);
            (§^!;§.getItemByName("TextField_LevelNumberSmall") as §9v§).setVisibility(true);
         }
         var _loc1_:§#!@§ = §"=§.§<4§();
         §^!;§.setText(§-!#§.§4,§.§?!>§(_loc1_) + "/" + §-!#§.§4,§.§class§(_loc1_),"Textfield_CollectedStars");
         this.§5!8§ = this.§+!>§.x;
      }
      
      override protected function setInitialState() : void
      {
         §^c§.changeState(HighscoreSidebar.§=8§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§%!C§();
         this.§5>§();
         if(mNextState.length > 0)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         return §6!W§.STATE_STATUS_RUNNING;
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      private function §%!C§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'^§.length)
         {
            if(-this.§+!>§.x >= this.§@!4§[_loc1_].x && -this.§5!8§ < this.§@!4§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'^§.length)
               {
                  this.§'^§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§++§ = _loc1_;
               this.§'^§[_loc1_].gotoAndStop("Selected");
               (§^!;§.getItemByName("TextField_LevelNumberSmall") as §9v§).x = this.§'^§[_loc1_].x;
               this.§<t§(_loc1_);
            }
            if(-this.§+!>§.x <= this.§@!4§[_loc1_].x && -this.§5!8§ > this.§@!4§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'^§.length)
               {
                  this.§'^§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§++§ = _loc1_;
               this.§'^§[_loc1_].gotoAndStop("Selected");
               (§^!;§.getItemByName("TextField_LevelNumberSmall") as §9v§).x = this.§'^§[_loc1_].x;
               this.§<t§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§++§ != this.§=0§)
         {
            if(this.§=0§ > this.§++§)
            {
               this.§@@§ = this.§++§ + 1;
            }
            else if(this.§=0§ < this.§++§)
            {
               this.§@@§ = this.§++§ - 1;
            }
            else
            {
               this.§@@§ = this.§++§;
            }
            this.§,]§.§"§(this.§7K§[this.§@@§].red,this.§7K§[this.§@@§].green,this.§7K§[this.§@@§].blue);
         }
         this.§5!8§ = this.§+!>§.x;
      }
      
      private function §5>§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!4§.length)
         {
            _loc2_ = this.§+!>§.x + this.§@!4§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§@!4§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§@!4§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§@!4§[_loc1_].mClip.alpha < 1)
            {
               (this.§@!4§[_loc1_] as §[!V§).setEnabled(false);
            }
            else
            {
               (this.§@!4§[_loc1_] as §[!V§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<"§();
         (§^!;§.getItemByName("Button_Back") as §0_§).setComponentVisualState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §"=§.§4+§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§@=§)
         {
            this.§@=§.stop();
            this.§@=§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         if(param2.length > 0 && param3 is §6!E§)
         {
            if((param3 as §6!E§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §6!E§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§+E§)
               {
                  if(§,_§.§%!F§(param2))
                  {
                     §"=§.§ H§(§"=§.§&N§(param2.toLowerCase()));
                     mNextState = StateCutScene.§ !P§;
                  }
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §-6§.§6!#§("Menu_Back");
               mNextState = §91§.§ !P§;
               break;
            case "NEXT":
               this.§%c§();
               break;
            case "PREV":
               this.§`!2§();
               break;
            case "FULLSCREEN_BUTTON":
               §-6§.§6!#§("Menu_Confirm");
         }
      }
      
      private function §%c§() : void
      {
         §-6§.§6!#§("Menu_Confirm");
         if(!this.§+E§)
         {
            ++this.§=0§;
            this.§@6§(this.§=0§);
         }
      }
      
      private function §`!2§() : void
      {
         §-6§.§6!#§("Menu_Confirm");
         if(!this.§+E§)
         {
            --this.§=0§;
            this.§@6§(this.§=0§);
         }
      }
      
      public function §@`§() : void
      {
         var _loc8_:Array = null;
         var _loc1_:Number = 0;
         this.§7K§ = [];
         this.§0c§ = [];
         this.§=0§ = §"=§.§1x§(§"=§.§<q§).§ &§;
         this.§@@§ = this.§=0§;
         this.§++§ = this.§=0§;
         var _loc2_:§#!@§ = §"=§.§1x§(§"=§.§<q§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc8_ = _loc2_.§@,§(_loc2_.pageIndexes[_loc3_]);
            this.§7K§.push(_loc2_.§4!W§(_loc3_));
            this.§0c§.push(_loc2_.§+p§(_loc3_));
            _loc1_ = this.§5%§(_loc8_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§,]§ = new §>!'§(this.§7K§[this.§=0§].red,this.§7K§[this.§=0§].green,this.§7K§[this.§=0§].blue,1);
         §^!;§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§,]§);
         var _loc4_:Class;
         var _loc5_:MovieClip = new (_loc4_ = §=!a§.§@o§(_loc2_.§>!_§))();
         var _loc6_:Class;
         var _loc7_:MovieClip = new (_loc6_ = §=!a§.§@o§(_loc2_.§!-§))();
         §^!;§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc5_);
         §^!;§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc7_);
         this.§4!2§();
         if(§ !Z§ == StateCutScene.§ !P§)
         {
            § !Z§ = "";
            this.§@6§(this.§++§);
         }
         else
         {
            this.§@6§(this.§=0§,true);
         }
      }
      
      private function §5%§(param1:Array, param2:int, param3:Number, param4:§#!@§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §=!a§.§@o§(this.§0c§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §-!#§.§4,§.§;O§(_loc10_);
            _loc12_ = this.§2&§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §-!#§.§?!-§)
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
         _loc8_.@button = this.§0c§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§[!V§;
         (_loc9_ = new §[!V§(_loc8_,this.§+!>§,null,null)).§6!@§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§+!>§.addComponent(_loc9_);
         this.§@!4§.push(_loc9_);
         return Number(param3 + §-!#§.§6`§);
      }
      
      protected function §2&§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§-!#§.§4,§.§5!b§(param1) == 100)
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
            _loc7_ = §-!#§.§4,§.§=J§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      private function §4!2§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§@!4§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§,!b§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§@!4§.length)
         {
            _loc1_ = §=!a§.§@o§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §-!#§.§6`§ / 2 + _loc3_ - this.§@!4§.length * _loc2_.width / 2;
            _loc2_.y = (§^!;§.getItemByName("Button_Next") as §0_§).y - _loc2_.height / 2;
            if(_loc4_ == this.§=0§)
            {
               _loc2_.gotoAndStop("Selected");
               (§^!;§.getItemByName("TextField_LevelNumberSmall") as §9v§).x = _loc2_.x;
               (§^!;§.getItemByName("TextField_LevelNumberSmall") as §9v§).y = _loc2_.y - _loc2_.height;
               this.§<t§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§+^§.mClip.addChild(_loc2_);
            this.§,!b§[_loc2_] = _loc4_;
            this.§'^§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!J§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§@!4§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§^!;§.getItemByName("Button_Next") as §0_§).x = §-!#§.§6`§ / 2;
         (§^!;§.getItemByName("Button_Prev") as §0_§).x = §-!#§.§6`§ / 2;
         (§^!;§.getItemByName("Button_Next") as §0_§).x = (§^!;§.getItemByName("Button_Next") as §0_§).x + (_loc3_ + 10);
         (§^!;§.getItemByName("Button_Prev") as §0_§).x = (§^!;§.getItemByName("Button_Prev") as §0_§).x - (_loc3_ + 10);
      }
      
      private function §<"§() : void
      {
         this.§,]§.clean();
         var _loc1_:int = 0;
         while(_loc1_ < this.§'^§.length)
         {
            if(this.§+^§.mClip.contains(this.§'^§[_loc1_]))
            {
               this.§'^§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§?!J§);
               this.§+^§.mClip.removeChild(this.§'^§[_loc1_]);
            }
            _loc1_++;
         }
         this.§'^§ = [];
         while(this.§+!>§.mClip.numChildren > 0)
         {
            this.§+!>§.mClip.removeChildAt(0);
         }
         this.§@!4§ = [];
      }
      
      private function §?!J§(param1:MouseEvent) : void
      {
         if(!this.§+E§)
         {
            this.§@6§(this.§,!b§[param1.target]);
         }
      }
      
      private function §1!]§(param1:MouseEvent) : void
      {
         if(!this.§+E§)
         {
            mNextState = §<-§.§ !P§;
         }
      }
      
      private function §@6§(param1:int, param2:Boolean = false) : void
      {
         this.§+E§ = true;
         if(param1 > this.§@!4§.length - 1)
         {
            param1 = this.§@!4§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§=0§ = param1;
         if(this.§=0§ > this.§++§)
         {
            this.§@@§ = this.§++§ + 1;
         }
         else if(this.§=0§ < this.§++§)
         {
            this.§@@§ = this.§++§ - 1;
         }
         var _loc3_:Number = -this.§@!4§[param1].x;
         var _loc4_:Number = this.§@!4§[param1].x + this.§+!>§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * § v§;
         if(this.§@=§ != null)
         {
            this.§@=§.stop();
         }
         if(param2)
         {
            this.§+!>§.x = _loc3_;
         }
         else
         {
            this.§@=§ = §8Q§.§]!D§.§^w§(this.§+!>§,{"x":_loc3_},null,_loc5_,§8Q§.§8!E§);
            this.§@=§.onComplete = this.§`!1§;
         }
         if(param2)
         {
            this.§`!1§();
         }
         else
         {
            this.§@=§.play();
         }
      }
      
      private function §`!1§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'^§.length)
         {
            if(_loc1_ == this.§=0§)
            {
               this.§'^§[_loc1_].gotoAndStop("Selected");
               (§^!;§.getItemByName("TextField_LevelNumberSmall") as §9v§).x = this.§'^§[_loc1_].x;
               this.§<t§(_loc1_);
            }
            else
            {
               this.§'^§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§+E§ = false;
         §"=§.§1x§(§"=§.§<q§).§ &§ = this.§=0§;
      }
      
      protected function §<t§(param1:int) : void
      {
         (§^!;§.getItemByName("TextField_LevelNumberSmall") as §9v§).§@!G§.text = §"=§.§1x§(§"=§.§<q§).pageIndexes[param1];
      }
   }
}
