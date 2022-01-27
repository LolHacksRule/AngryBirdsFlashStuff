package §<"c§
{
   import §+D§.§ #^§;
   import §+D§.§&E§;
   import §+D§.§6!D§;
   import §+D§.§?"o§;
   import §+D§.§^"m§;
   import §3§.§4! §;
   import §3y§.§9r§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import com.angrybirds.§,!q§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §+#?§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelSelectionState";
      
      protected static const §'!i§:Number = 0.5;
      
      public static var §'"6§:String = "";
       
      
      protected var §@!U§:Boolean = false;
      
      protected var §-#B§:§ #^§;
      
      protected var §+S§:§ #^§;
      
      protected var §]W§:MovieClip;
      
      protected var §5!7§:Array;
      
      protected var §#"9§:Array;
      
      protected var §?"Y§:int = 0;
      
      protected var §3s§:int = 0;
      
      protected var §#"x§:int = 0;
      
      protected var §!!Q§:Boolean = false;
      
      protected var §>!M§:§[#R§ = null;
      
      protected var §+!V§:Dictionary;
      
      protected var §!"@§:Array;
      
      protected var §;!^§:Array;
      
      protected var §@"r§:§4! §;
      
      protected var §]3§:Number = 0;
      
      public function §+#?§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§!#<§();
         while(this.§+S§.mClip.numChildren > 0)
         {
            this.§+S§.mClip.removeChildAt(0);
         }
         this.§#"9§ = [];
         this.§5!7§ = [];
      }
      
      protected function §!#<§() : void
      {
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_LevelSelection[0]);
         this.§+S§ = §@;§.getItemByName("Container_LevelRepeaters") as § #^§;
         this.§-#B§ = §@;§.getItemByName("Container_LevelSelection") as § #^§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!q§.§9!,§.clearLevel();
         §,!q§.§9!,§.§]"J§(false);
         this.§&#G§();
         §4#;§.singleton.playThemeMusic();
         if(this.§#"9§.length == 1)
         {
            (§@;§.getItemByName("Button_Prev") as §^"m§).setVisibility(false);
            (§@;§.getItemByName("Button_Next") as §^"m§).setVisibility(false);
            (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).setVisibility(false);
         }
         else
         {
            (§@;§.getItemByName("Button_Prev") as §^"m§).setVisibility(true);
            (§@;§.getItemByName("Button_Next") as §^"m§).setVisibility(true);
            (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).setVisibility(true);
         }
         this.§]3§ = this.§+S§.x;
         if(§@;§.stage)
         {
            §@;§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§#"@§);
         }
      }
      
      protected function §#"@§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§^!V§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§#!h§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§]!f§();
         this.§4#3§();
      }
      
      protected function §]!f§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!7§.length)
         {
            if(-this.§+S§.x >= this.§#"9§[_loc1_].x && -this.§]3§ < this.§#"9§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5!7§.length)
               {
                  this.§5!7§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#"x§ = _loc1_;
               this.§5!7§[_loc1_].gotoAndStop("Selected");
               (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).x = this.§5!7§[_loc1_].x;
               this.§,";§(_loc1_);
            }
            if(-this.§+S§.x <= this.§#"9§[_loc1_].x && -this.§]3§ > this.§#"9§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5!7§.length)
               {
                  this.§5!7§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#"x§ = _loc1_;
               this.§5!7§[_loc1_].gotoAndStop("Selected");
               (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).x = this.§5!7§[_loc1_].x;
               this.§,";§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§#"x§ != this.§?"Y§)
         {
            if(this.§?"Y§ > this.§#"x§)
            {
               this.§3s§ = this.§#"x§ + 1;
            }
            else if(this.§?"Y§ < this.§#"x§)
            {
               this.§3s§ = this.§#"x§ - 1;
            }
            else
            {
               this.§3s§ = this.§#"x§;
            }
            this.§@"r§.§?s§(this.§!"@§[this.§3s§].red,this.§!"@§[this.§3s§].green,this.§!"@§[this.§3s§].blue);
         }
         this.§]3§ = this.§+S§.x;
      }
      
      protected function §4#3§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#"9§.length)
         {
            _loc2_ = this.§+S§.x + this.§#"9§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§#"9§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§#"9§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§#"9§[_loc1_].mClip.alpha < 1)
            {
               (this.§#"9§[_loc1_] as §?"o§).setEnabled(false);
            }
            else
            {
               (this.§#"9§[_loc1_] as §?"o§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§@;§.stage)
         {
            §@;§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§#"@§);
         }
         super.deActivate();
         this.§`!I§();
         (§@;§.getItemByName("Button_Back") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §+!b§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§>!M§)
         {
            this.§>!M§.stop();
            this.§>!M§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         if(param2.length > 0 && param3 is §&E§)
         {
            if((param3 as §&E§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §&E§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§!!Q§)
               {
                  §+!b§.loadLevel(§+!b§.getValidLevelId(param2.toLowerCase()));
                  § g§(StateCutScene.§^!7§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §?!r§.§"#_§("Menu_Back");
               § g§(§"C§.§^!7§);
               break;
            case "NEXT":
               this.§#!h§();
               break;
            case "PREV":
               this.§^!V§();
               break;
            case "FULLSCREEN_BUTTON":
               §?!r§.§"#_§("Menu_Confirm");
               §4#;§.singleton.§5"q§();
         }
      }
      
      protected function §#!h§() : void
      {
         §?!r§.§"#_§("Menu_Confirm");
         if(!this.§!!Q§)
         {
            ++this.§?"Y§;
            this.§@"f§(this.§?"Y§);
         }
      }
      
      protected function §^!V§() : void
      {
         §?!r§.§"#_§("Menu_Confirm");
         if(!this.§!!Q§)
         {
            --this.§?"Y§;
            this.§@"f§(this.§?"Y§);
         }
      }
      
      public function §&#G§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§!"@§ = [];
         this.§;!^§ = [];
         var _loc2_:§3![§ = §+!b§.getEpisode(§+!b§.currentEpisode);
         this.§?"Y§ = _loc2_.currentPage;
         this.§3s§ = this.§?"Y§;
         this.§#"x§ = this.§?"Y§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§6">§)
         {
            _loc4_ = _loc2_.§,"O§(_loc3_);
            this.§!"@§.push(_loc2_.§^"b§(_loc3_));
            this.§;!^§.push(_loc2_.§'"w§(_loc3_));
            _loc1_ = this.§6#S§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§@"r§ = new §4! §(this.§!"@§[this.§?"Y§].red,this.§!"@§[this.§?"Y§].green,this.§!"@§[this.§?"Y§].blue,1);
         §@;§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§@"r§);
         if(_loc2_.§@#$§)
         {
            _loc6_ = new (_loc5_ = §5_§.§`"G§(_loc2_.§@#$§))();
            §@;§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §@;§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§#!w§)
         {
            _loc8_ = new (_loc7_ = §5_§.§`"G§(_loc2_.§#!w§))();
            §@;§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §@;§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§9!W§();
         if(§'"6§ == StateCutScene.§^!7§)
         {
            §'"6§ = "";
            this.§@"f§(this.§#"x§);
         }
         else
         {
            this.§@"f§(this.§?"Y§,true);
         }
      }
      
      protected function §6#S§(param1:Array, param2:int, param3:Number, param4:§3![§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §5_§.§`"G§(this.§;!^§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §4#;§.singleton.dataModel.userProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§,#=§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §4#;§.§<N§)
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
         if(param1.length == 15)
         {
            _loc8_.@name = "Repeater_LevelSelection15";
         }
         else if(param1.length == 12)
         {
            _loc8_.@name = "Repeater_LevelSelection12";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§;!^§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§?"o§;
         (_loc9_ = new §?"o§(_loc8_,this.§+S§,null,null)).§2!_§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§+S§.§;S§(_loc9_);
         this.§#"9§.push(_loc9_);
         return Number(param3 + §4#;§.screenWidth);
      }
      
      protected function §,#=§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(param1) == 100)
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
            _loc7_ = §4#;§.singleton.dataModel.userProgress.getStarsForLevel(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §9!W§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§#"9§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§+!V§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§#"9§.length)
         {
            _loc1_ = §5_§.§`"G§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §4#;§.screenWidth / 2 + _loc3_ - this.§#"9§.length * _loc2_.width / 2;
            _loc2_.y = (§@;§.getItemByName("Button_Next") as §^"m§).y - _loc2_.height / 2;
            if(_loc4_ == this.§?"Y§)
            {
               _loc2_.gotoAndStop("Selected");
               (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).x = _loc2_.x;
               (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).y = _loc2_.y - _loc2_.height;
               this.§,";§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§-#B§.mClip.addChild(_loc2_);
            this.§+!V§[_loc2_] = _loc4_;
            this.§5!7§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§^"3§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§#"9§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§@;§.getItemByName("Button_Next") as §^"m§).x = §4#;§.screenWidth / 2;
         (§@;§.getItemByName("Button_Prev") as §^"m§).x = §4#;§.screenWidth / 2;
         (§@;§.getItemByName("Button_Next") as §^"m§).x = (§@;§.getItemByName("Button_Next") as §^"m§).x + (_loc3_ + 10);
         (§@;§.getItemByName("Button_Prev") as §^"m§).x = (§@;§.getItemByName("Button_Prev") as §^"m§).x - (_loc3_ + 10);
      }
      
      protected function §`!I§() : void
      {
         if(this.§@"r§)
         {
            this.§@"r§.§%!G§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!7§.length)
         {
            if(this.§-#B§.mClip.contains(this.§5!7§[_loc1_]))
            {
               this.§5!7§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§^"3§);
               this.§-#B§.mClip.removeChild(this.§5!7§[_loc1_]);
            }
            _loc1_++;
         }
         this.§5!7§ = [];
         this.§+S§.§7N§();
         this.§#"9§ = [];
      }
      
      protected function §^"3§(param1:MouseEvent) : void
      {
         if(!this.§!!Q§)
         {
            this.§@"f§(this.§+!V§[param1.target]);
         }
      }
      
      protected function §5#P§(param1:MouseEvent) : void
      {
         if(!this.§!!Q§)
         {
            § g§(§+#?§.§^!7§);
         }
      }
      
      protected function §@"f§(param1:int, param2:Boolean = false) : void
      {
         this.§!!Q§ = true;
         if(param1 > this.§#"9§.length - 1)
         {
            param1 = this.§#"9§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§?"Y§ = param1;
         if(this.§?"Y§ > this.§#"x§)
         {
            this.§3s§ = this.§#"x§ + 1;
         }
         else if(this.§?"Y§ < this.§#"x§)
         {
            this.§3s§ = this.§#"x§ - 1;
         }
         var _loc3_:Number = -this.§#"9§[param1].x;
         var _loc4_:Number = this.§#"9§[param1].x + this.§+S§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §'!i§;
         if(this.§>!M§ != null)
         {
            this.§>!M§.stop();
         }
         if(param2)
         {
            this.§+S§.x = _loc3_;
         }
         else
         {
            this.§>!M§ = §-#C§.§%!E§.§^!H§(this.§+S§,{"x":_loc3_},null,_loc5_,§9r§.easeOut);
            this.§>!M§.onComplete = this.§]2§;
         }
         if(param2)
         {
            this.§]2§();
         }
         else
         {
            this.§>!M§.play();
         }
      }
      
      protected function §]2§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!7§.length)
         {
            if(_loc1_ == this.§?"Y§)
            {
               this.§5!7§[_loc1_].gotoAndStop("Selected");
               (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).x = this.§5!7§[_loc1_].x;
               this.§,";§(_loc1_);
            }
            else
            {
               this.§5!7§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§!!Q§ = false;
         §+!b§.getEpisode(§+!b§.currentEpisode).currentPage = this.§?"Y§;
      }
      
      protected function §,";§(param1:int) : void
      {
         (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).§13§.text = §+!b§.getEpisode(§+!b§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
