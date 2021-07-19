package §;!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§%!M§;
   import §0"$§.§+!@§;
   import §0"$§.§7!a§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§3%§;
   import §8!K§.§5!Y§;
   import §8!O§.§]!n§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §+A§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelSelectionState";
      
      protected static const §9s§:Number = 0.5;
      
      public static var §!!8§:String = "";
       
      
      protected var § u§:Boolean = false;
      
      protected var §]!@§:§"!a§;
      
      protected var §6!x§:§"!a§;
      
      protected var §4q§:MovieClip;
      
      protected var §>!@§:Array;
      
      protected var §>!s§:Array;
      
      protected var §1!"§:int = 0;
      
      protected var §7W§:int = 0;
      
      protected var §!b§:int = 0;
      
      protected var §;-§:Boolean = false;
      
      protected var §0!5§:§0]§ = null;
      
      protected var §,"+§:Dictionary;
      
      protected var §]!c§:Array;
      
      protected var §`!>§:Array;
      
      protected var §7!k§:§,!e§;
      
      protected var §<0§:Number = 0;
      
      public function §+A§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§1!;§();
         while(this.§6!x§.mClip.numChildren > 0)
         {
            this.§6!x§.mClip.removeChildAt(0);
         }
         this.§>!s§ = [];
         this.§>!@§ = [];
      }
      
      protected function §1!;§() : void
      {
         §?P§ = new §2W§(this);
         §?P§.init(§#"0§.§+#§.Views.View_LevelSelection[0]);
         this.§6!x§ = §?P§.getItemByName("Container_LevelRepeaters") as §"!a§;
         this.§]!@§ = §?P§.getItemByName("Container_LevelSelection") as §"!a§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&!"§.§1!D§.clearLevel();
         §&!"§.§1!D§.§"!Q§(false);
         this.§<R§();
         §6!!§.singleton.§"!<§();
         if(this.§>!s§.length == 1)
         {
            (§?P§.getItemByName("Button_Prev") as §;§).setVisibility(false);
            (§?P§.getItemByName("Button_Next") as §;§).setVisibility(false);
            (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).setVisibility(false);
         }
         else
         {
            (§?P§.getItemByName("Button_Prev") as §;§).setVisibility(true);
            (§?P§.getItemByName("Button_Next") as §;§).setVisibility(true);
            (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).setVisibility(true);
         }
         this.§<0§ = this.§6!x§.x;
         if(§?P§.stage)
         {
            §?P§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§<" §);
         }
      }
      
      protected function §<" §(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§4"%§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§,""§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§@X§();
         this.§?m§();
      }
      
      protected function §@X§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!@§.length)
         {
            if(-this.§6!x§.x >= this.§>!s§[_loc1_].x && -this.§<0§ < this.§>!s§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§>!@§.length)
               {
                  this.§>!@§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§!b§ = _loc1_;
               this.§>!@§[_loc1_].gotoAndStop("Selected");
               (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = this.§>!@§[_loc1_].x;
               this.§2!R§(_loc1_);
            }
            if(-this.§6!x§.x <= this.§>!s§[_loc1_].x && -this.§<0§ > this.§>!s§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§>!@§.length)
               {
                  this.§>!@§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§!b§ = _loc1_;
               this.§>!@§[_loc1_].gotoAndStop("Selected");
               (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = this.§>!@§[_loc1_].x;
               this.§2!R§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§!b§ != this.§1!"§)
         {
            if(this.§1!"§ > this.§!b§)
            {
               this.§7W§ = this.§!b§ + 1;
            }
            else if(this.§1!"§ < this.§!b§)
            {
               this.§7W§ = this.§!b§ - 1;
            }
            else
            {
               this.§7W§ = this.§!b§;
            }
            this.§7!k§.§?!8§(this.§]!c§[this.§7W§].red,this.§]!c§[this.§7W§].green,this.§]!c§[this.§7W§].blue);
         }
         this.§<0§ = this.§6!x§.x;
      }
      
      protected function §?m§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!s§.length)
         {
            _loc2_ = this.§6!x§.x + this.§>!s§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§>!s§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§>!s§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§>!s§[_loc1_].mClip.alpha < 1)
            {
               (this.§>!s§[_loc1_] as §7!a§).setEnabled(false);
            }
            else
            {
               (this.§>!s§[_loc1_] as §7!a§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§?P§.stage)
         {
            §?P§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§<" §);
         }
         super.deActivate();
         this.§+p§();
         (§?P§.getItemByName("Button_Back") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §&" §.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§0!5§)
         {
            this.§0!5§.stop();
            this.§0!5§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         if(param2.length > 0 && param3 is §%!M§)
         {
            if((param3 as §%!M§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §%!M§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§;-§)
               {
                  §&" §.loadLevel(§&" §.getValidLevelId(param2.toLowerCase()));
                  §<f§(StateCutScene.§-!q§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §'!c§.§3!f§("Menu_Back");
               §<f§(StateEpisodeSelection.§-!q§);
               break;
            case "NEXT":
               this.§,""§();
               break;
            case "PREV":
               this.§4"%§();
               break;
            case "FULLSCREEN_BUTTON":
               §'!c§.§3!f§("Menu_Confirm");
               §6!!§.singleton.§%!O§();
         }
      }
      
      protected function §,""§() : void
      {
         §'!c§.§3!f§("Menu_Confirm");
         if(!this.§;-§)
         {
            ++this.§1!"§;
            this.§0n§(this.§1!"§);
         }
      }
      
      protected function §4"%§() : void
      {
         §'!c§.§3!f§("Menu_Confirm");
         if(!this.§;-§)
         {
            --this.§1!"§;
            this.§0n§(this.§1!"§);
         }
      }
      
      public function §<R§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§]!c§ = [];
         this.§`!>§ = [];
         var _loc2_:§3%§ = §&" §.getEpisode(§&" §.currentEpisode);
         this.§1!"§ = _loc2_.currentPage;
         this.§7W§ = this.§1!"§;
         this.§!b§ = this.§1!"§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§4!5§)
         {
            _loc4_ = _loc2_.§>!N§(_loc3_);
            this.§]!c§.push(_loc2_.§,U§(_loc3_));
            this.§`!>§.push(_loc2_.§1!#§(_loc3_));
            _loc1_ = this.§&"#§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§7!k§ = new §,!e§(this.§]!c§[this.§1!"§].red,this.§]!c§[this.§1!"§].green,this.§]!c§[this.§1!"§].blue,1);
         §?P§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§7!k§);
         if(_loc2_.§&!p§)
         {
            _loc6_ = new (_loc5_ = §<V§.§"!,§(_loc2_.§&!p§))();
            §?P§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §?P§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§@"%§)
         {
            _loc8_ = new (_loc7_ = §<V§.§"!,§(_loc2_.§@"%§))();
            §?P§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §?P§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§=K§();
         if(§!!8§ == StateCutScene.§-!q§)
         {
            §!!8§ = "";
            this.§0n§(this.§!b§);
         }
         else
         {
            this.§0n§(this.§1!"§,true);
         }
      }
      
      protected function §&"#§(param1:Array, param2:int, param3:Number, param4:§3%§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §<V§.§"!,§(this.§`!>§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §6!!§.singleton.§<!S§.userProgress.§]!g§(_loc10_);
            _loc12_ = this.§8Q§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §6!!§.§7!2§)
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
         _loc8_.@button = this.§`!>§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§7!a§;
         (_loc9_ = new §7!a§(_loc8_,this.§6!x§,null,null)).§=p§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§6!x§.§<!f§(_loc9_);
         this.§>!s§.push(_loc9_);
         return Number(param3 + §6!!§.§+g§);
      }
      
      protected function §8Q§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§6!!§.singleton.§<!S§.userProgress.§2p§(param1) == 100)
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
            _loc7_ = §6!!§.singleton.§<!S§.userProgress.§9"+§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §=K§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§>!s§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§,"+§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§>!s§.length)
         {
            _loc1_ = §<V§.§"!,§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §6!!§.§+g§ / 2 + _loc3_ - this.§>!s§.length * _loc2_.width / 2;
            _loc2_.y = (§?P§.getItemByName("Button_Next") as §;§).y - _loc2_.height / 2;
            if(_loc4_ == this.§1!"§)
            {
               _loc2_.gotoAndStop("Selected");
               (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = _loc2_.x;
               (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).y = _loc2_.y - _loc2_.height;
               this.§2!R§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§]!@§.mClip.addChild(_loc2_);
            this.§,"+§[_loc2_] = _loc4_;
            this.§>!@§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!p§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§>!s§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§?P§.getItemByName("Button_Next") as §;§).x = §6!!§.§+g§ / 2;
         (§?P§.getItemByName("Button_Prev") as §;§).x = §6!!§.§+g§ / 2;
         (§?P§.getItemByName("Button_Next") as §;§).x = (§?P§.getItemByName("Button_Next") as §;§).x + (_loc3_ + 10);
         (§?P§.getItemByName("Button_Prev") as §;§).x = (§?P§.getItemByName("Button_Prev") as §;§).x - (_loc3_ + 10);
      }
      
      protected function §+p§() : void
      {
         if(this.§7!k§)
         {
            this.§7!k§.§9O§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!@§.length)
         {
            if(this.§]!@§.mClip.contains(this.§>!@§[_loc1_]))
            {
               this.§>!@§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§#!p§);
               this.§]!@§.mClip.removeChild(this.§>!@§[_loc1_]);
            }
            _loc1_++;
         }
         this.§>!@§ = [];
         while(this.§6!x§.mClip.numChildren > 0)
         {
            this.§6!x§.mClip.removeChildAt(0);
         }
         this.§>!s§ = [];
      }
      
      protected function §#!p§(param1:MouseEvent) : void
      {
         if(!this.§;-§)
         {
            this.§0n§(this.§,"+§[param1.target]);
         }
      }
      
      protected function §#!J§(param1:MouseEvent) : void
      {
         if(!this.§;-§)
         {
            §<f§(§+A§.§-!q§);
         }
      }
      
      protected function §0n§(param1:int, param2:Boolean = false) : void
      {
         this.§;-§ = true;
         if(param1 > this.§>!s§.length - 1)
         {
            param1 = this.§>!s§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§1!"§ = param1;
         if(this.§1!"§ > this.§!b§)
         {
            this.§7W§ = this.§!b§ + 1;
         }
         else if(this.§1!"§ < this.§!b§)
         {
            this.§7W§ = this.§!b§ - 1;
         }
         var _loc3_:Number = -this.§>!s§[param1].x;
         var _loc4_:Number = this.§>!s§[param1].x + this.§6!x§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §9s§;
         if(this.§0!5§ != null)
         {
            this.§0!5§.stop();
         }
         if(param2)
         {
            this.§6!x§.x = _loc3_;
         }
         else
         {
            this.§0!5§ = §'^§.§2Z§.§!!f§(this.§6!x§,{"x":_loc3_},null,_loc5_,§]!n§.easeOut);
            this.§0!5§.onComplete = this.§'!L§;
         }
         if(param2)
         {
            this.§'!L§();
         }
         else
         {
            this.§0!5§.play();
         }
      }
      
      protected function §'!L§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!@§.length)
         {
            if(_loc1_ == this.§1!"§)
            {
               this.§>!@§[_loc1_].gotoAndStop("Selected");
               (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).x = this.§>!@§[_loc1_].x;
               this.§2!R§(_loc1_);
            }
            else
            {
               this.§>!@§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§;-§ = false;
         §&" §.getEpisode(§&" §.currentEpisode).currentPage = this.§1!"§;
      }
      
      protected function §2!R§(param1:int) : void
      {
         (§?P§.getItemByName("TextField_LevelNumberSmall") as §+!@§).§"v§.text = §&" §.getEpisode(§&" §.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
