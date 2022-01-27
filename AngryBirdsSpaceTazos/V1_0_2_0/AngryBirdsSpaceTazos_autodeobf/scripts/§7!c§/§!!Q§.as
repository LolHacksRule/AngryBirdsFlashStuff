package §7!c§
{
   import §!i§.§%!'§;
   import §!i§.§1W§;
   import §!i§.§1s§;
   import §!i§.§3!A§;
   import §!i§.§?"%§;
   import §"!>§.§<!o§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §7"+§.§;"B§;
   import §9!G§.§"!S§;
   import §;!0§.;
   import §;!0§.§]§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §]!O§.§^!j§;
   import com.rovio.assets.§2!3§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §!!Q§ extends §%<§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §]O§:Number = 0.5;
      
      public static var §&E§:String = "";
       
      
      protected var §3"5§:Boolean = false;
      
      protected var §;N§:§1s§;
      
      protected var §8!S§:§1s§;
      
      protected var §3!,§:MovieClip;
      
      protected var §;!#§:Array;
      
      protected var §9V§:Array;
      
      protected var §%!k§:int = 0;
      
      protected var §'!_§:int = 0;
      
      protected var §,Y§:int = 0;
      
      protected var §2!N§:Boolean = false;
      
      protected var §-!2§:§8"+§ = null;
      
      protected var §<%§:Dictionary;
      
      protected var §6L§:Array;
      
      protected var §!!x§:Array;
      
      protected var §0"#§:§^!j§;
      
      protected var §6!I§:Number = 0;
      
      public function §!!Q§(param1:§#2§, param2:§<!o§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§5"-§();
         while(this.§8!S§.mClip.numChildren > 0)
         {
            this.§8!S§.mClip.removeChildAt(0);
         }
         this.§9V§ = [];
         this.§;!#§ = [];
      }
      
      protected function §5"-§() : void
      {
         §4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_LevelSelection[0]);
         this.§8!S§ = §4§.getItemByName("Container_LevelRepeaters") as §1s§;
         this.§;N§ = §4§.getItemByName("Container_LevelSelection") as §1s§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;0§.§@!^§.clearLevel();
         §;0§.§@!^§.§'!z§(false);
         this.§"!§();
         §&!h§.§ u§.§`=§();
         if(this.§9V§.length == 1)
         {
            (§4§.getItemByName("Button_Prev") as §3!A§).setVisibility(false);
            (§4§.getItemByName("Button_Next") as §3!A§).setVisibility(false);
            (§4§.getItemByName("TextField_LevelNumberSmall") as §?"%§).setVisibility(false);
         }
         else
         {
            (§4§.getItemByName("Button_Prev") as §3!A§).setVisibility(true);
            (§4§.getItemByName("Button_Next") as §3!A§).setVisibility(true);
            (§4§.getItemByName("TextField_LevelNumberSmall") as §?"%§).setVisibility(true);
         }
         this.§6!I§ = this.§8!S§.x;
         if(§4§.stage)
         {
            §4§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!"C§);
         }
      }
      
      protected function §!"C§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§5![§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§;"@§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.checkIfPagePassed();
         this.§8!0§();
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!#§.length)
         {
            if(-this.§8!S§.x >= this.§9V§[_loc1_].x && -this.§6!I§ < this.§9V§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§;!#§.length)
               {
                  this.§;!#§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§,Y§ = _loc1_;
               this.§;!#§[_loc1_].gotoAndStop("Selected");
               (§4§.getItemByName("TextField_LevelNumberSmall") as §?"%§).x = this.§;!#§[_loc1_].x;
               this.§6!8§(_loc1_);
            }
            if(-this.§8!S§.x <= this.§9V§[_loc1_].x && -this.§6!I§ > this.§9V§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§;!#§.length)
               {
                  this.§;!#§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§,Y§ = _loc1_;
               this.§;!#§[_loc1_].gotoAndStop("Selected");
               (§4§.getItemByName("TextField_LevelNumberSmall") as §?"%§).x = this.§;!#§[_loc1_].x;
               this.§6!8§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§,Y§ != this.§%!k§)
         {
            if(this.§%!k§ > this.§,Y§)
            {
               this.§'!_§ = this.§,Y§ + 1;
            }
            else if(this.§%!k§ < this.§,Y§)
            {
               this.§'!_§ = this.§,Y§ - 1;
            }
            else
            {
               this.§'!_§ = this.§,Y§;
            }
            this.§0"#§.§]6§(this.§6L§[this.§'!_§].red,this.§6L§[this.§'!_§].green,this.§6L§[this.§'!_§].blue);
         }
         this.§6!I§ = this.§8!S§.x;
      }
      
      protected function §8!0§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9V§.length)
         {
            _loc2_ = this.§8!S§.x + this.§9V§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§9V§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§9V§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§9V§[_loc1_].mClip.alpha < 1)
            {
               (this.§9V§[_loc1_] as §1W§).setEnabled(false);
            }
            else
            {
               (this.§9V§[_loc1_] as §1W§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§4§.stage)
         {
            §4§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!"C§);
         }
         super.deActivate();
         this.§,"-§();
         (§4§.getItemByName("Button_Back") as §3!A§).setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §,W§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§-!2§)
         {
            this.§-!2§.stop();
            this.§-!2§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         if(param2.length > 0 && param3 is §%!'§)
         {
            if((param3 as §%!'§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §%!'§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§2!N§)
               {
                  §,W§.loadLevel(§,W§.getValidLevelId(param2.toLowerCase()));
                  §2g§(StateCutScene.STATE_NAME);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §"!S§.playSound("Menu_Back");
               §2g§(StateEpisodeSelection.STATE_NAME);
               break;
            case "NEXT":
               this.§;"@§();
               break;
            case "PREV":
               this.§5![§();
               break;
            case "FULLSCREEN_BUTTON":
               §"!S§.playSound("Menu_Confirm");
               §&!h§.§ u§.§+"4§();
         }
      }
      
      protected function §;"@§() : void
      {
         §"!S§.playSound("Menu_Confirm");
         if(!this.§2!N§)
         {
            ++this.§%!k§;
            this.§8!k§(this.§%!k§);
         }
      }
      
      protected function §5![§() : void
      {
         §"!S§.playSound("Menu_Confirm");
         if(!this.§2!N§)
         {
            --this.§%!k§;
            this.§8!k§(this.§%!k§);
         }
      }
      
      public function §"!§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§6L§ = [];
         this.§!!x§ = [];
         var _loc2_:§]§ = §,W§.getEpisode(§,W§.currentEpisode);
         this.§%!k§ = _loc2_.currentPage;
         this.§'!_§ = this.§%!k§;
         this.§,Y§ = this.§%!k§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§>"4§)
         {
            _loc4_ = _loc2_.§!w§(_loc3_);
            this.§6L§.push(_loc2_.§3!V§(_loc3_));
            this.§!!x§.push(_loc2_.§6'§(_loc3_));
            _loc1_ = this.§]!e§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§0"#§ = new §^!j§(this.§6L§[this.§%!k§].red,this.§6L§[this.§%!k§].green,this.§6L§[this.§%!k§].blue,1);
         §4§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§0"#§);
         if(_loc2_.§`1§)
         {
            _loc6_ = new (_loc5_ = §2!3§.dynamic(_loc2_.§`1§))();
            §4§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §4§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§?c§)
         {
            _loc8_ = new (_loc7_ = §2!3§.dynamic(_loc2_.§?c§))();
            §4§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §4§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§;Q§();
         if(§&E§ == StateCutScene.STATE_NAME)
         {
            §&E§ = "";
            this.§8!k§(this.§,Y§);
         }
         else
         {
            this.§8!k§(this.§%!k§,true);
         }
      }
      
      protected function §]!e§(param1:Array, param2:int, param3:Number, param4:§]§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §2!3§.dynamic(this.§!!x§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §&!h§.§ u§.§-!V§.userProgress.§1">§(_loc10_);
            _loc12_ = this.§;!&§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §&!h§.§+",§)
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
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = this.§!!x§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§1W§;
         (_loc9_ = new §1W§(_loc8_,this.§8!S§,null,null)).§@X§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§8!S§.§6!3§(_loc9_);
         this.§9V§.push(_loc9_);
         return Number(param3 + §&!h§.screenWidth);
      }
      
      protected function §;!&§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§&!h§.§ u§.§-!V§.userProgress.§-A§(param1) == 100)
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
            _loc7_ = §&!h§.§ u§.§-!V§.userProgress.§]!F§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §;Q§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§9V§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§<%§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§9V§.length)
         {
            _loc1_ = §2!3§.dynamic("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §&!h§.screenWidth / 2 + _loc3_ - this.§9V§.length * _loc2_.width / 2;
            _loc2_.y = (§4§.getItemByName("Button_Next") as §3!A§).y - _loc2_.height / 2;
            if(_loc4_ == this.§%!k§)
            {
               _loc2_.gotoAndStop("Selected");
               (§4§.getItemByName("TextField_LevelNumberSmall") as §?"%§).x = _loc2_.x;
               (§4§.getItemByName("TextField_LevelNumberSmall") as §?"%§).y = _loc2_.y - _loc2_.height;
               this.§6!8§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§;N§.mClip.addChild(_loc2_);
            this.§<%§[_loc2_] = _loc4_;
            this.§;!#§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§+!X§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§9V§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§4§.getItemByName("Button_Next") as §3!A§).x = §&!h§.screenWidth / 2;
         (§4§.getItemByName("Button_Prev") as §3!A§).x = §&!h§.screenWidth / 2;
         (§4§.getItemByName("Button_Next") as §3!A§).x = (§4§.getItemByName("Button_Next") as §3!A§).x + (_loc3_ + 10);
         (§4§.getItemByName("Button_Prev") as §3!A§).x = (§4§.getItemByName("Button_Prev") as §3!A§).x - (_loc3_ + 10);
      }
      
      protected function §,"-§() : void
      {
         if(this.§0"#§)
         {
            this.§0"#§.§#!O§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!#§.length)
         {
            if(this.§;N§.mClip.contains(this.§;!#§[_loc1_]))
            {
               this.§;!#§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§+!X§);
               this.§;N§.mClip.removeChild(this.§;!#§[_loc1_]);
            }
            _loc1_++;
         }
         this.§;!#§ = [];
         while(this.§8!S§.mClip.numChildren > 0)
         {
            this.§8!S§.mClip.removeChildAt(0);
         }
         this.§9V§ = [];
      }
      
      protected function §+!X§(param1:MouseEvent) : void
      {
         if(!this.§2!N§)
         {
            this.§8!k§(this.§<%§[param1.target]);
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         if(!this.§2!N§)
         {
            §2g§(§!!Q§.STATE_NAME);
         }
      }
      
      protected function §8!k§(param1:int, param2:Boolean = false) : void
      {
         this.§2!N§ = true;
         if(param1 > this.§9V§.length - 1)
         {
            param1 = this.§9V§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§%!k§ = param1;
         if(this.§%!k§ > this.§,Y§)
         {
            this.§'!_§ = this.§,Y§ + 1;
         }
         else if(this.§%!k§ < this.§,Y§)
         {
            this.§'!_§ = this.§,Y§ - 1;
         }
         var _loc3_:Number = -this.§9V§[param1].x;
         var _loc4_:Number = this.§9V§[param1].x + this.§8!S§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §]O§;
         if(this.§-!2§ != null)
         {
            this.§-!2§.stop();
         }
         if(param2)
         {
            this.§8!S§.x = _loc3_;
         }
         else
         {
            this.§-!2§ = §<K§.§<"B§.§`!c§(this.§8!S§,{"x":_loc3_},null,_loc5_,§;"B§.easeOut);
            this.§-!2§.onComplete = this.§#!f§;
         }
         if(param2)
         {
            this.§#!f§();
         }
         else
         {
            this.§-!2§.play();
         }
      }
      
      protected function §#!f§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!#§.length)
         {
            if(_loc1_ == this.§%!k§)
            {
               this.§;!#§[_loc1_].gotoAndStop("Selected");
               (§4§.getItemByName("TextField_LevelNumberSmall") as §?"%§).x = this.§;!#§[_loc1_].x;
               this.§6!8§(_loc1_);
            }
            else
            {
               this.§;!#§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§2!N§ = false;
         §,W§.getEpisode(§,W§.currentEpisode).currentPage = this.§%!k§;
      }
      
      protected function §6!8§(param1:int) : void
      {
         (§4§.getItemByName("TextField_LevelNumberSmall") as §?"%§).§8!o§.text = §,W§.getEpisode(§,W§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
