package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§&"1§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §0Q§.§]`§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §6!&§.§68§;
   import §6p§.§'!B§;
   import §<!I§.§7!N§;
   import §<!I§.§7G§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<!I§.§`!n§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import com.rovio.assets.§8!q§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §#B§ extends §<"+§
   {
      
      public static const §8G§:String = "LevelSelectionState";
      
      protected static const §-R§:Number = 0.5;
      
      public static var §-"#§:String = "";
       
      
      protected var §^!]§:Boolean = false;
      
      protected var §6!H§:§>"-§;
      
      protected var §;!s§:§>"-§;
      
      protected var §"!H§:MovieClip;
      
      protected var §[!g§:Array;
      
      protected var §?![§:Array;
      
      protected var §`!c§:int = 0;
      
      protected var §^!9§:int = 0;
      
      protected var §]!r§:int = 0;
      
      protected var §""§:Boolean = false;
      
      protected var §-K§:§^!#§ = null;
      
      protected var §-!S§:Dictionary;
      
      protected var §;!g§:Array;
      
      protected var §[P§:Array;
      
      protected var §#h§:§]`§;
      
      protected var §!!1§:Number = 0;
      
      public function §#B§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§=4§();
         while(this.§;!s§.mClip.numChildren > 0)
         {
            this.§;!s§.mClip.removeChildAt(0);
         }
         this.§?![§ = [];
         this.§[!g§ = [];
      }
      
      protected function §=4§() : void
      {
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelSelection[0]);
         this.§;!s§ = §;i§.getItemByName("Container_LevelRepeaters") as §>"-§;
         this.§6!H§ = §;i§.getItemByName("Container_LevelSelection") as §>"-§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §%s§.§`!f§.clearLevel();
         §%s§.§`!f§.§6M§(false);
         this.§5W§();
         this.§4g§();
         if(this.§?![§.length == 1)
         {
            (§;i§.getItemByName("Button_Prev") as §="5§).setVisibility(false);
            (§;i§.getItemByName("Button_Next") as §="5§).setVisibility(false);
            (§;i§.getItemByName("TextField_LevelNumberSmall") as §7!N§).setVisibility(false);
         }
         else
         {
            (§;i§.getItemByName("Button_Prev") as §="5§).setVisibility(true);
            (§;i§.getItemByName("Button_Next") as §="5§).setVisibility(true);
            (§;i§.getItemByName("TextField_LevelNumberSmall") as §7!N§).setVisibility(true);
         }
         this.§!!1§ = this.§;!s§.x;
         if(§;i§.stage)
         {
            §;i§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§8I§);
         }
      }
      
      protected function §4g§() : void
      {
         AngryBirdsFP11.§4g§();
      }
      
      protected function §8I§(param1:KeyboardEvent) : void
      {
         if(this.§?![§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§,![§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§5V§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§2!j§();
         this.§6! §();
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      protected function §2!j§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!g§.length)
         {
            if(-this.§;!s§.x >= this.§?![§[_loc1_].x && -this.§!!1§ < this.§?![§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[!g§.length)
               {
                  this.§[!g§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§]!r§ = _loc1_;
               this.§[!g§[_loc1_].gotoAndStop("Selected");
               (§;i§.getItemByName("TextField_LevelNumberSmall") as §7!N§).x = this.§[!g§[_loc1_].x;
               this.§]W§(_loc1_);
            }
            if(-this.§;!s§.x <= this.§?![§[_loc1_].x && -this.§!!1§ > this.§?![§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[!g§.length)
               {
                  this.§[!g§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§]!r§ = _loc1_;
               this.§[!g§[_loc1_].gotoAndStop("Selected");
               (§;i§.getItemByName("TextField_LevelNumberSmall") as §7!N§).x = this.§[!g§[_loc1_].x;
               this.§]W§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§]!r§ != this.§`!c§)
         {
            if(this.§`!c§ > this.§]!r§)
            {
               this.§^!9§ = this.§]!r§ + 1;
            }
            else if(this.§`!c§ < this.§]!r§)
            {
               this.§^!9§ = this.§]!r§ - 1;
            }
            else
            {
               this.§^!9§ = this.§]!r§;
            }
            if(this.§;!g§[this.§^!9§])
            {
               this.§#h§.§^!Q§(this.§;!g§[this.§^!9§].red,this.§;!g§[this.§^!9§].green,this.§;!g§[this.§^!9§].blue);
            }
         }
         this.§!!1§ = this.§;!s§.x;
      }
      
      protected function §6! §() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?![§.length)
         {
            _loc2_ = this.§;!s§.x + this.§?![§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§?![§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§?![§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§?![§[_loc1_].mClip.alpha < 1)
            {
               (this.§?![§[_loc1_] as §&"1§).setEnabled(false);
            }
            else
            {
               (this.§?![§[_loc1_] as §&"1§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§;i§.stage)
         {
            §;i§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8I§);
         }
         super.deActivate();
         this.§=!X§();
         (§;i§.getItemByName("Button_Back") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §1!c§.§!f§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§-K§)
         {
            this.§-K§.stop();
            this.§-K§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         if(param2.length > 0 && param3 is §7G§)
         {
            if((param3 as §7G§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §7G§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§""§)
               {
                  §1!c§.loadLevel(§1!c§.§-"+§(param2.toLowerCase()));
                  mNextState = StateCutScene.§8G§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §'!B§.playSound("Menu_Back");
               mNextState = §7!_§.§8G§;
               break;
            case "NEXT":
               this.§5V§();
               break;
            case "PREV":
               this.§,![§();
               break;
            case "FULLSCREEN_BUTTON":
               §'!B§.playSound("Menu_Confirm");
               AngryBirdsFP11.§?!-§.§>=§();
         }
      }
      
      protected function §5V§() : void
      {
         §'!B§.playSound("Menu_Confirm");
         if(!this.§""§)
         {
            ++this.§`!c§;
            this.§3!=§(this.§`!c§);
         }
      }
      
      protected function §,![§() : void
      {
         §'!B§.playSound("Menu_Confirm");
         if(!this.§""§)
         {
            --this.§`!c§;
            this.§3!=§(this.§`!c§);
         }
      }
      
      public function §5W§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§;!g§ = [];
         this.§[P§ = [];
         this.§`!c§ = §1!c§.§?a§(§1!c§.§+$§).§#z§;
         this.§^!9§ = this.§`!c§;
         this.§]!r§ = this.§`!c§;
         var _loc2_:§68§ = §1!c§.§?a§(§1!c§.§+$§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§#O§(_loc2_.pageIndexes[_loc3_]);
            this.§;!g§.push(_loc2_.§+!0§(_loc3_));
            this.§[P§.push(_loc2_.§10§(_loc3_));
            _loc1_ = this.§ "§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§#h§ = new §]`§(this.§;!g§[this.§`!c§].red,this.§;!g§[this.§`!c§].green,this.§;!g§[this.§`!c§].blue,1);
         §;i§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§#h§);
         if(_loc2_.§[!]§)
         {
            _loc6_ = new (_loc5_ = §8!q§.§2^§(_loc2_.§[!]§))();
            §;i§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §;i§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§9H§)
         {
            _loc8_ = new (_loc7_ = §8!q§.§2^§(_loc2_.§9H§))();
            §;i§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §;i§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§4!6§();
         if(§-"#§ == StateCutScene.§8G§)
         {
            §-"#§ = "";
            this.§3!=§(this.§]!r§);
         }
         else
         {
            this.§3!=§(this.§`!c§,true);
         }
      }
      
      protected function § "§(param1:Array, param2:int, param3:Number, param4:§68§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §8!q§.§2^§(this.§[P§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.§5!c§.§2T§(_loc10_);
            _loc12_ = this.§""%§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§3'§)
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
         _loc8_.@button = this.§[P§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§`!n§;
         (_loc9_ = new §`!n§(_loc8_,this.§;!s§,null,null)).§ !@§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§;!s§.§?!;§(_loc9_);
         this.§?![§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.§`6§);
      }
      
      protected function §""%§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.§5!c§.§,!z§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.§5!c§.§'!5§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §4!6§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§?![§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§-!S§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§?![§.length)
         {
            _loc1_ = §8!q§.§2^§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.§`6§ / 2 + _loc3_ - this.§?![§.length * _loc2_.width / 2;
            _loc2_.y = (§;i§.getItemByName("Button_Next") as §="5§).y - _loc2_.height / 2;
            if(_loc4_ == this.§`!c§)
            {
               _loc2_.gotoAndStop("Selected");
               (§;i§.getItemByName("TextField_LevelNumberSmall") as §7!N§).x = _loc2_.x;
               (§;i§.getItemByName("TextField_LevelNumberSmall") as §7!N§).y = _loc2_.y - _loc2_.height;
               this.§]W§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§6!H§.mClip.addChild(_loc2_);
            this.§-!S§[_loc2_] = _loc4_;
            this.§[!g§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!E§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§?![§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§;i§.getItemByName("Button_Next") as §="5§).x = AngryBirdsFP11.§`6§ / 2;
         (§;i§.getItemByName("Button_Prev") as §="5§).x = AngryBirdsFP11.§`6§ / 2;
         (§;i§.getItemByName("Button_Next") as §="5§).x = (§;i§.getItemByName("Button_Next") as §="5§).x + (_loc3_ + 10);
         (§;i§.getItemByName("Button_Prev") as §="5§).x = (§;i§.getItemByName("Button_Prev") as §="5§).x - (_loc3_ + 10);
      }
      
      protected function §=!X§() : void
      {
         if(this.§#h§)
         {
            this.§#h§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!g§.length)
         {
            if(this.§6!H§.mClip.contains(this.§[!g§[_loc1_]))
            {
               this.§[!g§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§?!E§);
               this.§6!H§.mClip.removeChild(this.§[!g§[_loc1_]);
            }
            _loc1_++;
         }
         this.§[!g§ = [];
         while(this.§;!s§.mClip.numChildren > 0)
         {
            this.§;!s§.mClip.removeChildAt(0);
         }
         this.§?![§ = [];
      }
      
      protected function §?!E§(param1:MouseEvent) : void
      {
         if(!this.§""§)
         {
            this.§3!=§(this.§-!S§[param1.target]);
         }
      }
      
      protected function §3!!§(param1:MouseEvent) : void
      {
         if(!this.§""§)
         {
            mNextState = §#B§.§8G§;
         }
      }
      
      protected function §3!=§(param1:int, param2:Boolean = false) : void
      {
         this.§""§ = true;
         if(param1 > this.§?![§.length - 1)
         {
            param1 = this.§?![§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§`!c§ = param1;
         if(this.§`!c§ > this.§]!r§)
         {
            this.§^!9§ = this.§]!r§ + 1;
         }
         else if(this.§`!c§ < this.§]!r§)
         {
            this.§^!9§ = this.§]!r§ - 1;
         }
         var _loc3_:Number = -this.§?![§[param1].x;
         var _loc4_:Number = this.§?![§[param1].x + this.§;!s§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §-R§;
         if(this.§-K§ != null)
         {
            this.§-K§.stop();
         }
         if(param2)
         {
            this.§;!s§.x = _loc3_;
         }
         else
         {
            this.§-K§ = §"g§.§'!o§.§while§(this.§;!s§,{"x":_loc3_},null,_loc5_,§"g§.§+!a§);
            this.§-K§.onComplete = this.§"!t§;
         }
         if(param2)
         {
            this.§"!t§();
         }
         else
         {
            this.§-K§.play();
         }
      }
      
      protected function §"!t§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!g§.length)
         {
            if(_loc1_ == this.§`!c§)
            {
               this.§[!g§[_loc1_].gotoAndStop("Selected");
               (§;i§.getItemByName("TextField_LevelNumberSmall") as §7!N§).x = this.§[!g§[_loc1_].x;
               this.§]W§(_loc1_);
            }
            else
            {
               this.§[!g§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§""§ = false;
         §1!c§.§?a§(§1!c§.§+$§).§#z§ = this.§`!c§;
      }
      
      protected function §]W§(param1:int) : void
      {
         (§;i§.getItemByName("TextField_LevelNumberSmall") as §7!N§).§"!_§.text = §1!c§.§?a§(§1!c§.§+$§).pageIndexes[param1];
      }
   }
}
