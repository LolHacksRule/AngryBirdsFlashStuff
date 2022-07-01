package §]!V§
{
   import §!P§.§4K§;
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §7"1§.§@!9§;
   import §9c§.§!!2§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§%`§;
   import §>P§.§+"6§;
   import §>P§.§3I§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   import com.rovio.assets.§[O§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §&g§ extends §>!9§
   {
      
      public static const §+a§:String = "LevelSelectionState";
      
      protected static const §#O§:Number = 0.5;
      
      public static var §'!k§:String = "";
       
      
      protected var §9a§:Boolean = false;
      
      protected var §5]§:§]"4§;
      
      protected var §%k§:§]"4§;
      
      protected var §9!6§:MovieClip;
      
      protected var §,0§:Array;
      
      protected var §%v§:Array;
      
      protected var §`"+§:int = 0;
      
      protected var §7%§:int = 0;
      
      protected var §0!h§:int = 0;
      
      protected var §4!§:Boolean = false;
      
      protected var §;@§:§4`§ = null;
      
      protected var §6f§:Dictionary;
      
      protected var §4!$§:Array;
      
      protected var §&=§:Array;
      
      protected var §5!,§:§@!9§;
      
      protected var §]"-§:Number = 0;
      
      public function §&g§(param1:§5!1§, param2:§&S§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%]§();
         while(this.§%k§.mClip.numChildren > 0)
         {
            this.§%k§.mClip.removeChildAt(0);
         }
         this.§%v§ = [];
         this.§,0§ = [];
      }
      
      protected function §%]§() : void
      {
         §5+§ = new §;!j§(this);
         §5+§.init(§=!A§.§`O§.Views.View_LevelSelection[0]);
         this.§%k§ = §5+§.getItemByName("Container_LevelRepeaters") as §]"4§;
         this.§5]§ = §5+§.getItemByName("Container_LevelSelection") as §]"4§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §#Z§.§'0§.clearLevel();
         §#Z§.§'0§.§#o§(false);
         this.§^!F§();
         §,!X§.§>!G§.§ " §();
         if(this.§%v§.length == 1)
         {
            (§5+§.getItemByName("Button_Prev") as §73§).setVisibility(false);
            (§5+§.getItemByName("Button_Next") as §73§).setVisibility(false);
            (§5+§.getItemByName("TextField_LevelNumberSmall") as §%`§).setVisibility(false);
         }
         else
         {
            (§5+§.getItemByName("Button_Prev") as §73§).setVisibility(true);
            (§5+§.getItemByName("Button_Next") as §73§).setVisibility(true);
            (§5+§.getItemByName("TextField_LevelNumberSmall") as §%`§).setVisibility(true);
         }
         this.§]"-§ = this.§%k§.x;
         if(§5+§.stage)
         {
            §5+§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§else §);
         }
      }
      
      protected function §else §(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§-"-§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§'" §();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§>>§();
         this.§ =§();
      }
      
      protected function §>>§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,0§.length)
         {
            if(-this.§%k§.x >= this.§%v§[_loc1_].x && -this.§]"-§ < this.§%v§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§,0§.length)
               {
                  this.§,0§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0!h§ = _loc1_;
               this.§,0§[_loc1_].gotoAndStop("Selected");
               (§5+§.getItemByName("TextField_LevelNumberSmall") as §%`§).x = this.§,0§[_loc1_].x;
               this.§2"$§(_loc1_);
            }
            if(-this.§%k§.x <= this.§%v§[_loc1_].x && -this.§]"-§ > this.§%v§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§,0§.length)
               {
                  this.§,0§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0!h§ = _loc1_;
               this.§,0§[_loc1_].gotoAndStop("Selected");
               (§5+§.getItemByName("TextField_LevelNumberSmall") as §%`§).x = this.§,0§[_loc1_].x;
               this.§2"$§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§0!h§ != this.§`"+§)
         {
            if(this.§`"+§ > this.§0!h§)
            {
               this.§7%§ = this.§0!h§ + 1;
            }
            else if(this.§`"+§ < this.§0!h§)
            {
               this.§7%§ = this.§0!h§ - 1;
            }
            else
            {
               this.§7%§ = this.§0!h§;
            }
            this.§5!,§.§3!"§(this.§4!$§[this.§7%§].red,this.§4!$§[this.§7%§].green,this.§4!$§[this.§7%§].blue);
         }
         this.§]"-§ = this.§%k§.x;
      }
      
      protected function § =§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%v§.length)
         {
            _loc2_ = this.§%k§.x + this.§%v§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§%v§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§%v§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§%v§[_loc1_].mClip.alpha < 1)
            {
               (this.§%v§[_loc1_] as §3I§).setEnabled(false);
            }
            else
            {
               (this.§%v§[_loc1_] as §3I§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§5+§.stage)
         {
            §5+§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§else §);
         }
         super.deActivate();
         this.§,!Z§();
         (§5+§.getItemByName("Button_Back") as §73§).setComponentVisualState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §97§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§;@§)
         {
            this.§;@§.stop();
            this.§;@§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         if(param2.length > 0 && param3 is §+"6§)
         {
            if((param3 as §+"6§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §+"6§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§4!§)
               {
                  §97§.loadLevel(§97§.getValidLevelId(param2.toLowerCase()));
                  §8!`§(StateCutScene.§+a§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §%!c§.§8" §("Menu_Back");
               §8!`§(StateEpisodeSelection.§+a§);
               break;
            case "NEXT":
               this.§'" §();
               break;
            case "PREV":
               this.§-"-§();
               break;
            case "FULLSCREEN_BUTTON":
               §%!c§.§8" §("Menu_Confirm");
               §,!X§.§>!G§.§4I§();
         }
      }
      
      protected function §'" §() : void
      {
         §%!c§.§8" §("Menu_Confirm");
         if(!this.§4!§)
         {
            ++this.§`"+§;
            this.§]!4§(this.§`"+§);
         }
      }
      
      protected function §-"-§() : void
      {
         §%!c§.§8" §("Menu_Confirm");
         if(!this.§4!§)
         {
            --this.§`"+§;
            this.§]!4§(this.§`"+§);
         }
      }
      
      public function §^!F§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§4!$§ = [];
         this.§&=§ = [];
         var _loc2_:§4K§ = §97§.getEpisode(§97§.currentEpisode);
         this.§`"+§ = _loc2_.currentPage;
         this.§7%§ = this.§`"+§;
         this.§0!h§ = this.§`"+§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§"!0§)
         {
            _loc4_ = _loc2_.§'!X§(_loc3_);
            this.§4!$§.push(_loc2_.§1!o§(_loc3_));
            this.§&=§.push(_loc2_.§#!L§(_loc3_));
            _loc1_ = this.§=j§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§5!,§ = new §@!9§(this.§4!$§[this.§`"+§].red,this.§4!$§[this.§`"+§].green,this.§4!$§[this.§`"+§].blue,1);
         §5+§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§5!,§);
         if(_loc2_.§`?§)
         {
            _loc6_ = new (_loc5_ = §[O§.§1s§(_loc2_.§`?§))();
            §5+§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §5+§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§<!-§)
         {
            _loc8_ = new (_loc7_ = §[O§.§1s§(_loc2_.§<!-§))();
            §5+§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §5+§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§ %§();
         if(§'!k§ == StateCutScene.§+a§)
         {
            §'!k§ = "";
            this.§]!4§(this.§0!h§);
         }
         else
         {
            this.§]!4§(this.§`"+§,true);
         }
      }
      
      protected function §=j§(param1:Array, param2:int, param3:Number, param4:§4K§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §[O§.§1s§(this.§&=§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §,!X§.§>!G§.§>!I§.userProgress.§"!`§(_loc10_);
            _loc12_ = this.§+=§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §,!X§.§?!,§)
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
         _loc8_.@button = this.§&=§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§3I§;
         (_loc9_ = new §3I§(_loc8_,this.§%k§,null,null)).§[!D§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§%k§.§`P§(_loc9_);
         this.§%v§.push(_loc9_);
         return Number(param3 + §,!X§.§-t§);
      }
      
      protected function §+=§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§,!X§.§>!G§.§>!I§.userProgress.§+T§(param1) == 100)
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
            _loc7_ = §,!X§.§>!G§.§>!I§.userProgress.§3i§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function § %§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§%v§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§6f§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§%v§.length)
         {
            _loc1_ = §[O§.§1s§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §,!X§.§-t§ / 2 + _loc3_ - this.§%v§.length * _loc2_.width / 2;
            _loc2_.y = (§5+§.getItemByName("Button_Next") as §73§).y - _loc2_.height / 2;
            if(_loc4_ == this.§`"+§)
            {
               _loc2_.gotoAndStop("Selected");
               (§5+§.getItemByName("TextField_LevelNumberSmall") as §%`§).x = _loc2_.x;
               (§5+§.getItemByName("TextField_LevelNumberSmall") as §%`§).y = _loc2_.y - _loc2_.height;
               this.§2"$§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§5]§.mClip.addChild(_loc2_);
            this.§6f§[_loc2_] = _loc4_;
            this.§,0§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§@3§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§%v§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§5+§.getItemByName("Button_Next") as §73§).x = §,!X§.§-t§ / 2;
         (§5+§.getItemByName("Button_Prev") as §73§).x = §,!X§.§-t§ / 2;
         (§5+§.getItemByName("Button_Next") as §73§).x = (§5+§.getItemByName("Button_Next") as §73§).x + (_loc3_ + 10);
         (§5+§.getItemByName("Button_Prev") as §73§).x = (§5+§.getItemByName("Button_Prev") as §73§).x - (_loc3_ + 10);
      }
      
      protected function §,!Z§() : void
      {
         if(this.§5!,§)
         {
            this.§5!,§.§^!%§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§,0§.length)
         {
            if(this.§5]§.mClip.contains(this.§,0§[_loc1_]))
            {
               this.§,0§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§@3§);
               this.§5]§.mClip.removeChild(this.§,0§[_loc1_]);
            }
            _loc1_++;
         }
         this.§,0§ = [];
         while(this.§%k§.mClip.numChildren > 0)
         {
            this.§%k§.mClip.removeChildAt(0);
         }
         this.§%v§ = [];
      }
      
      protected function §@3§(param1:MouseEvent) : void
      {
         if(!this.§4!§)
         {
            this.§]!4§(this.§6f§[param1.target]);
         }
      }
      
      protected function §"1§(param1:MouseEvent) : void
      {
         if(!this.§4!§)
         {
            §8!`§(§&g§.§+a§);
         }
      }
      
      protected function §]!4§(param1:int, param2:Boolean = false) : void
      {
         this.§4!§ = true;
         if(param1 > this.§%v§.length - 1)
         {
            param1 = this.§%v§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§`"+§ = param1;
         if(this.§`"+§ > this.§0!h§)
         {
            this.§7%§ = this.§0!h§ + 1;
         }
         else if(this.§`"+§ < this.§0!h§)
         {
            this.§7%§ = this.§0!h§ - 1;
         }
         var _loc3_:Number = -this.§%v§[param1].x;
         var _loc4_:Number = this.§%v§[param1].x + this.§%k§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §#O§;
         if(this.§;@§ != null)
         {
            this.§;@§.stop();
         }
         if(param2)
         {
            this.§%k§.x = _loc3_;
         }
         else
         {
            this.§;@§ = §"!d§.§>!P§.§7R§(this.§%k§,{"x":_loc3_},null,_loc5_,§!!2§.easeOut);
            this.§;@§.onComplete = this.§"'§;
         }
         if(param2)
         {
            this.§"'§();
         }
         else
         {
            this.§;@§.play();
         }
      }
      
      protected function §"'§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§,0§.length)
         {
            if(_loc1_ == this.§`"+§)
            {
               this.§,0§[_loc1_].gotoAndStop("Selected");
               (§5+§.getItemByName("TextField_LevelNumberSmall") as §%`§).x = this.§,0§[_loc1_].x;
               this.§2"$§(_loc1_);
            }
            else
            {
               this.§,0§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§4!§ = false;
         §97§.getEpisode(§97§.currentEpisode).currentPage = this.§`"+§;
      }
      
      protected function §2"$§(param1:int) : void
      {
         (§5+§.getItemByName("TextField_LevelNumberSmall") as §%`§).§=!=§.text = §97§.getEpisode(§97§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
