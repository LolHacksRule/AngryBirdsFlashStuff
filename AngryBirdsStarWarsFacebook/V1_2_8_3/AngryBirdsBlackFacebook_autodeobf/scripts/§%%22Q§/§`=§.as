package §%"Q§
{
   import §!"-§.set;
   import §&!j§.§5#+§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §9!a§.§&c§;
   import §=Z§.§&!F§;
   import §=Z§.§'"i§;
   import §=Z§.§0%§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import §null §.§5!K§;
   import §null §.§5#§;
   
   public class §`=§ extends §`!6§
   {
      
      public static const §-!U§:String = "LevelSelectionState";
      
      protected static const §#E§:Number = 0.5;
      
      public static var §@"L§:String = "";
       
      
      protected var §""z§:Boolean = false;
      
      protected var §&#4§:§@!8§;
      
      protected var §%I§:§@!8§;
      
      protected var §4"C§:MovieClip;
      
      protected var §!K§:Array;
      
      protected var §3"j§:Array;
      
      protected var § !k§:int = 0;
      
      protected var §<!v§:int = 0;
      
      protected var §7!0§:int = 0;
      
      protected var §;"B§:Boolean = false;
      
      protected var §@@§:§%b§ = null;
      
      protected var §@j§:Dictionary;
      
      protected var §##§:Array;
      
      protected var §0"=§:Array;
      
      protected var §+"l§:§&c§;
      
      protected var §3!=§:Number = 0;
      
      public function §`=§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§[S§();
         while(this.§%I§.mClip.numChildren > 0)
         {
            this.§%I§.mClip.removeChildAt(0);
         }
         this.§3"j§ = [];
         this.§!K§ = [];
      }
      
      protected function §[S§() : void
      {
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_LevelSelection[0]);
         this.§%I§ = §^!b§.getItemByName("Container_LevelRepeaters") as §@!8§;
         this.§&#4§ = §^!b§.getItemByName("Container_LevelSelection") as §@!8§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §<!J§.§=!%§.clearLevel();
         §<!J§.§=!%§.§`"V§(false);
         this.§7D§();
         §4"#§.singleton.playThemeMusic();
         if(this.§3"j§.length == 1)
         {
            (§^!b§.getItemByName("Button_Prev") as §;g§).setVisibility(false);
            (§^!b§.getItemByName("Button_Next") as §;g§).setVisibility(false);
            (§^!b§.getItemByName("TextField_LevelNumberSmall") as §0%§).setVisibility(false);
         }
         else
         {
            (§^!b§.getItemByName("Button_Prev") as §;g§).setVisibility(true);
            (§^!b§.getItemByName("Button_Next") as §;g§).setVisibility(true);
            (§^!b§.getItemByName("TextField_LevelNumberSmall") as §0%§).setVisibility(true);
         }
         this.§3!=§ = this.§%I§.x;
         if(§^!b§.stage)
         {
            §^!b§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!I§);
         }
      }
      
      protected function §!!I§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§'"h§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§8!W§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§8"x§();
         this.§!!<§();
      }
      
      protected function §8"x§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!K§.length)
         {
            if(-this.§%I§.x >= this.§3"j§[_loc1_].x && -this.§3!=§ < this.§3"j§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§!K§.length)
               {
                  this.§!K§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§7!0§ = _loc1_;
               this.§!K§[_loc1_].gotoAndStop("Selected");
               (§^!b§.getItemByName("TextField_LevelNumberSmall") as §0%§).x = this.§!K§[_loc1_].x;
               this.§%"b§(_loc1_);
            }
            if(-this.§%I§.x <= this.§3"j§[_loc1_].x && -this.§3!=§ > this.§3"j§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§!K§.length)
               {
                  this.§!K§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§7!0§ = _loc1_;
               this.§!K§[_loc1_].gotoAndStop("Selected");
               (§^!b§.getItemByName("TextField_LevelNumberSmall") as §0%§).x = this.§!K§[_loc1_].x;
               this.§%"b§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§7!0§ != this.§ !k§)
         {
            if(this.§ !k§ > this.§7!0§)
            {
               this.§<!v§ = this.§7!0§ + 1;
            }
            else if(this.§ !k§ < this.§7!0§)
            {
               this.§<!v§ = this.§7!0§ - 1;
            }
            else
            {
               this.§<!v§ = this.§7!0§;
            }
            this.§+"l§.§["o§(this.§##§[this.§<!v§].red,this.§##§[this.§<!v§].green,this.§##§[this.§<!v§].blue);
         }
         this.§3!=§ = this.§%I§.x;
      }
      
      protected function §!!<§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"j§.length)
         {
            _loc2_ = this.§%I§.x + this.§3"j§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§3"j§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§3"j§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§3"j§[_loc1_].mClip.alpha < 1)
            {
               (this.§3"j§[_loc1_] as §'"i§).setEnabled(false);
            }
            else
            {
               (this.§3"j§[_loc1_] as §'"i§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§^!b§.stage)
         {
            §^!b§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!I§);
         }
         super.deActivate();
         this.§5!D§();
         (§^!b§.getItemByName("Button_Back") as §;g§).setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §'""§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§@@§)
         {
            this.§@@§.stop();
            this.§@@§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         if(param2.length > 0 && param3 is §&!F§)
         {
            if((param3 as §&!F§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §&!F§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§;"B§)
               {
                  §'""§.loadLevel(§'""§.getValidLevelId(param2.toLowerCase()));
                  §`0§(StateCutScene.§-!U§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §=Q§.§`!A§("Menu_Back");
               §`0§(§'!V§.§-!U§);
               break;
            case "NEXT":
               this.§8!W§();
               break;
            case "PREV":
               this.§'"h§();
               break;
            case "FULLSCREEN_BUTTON":
               §=Q§.§`!A§("Menu_Confirm");
               §4"#§.singleton.§^L§();
         }
      }
      
      protected function §8!W§() : void
      {
         §=Q§.§`!A§("Menu_Confirm");
         if(!this.§;"B§)
         {
            ++this.§ !k§;
            this.§#h§(this.§ !k§);
         }
      }
      
      protected function §'"h§() : void
      {
         §=Q§.§`!A§("Menu_Confirm");
         if(!this.§;"B§)
         {
            --this.§ !k§;
            this.§#h§(this.§ !k§);
         }
      }
      
      public function §7D§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§##§ = [];
         this.§0"=§ = [];
         var _loc2_:§5!K§ = §'""§.getEpisode(§'""§.currentEpisode);
         this.§ !k§ = _loc2_.currentPage;
         this.§<!v§ = this.§ !k§;
         this.§7!0§ = this.§ !k§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§!!o§)
         {
            _loc4_ = _loc2_.§3"O§(_loc3_);
            this.§##§.push(_loc2_.§@"4§(_loc3_));
            this.§0"=§.push(_loc2_.§=%§(_loc3_));
            _loc1_ = this.§1?§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§+"l§ = new §&c§(this.§##§[this.§ !k§].red,this.§##§[this.§ !k§].green,this.§##§[this.§ !k§].blue,1);
         §^!b§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§+"l§);
         if(_loc2_.§?"r§)
         {
            _loc6_ = new (_loc5_ = §%!Z§.§;",§(_loc2_.§?"r§))();
            §^!b§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §^!b§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§1!F§)
         {
            _loc8_ = new (_loc7_ = §%!Z§.§;",§(_loc2_.§1!F§))();
            §^!b§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §^!b§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§%"Y§();
         if(§@"L§ == StateCutScene.§-!U§)
         {
            §@"L§ = "";
            this.§#h§(this.§7!0§);
         }
         else
         {
            this.§#h§(this.§ !k§,true);
         }
      }
      
      protected function §1?§(param1:Array, param2:int, param3:Number, param4:§5!K§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §%!Z§.§;",§(this.§0"=§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §4"#§.singleton.dataModel.userProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§6K§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §4"#§.§<C§)
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
         _loc8_.@button = this.§0"=§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§'"i§;
         (_loc9_ = new §'"i§(_loc8_,this.§%I§,null,null)).§ #6§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§%I§.§,,§(_loc9_);
         this.§3"j§.push(_loc9_);
         return Number(param3 + §4"#§.screenWidth);
      }
      
      protected function §6K§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§4"#§.singleton.dataModel.userProgress.getEagleScoreForLevel(param1) == 100)
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
            _loc7_ = §4"#§.singleton.dataModel.userProgress.getStarsForLevel(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §%"Y§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§3"j§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§@j§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§3"j§.length)
         {
            _loc1_ = §%!Z§.§;",§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §4"#§.screenWidth / 2 + _loc3_ - this.§3"j§.length * _loc2_.width / 2;
            _loc2_.y = (§^!b§.getItemByName("Button_Next") as §;g§).y - _loc2_.height / 2;
            if(_loc4_ == this.§ !k§)
            {
               _loc2_.gotoAndStop("Selected");
               (§^!b§.getItemByName("TextField_LevelNumberSmall") as §0%§).x = _loc2_.x;
               (§^!b§.getItemByName("TextField_LevelNumberSmall") as §0%§).y = _loc2_.y - _loc2_.height;
               this.§%"b§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§&#4§.mClip.addChild(_loc2_);
            this.§@j§[_loc2_] = _loc4_;
            this.§!K§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§=!H§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§3"j§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§^!b§.getItemByName("Button_Next") as §;g§).x = §4"#§.screenWidth / 2;
         (§^!b§.getItemByName("Button_Prev") as §;g§).x = §4"#§.screenWidth / 2;
         (§^!b§.getItemByName("Button_Next") as §;g§).x = (§^!b§.getItemByName("Button_Next") as §;g§).x + (_loc3_ + 10);
         (§^!b§.getItemByName("Button_Prev") as §;g§).x = (§^!b§.getItemByName("Button_Prev") as §;g§).x - (_loc3_ + 10);
      }
      
      protected function §5!D§() : void
      {
         if(this.§+"l§)
         {
            this.§+"l§.§ "!§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§!K§.length)
         {
            if(this.§&#4§.mClip.contains(this.§!K§[_loc1_]))
            {
               this.§!K§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§=!H§);
               this.§&#4§.mClip.removeChild(this.§!K§[_loc1_]);
            }
            _loc1_++;
         }
         this.§!K§ = [];
         while(this.§%I§.mClip.numChildren > 0)
         {
            this.§%I§.mClip.removeChildAt(0);
         }
         this.§3"j§ = [];
      }
      
      protected function §=!H§(param1:MouseEvent) : void
      {
         if(!this.§;"B§)
         {
            this.§#h§(this.§@j§[param1.target]);
         }
      }
      
      protected function §else§(param1:MouseEvent) : void
      {
         if(!this.§;"B§)
         {
            §`0§(§`=§.§-!U§);
         }
      }
      
      protected function §#h§(param1:int, param2:Boolean = false) : void
      {
         this.§;"B§ = true;
         if(param1 > this.§3"j§.length - 1)
         {
            param1 = this.§3"j§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§ !k§ = param1;
         if(this.§ !k§ > this.§7!0§)
         {
            this.§<!v§ = this.§7!0§ + 1;
         }
         else if(this.§ !k§ < this.§7!0§)
         {
            this.§<!v§ = this.§7!0§ - 1;
         }
         var _loc3_:Number = -this.§3"j§[param1].x;
         var _loc4_:Number = this.§3"j§[param1].x + this.§%I§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §#E§;
         if(this.§@@§ != null)
         {
            this.§@@§.stop();
         }
         if(param2)
         {
            this.§%I§.x = _loc3_;
         }
         else
         {
            this.§@@§ = §5!%§.§!6§.§4!M§(this.§%I§,{"x":_loc3_},null,_loc5_,set.easeOut);
            this.§@@§.onComplete = this.§9"z§;
         }
         if(param2)
         {
            this.§9"z§();
         }
         else
         {
            this.§@@§.play();
         }
      }
      
      protected function §9"z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§!K§.length)
         {
            if(_loc1_ == this.§ !k§)
            {
               this.§!K§[_loc1_].gotoAndStop("Selected");
               (§^!b§.getItemByName("TextField_LevelNumberSmall") as §0%§).x = this.§!K§[_loc1_].x;
               this.§%"b§(_loc1_);
            }
            else
            {
               this.§!K§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§;"B§ = false;
         §'""§.getEpisode(§'""§.currentEpisode).currentPage = this.§ !k§;
      }
      
      protected function §%"b§(param1:int) : void
      {
         (§^!b§.getItemByName("TextField_LevelNumberSmall") as §0%§).§9";§.text = §'""§.getEpisode(§'""§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
