package §,r§
{
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §0E§.§-!F§;
   import §0E§.§<a§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §2I§.§,"+§;
   import §5!8§.§+!?§;
   import §5!8§.§-!+§;
   import §5!8§.§-">§;
   import §5!8§.§6m§;
   import §5!8§.§;!Z§;
   import §7"1§.§%W§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§3!r§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §+!F§ extends §,v§
   {
      
      public static const §8n§:String = "LevelSelectionState";
      
      protected static const §=!W§:Number = 0.5;
      
      public static var §&"!§:String = "";
       
      
      protected var § q§:Boolean = false;
      
      protected var §!#§:§+!?§;
      
      protected var §#!N§:§+!?§;
      
      protected var §!"8§:MovieClip;
      
      protected var override:Array;
      
      protected var §`"2§:Array;
      
      protected var §2[§:int = 0;
      
      protected var §>">§:int = 0;
      
      protected var § Y§:int = 0;
      
      protected var §`!V§:Boolean = false;
      
      protected var §]V§:§+I§ = null;
      
      protected var §=]§:Dictionary;
      
      protected var §3!>§:Array;
      
      protected var §^!L§:Array;
      
      protected var §1!<§:§,"+§;
      
      protected var §7u§:Number = 0;
      
      public function §+!F§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§,s§();
         while(this.§#!N§.mClip.numChildren > 0)
         {
            this.§#!N§.mClip.removeChildAt(0);
         }
         this.§`"2§ = [];
         this.override = [];
      }
      
      protected function §,s§() : void
      {
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelSelection[0]);
         this.§#!N§ = §?F§.getItemByName("Container_LevelRepeaters") as §+!?§;
         this.§!#§ = §?F§.getItemByName("Container_LevelSelection") as §+!?§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §%W§.§5"8§.clearLevel();
         §%W§.§5"8§.§'N§(false);
         this.§<!s§();
         this.§9!u§();
         if(this.§`"2§.length == 1)
         {
            (§?F§.getItemByName("Button_Prev") as §;!Z§).setVisibility(false);
            (§?F§.getItemByName("Button_Next") as §;!Z§).setVisibility(false);
            (§?F§.getItemByName("TextField_LevelNumberSmall") as §6m§).setVisibility(false);
         }
         else
         {
            (§?F§.getItemByName("Button_Prev") as §;!Z§).setVisibility(true);
            (§?F§.getItemByName("Button_Next") as §;!Z§).setVisibility(true);
            (§?F§.getItemByName("TextField_LevelNumberSmall") as §6m§).setVisibility(true);
         }
         this.§7u§ = this.§#!N§.x;
         if(§?F§.stage)
         {
            §?F§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!U§);
         }
      }
      
      protected function §9!u§() : void
      {
         AngryBirdsFP11.§9!u§();
      }
      
      protected function §!!U§(param1:KeyboardEvent) : void
      {
         if(this.§`"2§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§#!c§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§0!X§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§`!Z§();
         this.§#"6§();
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      protected function §`!Z§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.override.length)
         {
            if(-this.§#!N§.x >= this.§`"2§[_loc1_].x && -this.§7u§ < this.§`"2§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.override.length)
               {
                  this.override[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§ Y§ = _loc1_;
               this.override[_loc1_].gotoAndStop("Selected");
               (§?F§.getItemByName("TextField_LevelNumberSmall") as §6m§).x = this.override[_loc1_].x;
               this.§@1§(_loc1_);
            }
            if(-this.§#!N§.x <= this.§`"2§[_loc1_].x && -this.§7u§ > this.§`"2§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.override.length)
               {
                  this.override[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§ Y§ = _loc1_;
               this.override[_loc1_].gotoAndStop("Selected");
               (§?F§.getItemByName("TextField_LevelNumberSmall") as §6m§).x = this.override[_loc1_].x;
               this.§@1§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§ Y§ != this.§2[§)
         {
            if(this.§2[§ > this.§ Y§)
            {
               this.§>">§ = this.§ Y§ + 1;
            }
            else if(this.§2[§ < this.§ Y§)
            {
               this.§>">§ = this.§ Y§ - 1;
            }
            else
            {
               this.§>">§ = this.§ Y§;
            }
            if(this.§3!>§[this.§>">§])
            {
               this.§1!<§.§8!2§(this.§3!>§[this.§>">§].red,this.§3!>§[this.§>">§].green,this.§3!>§[this.§>">§].blue);
            }
         }
         this.§7u§ = this.§#!N§.x;
      }
      
      protected function §#"6§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`"2§.length)
         {
            _loc2_ = this.§#!N§.x + this.§`"2§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§`"2§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§`"2§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§`"2§[_loc1_].mClip.alpha < 1)
            {
               (this.§`"2§[_loc1_] as §3!r§).setEnabled(false);
            }
            else
            {
               (this.§`"2§[_loc1_] as §3!r§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§?F§.stage)
         {
            §?F§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!U§);
         }
         super.deActivate();
         this.§!4§();
         (§?F§.getItemByName("Button_Back") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §-!F§.§4"8§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§]V§)
         {
            this.§]V§.stop();
            this.§]V§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         if(param2.length > 0 && param3 is §-">§)
         {
            if((param3 as §-">§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §-">§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§`!V§)
               {
                  §-!F§.loadLevel(§-!F§.§ !k§(param2.toLowerCase()));
                  mNextState = StateCutScene.§8n§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §^k§.playSound("Menu_Back");
               mNextState = §3=§.§8n§;
               break;
            case "NEXT":
               this.§0!X§();
               break;
            case "PREV":
               this.§#!c§();
               break;
            case "FULLSCREEN_BUTTON":
               §^k§.playSound("Menu_Confirm");
               AngryBirdsFP11.§"!V§.§=!C§();
         }
      }
      
      protected function §0!X§() : void
      {
         §^k§.playSound("Menu_Confirm");
         if(!this.§`!V§)
         {
            ++this.§2[§;
            this.§>!1§(this.§2[§);
         }
      }
      
      protected function §#!c§() : void
      {
         §^k§.playSound("Menu_Confirm");
         if(!this.§`!V§)
         {
            --this.§2[§;
            this.§>!1§(this.§2[§);
         }
      }
      
      public function §<!s§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§3!>§ = [];
         this.§^!L§ = [];
         this.§2[§ = §-!F§.§#3§(§-!F§.§4"=§).§"?§;
         this.§>">§ = this.§2[§;
         this.§ Y§ = this.§2[§;
         var _loc2_:§<a§ = §-!F§.§#3§(§-!F§.§4"=§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§9S§(_loc2_.pageIndexes[_loc3_]);
            this.§3!>§.push(_loc2_.§5!]§(_loc3_));
            this.§^!L§.push(_loc2_.§7""§(_loc3_));
            _loc1_ = this.§6"'§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§1!<§ = new §,"+§(this.§3!>§[this.§2[§].red,this.§3!>§[this.§2[§].green,this.§3!>§[this.§2[§].blue,1);
         §?F§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§1!<§);
         if(_loc2_.§,"-§)
         {
            _loc6_ = new (_loc5_ = §!"'§.§%!Q§(_loc2_.§,"-§))();
            §?F§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §?F§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§6y§)
         {
            _loc8_ = new (_loc7_ = §!"'§.§%!Q§(_loc2_.§6y§))();
            §?F§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §?F§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§"!T§();
         if(§&"!§ == StateCutScene.§8n§)
         {
            §&"!§ = "";
            this.§>!1§(this.§ Y§);
         }
         else
         {
            this.§>!1§(this.§2[§,true);
         }
      }
      
      protected function §6"'§(param1:Array, param2:int, param3:Number, param4:§<a§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §!"'§.§%!Q§(this.§^!L§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§`!j§.§7!1§(_loc10_);
            _loc12_ = this.§#!%§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§;[§)
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
         _loc8_ = <Repeater/>;
         if(param1.length == 15 || param1.length == 10)
         {
            _loc8_.@name = "Repeater_LevelSelection15";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§^!L§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§-!+§;
         (_loc9_ = new §-!+§(_loc8_,this.§#!N§,null,null)).§<`§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§#!N§.§`!Y§(_loc9_);
         this.§`"2§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§<J§);
      }
      
      protected function §#!%§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§`!j§.§<!q§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§`!j§.§4a§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §"!T§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§`"2§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§=]§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§`"2§.length)
         {
            _loc1_ = §!"'§.§%!Q§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§<J§ / 2 + _loc3_ - this.§`"2§.length * _loc2_.width / 2;
            _loc2_.y = (§?F§.getItemByName("Button_Next") as §;!Z§).y - _loc2_.height / 2;
            if(_loc4_ == this.§2[§)
            {
               _loc2_.gotoAndStop("Selected");
               (§?F§.getItemByName("TextField_LevelNumberSmall") as §6m§).x = _loc2_.x;
               (§?F§.getItemByName("TextField_LevelNumberSmall") as §6m§).y = _loc2_.y - _loc2_.height;
               this.§@1§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§!#§.mClip.addChild(_loc2_);
            this.§=]§[_loc2_] = _loc4_;
            this.override.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!b§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§`"2§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§?F§.getItemByName("Button_Next") as §;!Z§).x = AngryBirdsFP11.§<J§ / 2;
         (§?F§.getItemByName("Button_Prev") as §;!Z§).x = AngryBirdsFP11.§<J§ / 2;
         (§?F§.getItemByName("Button_Next") as §;!Z§).x = (§?F§.getItemByName("Button_Next") as §;!Z§).x + (_loc3_ + 10);
         (§?F§.getItemByName("Button_Prev") as §;!Z§).x = (§?F§.getItemByName("Button_Prev") as §;!Z§).x - (_loc3_ + 10);
      }
      
      protected function §!4§() : void
      {
         if(this.§1!<§)
         {
            this.§1!<§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.override.length)
         {
            if(this.§!#§.mClip.contains(this.override[_loc1_]))
            {
               this.override[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!b§);
               this.§!#§.mClip.removeChild(this.override[_loc1_]);
            }
            _loc1_++;
         }
         this.override = [];
         while(this.§#!N§.mClip.numChildren > 0)
         {
            this.§#!N§.mClip.removeChildAt(0);
         }
         this.§`"2§ = [];
      }
      
      protected function §0!b§(param1:MouseEvent) : void
      {
         if(!this.§`!V§)
         {
            this.§>!1§(this.§=]§[param1.target]);
         }
      }
      
      protected function §#!P§(param1:MouseEvent) : void
      {
         if(!this.§`!V§)
         {
            mNextState = §+!F§.§8n§;
         }
      }
      
      protected function §>!1§(param1:int, param2:Boolean = false) : void
      {
         this.§`!V§ = true;
         if(param1 > this.§`"2§.length - 1)
         {
            param1 = this.§`"2§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§2[§ = param1;
         if(this.§2[§ > this.§ Y§)
         {
            this.§>">§ = this.§ Y§ + 1;
         }
         else if(this.§2[§ < this.§ Y§)
         {
            this.§>">§ = this.§ Y§ - 1;
         }
         var _loc3_:Number = -this.§`"2§[param1].x;
         var _loc4_:Number = this.§`"2§[param1].x + this.§#!N§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §=!W§;
         if(this.§]V§ != null)
         {
            this.§]V§.stop();
         }
         if(param2)
         {
            this.§#!N§.x = _loc3_;
         }
         else
         {
            this.§]V§ = §-!M§.§ "!§.§+d§(this.§#!N§,{"x":_loc3_},null,_loc5_,§-!M§.§5",§);
            this.§]V§.onComplete = this.§3C§;
         }
         if(param2)
         {
            this.§3C§();
         }
         else
         {
            this.§]V§.play();
         }
      }
      
      protected function §3C§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.override.length)
         {
            if(_loc1_ == this.§2[§)
            {
               this.override[_loc1_].gotoAndStop("Selected");
               (§?F§.getItemByName("TextField_LevelNumberSmall") as §6m§).x = this.override[_loc1_].x;
               this.§@1§(_loc1_);
            }
            else
            {
               this.override[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§`!V§ = false;
         §-!F§.§#3§(§-!F§.§4"=§).§"?§ = this.§2[§;
      }
      
      protected function §@1§(param1:int) : void
      {
         (§?F§.getItemByName("TextField_LevelNumberSmall") as §6m§).§<"§.text = §-!F§.§#3§(§-!F§.§4"=§).pageIndexes[param1];
      }
   }
}
