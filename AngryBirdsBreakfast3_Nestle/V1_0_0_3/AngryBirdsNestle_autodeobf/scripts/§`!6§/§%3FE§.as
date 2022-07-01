package §`!6§
{
   import §%2§.§'i§;
   import §&!'§.§]S§;
   import §3!!§.§'E§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §3!!§.§]5§;
   import §3!!§.native;
   import §9![§.§1!i§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §>!a§.§5l§;
   import §>!a§.§>"2§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   import com.rovio.assets.§^1§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §?E§ extends §-!c§
   {
      
      public static const §]O§:String = "LevelSelectionState";
      
      protected static const §#[§:Number = 0.5;
      
      public static var §3f§:String = "";
       
      
      protected var §=p§:Boolean = false;
      
      protected var §>N§:§5" §;
      
      protected var §?!p§:§5" §;
      
      protected var §`!q§:MovieClip;
      
      protected var §2`§:Array;
      
      protected var §+!3§:Array;
      
      protected var §,I§:int = 0;
      
      protected var §-B§:int = 0;
      
      protected var §#C§:int = 0;
      
      protected var §3!?§:Boolean = false;
      
      protected var §1!4§:§]!X§ = null;
      
      protected var §,T§:Dictionary;
      
      protected var §>4§:Array;
      
      protected var §8!H§:Array;
      
      protected var §1x§:§]S§;
      
      protected var §'2§:Number = 0;
      
      public function §?E§(param1:§5l§, param2:§-!<§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§4Q§();
         while(this.§?!p§.mClip.numChildren > 0)
         {
            this.§?!p§.mClip.removeChildAt(0);
         }
         this.§+!3§ = [];
         this.§2`§ = [];
      }
      
      protected function §4Q§() : void
      {
         §!^§ = new §1"1§(this);
         §!^§.init(§"!j§.§3=§.Views.View_LevelSelection[0]);
         this.§?!p§ = §!^§.getItemByName("Container_LevelRepeaters") as §5" §;
         this.§>N§ = §!^§.getItemByName("Container_LevelSelection") as §5" §;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4!l§.§,!8§.clearLevel();
         §4!l§.§,!8§.§&!L§(false);
         this.§5#§();
         §&N§.§#Y§.§''§();
         if(this.§+!3§.length == 1)
         {
            (§!^§.getItemByName("Button_Prev") as §?v§).setVisibility(false);
            (§!^§.getItemByName("Button_Next") as §?v§).setVisibility(false);
            (§!^§.getItemByName("TextField_LevelNumberSmall") as native).setVisibility(false);
         }
         else
         {
            (§!^§.getItemByName("Button_Prev") as §?v§).setVisibility(true);
            (§!^§.getItemByName("Button_Next") as §?v§).setVisibility(true);
            (§!^§.getItemByName("TextField_LevelNumberSmall") as native).setVisibility(true);
         }
         this.§'2§ = this.§?!p§.x;
         if(§!^§.stage)
         {
            §!^§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§,%§);
         }
      }
      
      protected function §,%§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§4&§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§9O§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§ "-§();
         this.§@!x§();
      }
      
      protected function § "-§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2`§.length)
         {
            if(-this.§?!p§.x >= this.§+!3§[_loc1_].x && -this.§'2§ < this.§+!3§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2`§.length)
               {
                  this.§2`§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#C§ = _loc1_;
               this.§2`§[_loc1_].gotoAndStop("Selected");
               (§!^§.getItemByName("TextField_LevelNumberSmall") as native).x = this.§2`§[_loc1_].x;
               this.§"k§(_loc1_);
            }
            if(-this.§?!p§.x <= this.§+!3§[_loc1_].x && -this.§'2§ > this.§+!3§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2`§.length)
               {
                  this.§2`§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#C§ = _loc1_;
               this.§2`§[_loc1_].gotoAndStop("Selected");
               (§!^§.getItemByName("TextField_LevelNumberSmall") as native).x = this.§2`§[_loc1_].x;
               this.§"k§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§#C§ != this.§,I§)
         {
            if(this.§,I§ > this.§#C§)
            {
               this.§-B§ = this.§#C§ + 1;
            }
            else if(this.§,I§ < this.§#C§)
            {
               this.§-B§ = this.§#C§ - 1;
            }
            else
            {
               this.§-B§ = this.§#C§;
            }
            this.§1x§.§=&§(this.§>4§[this.§-B§].red,this.§>4§[this.§-B§].green,this.§>4§[this.§-B§].blue);
         }
         this.§'2§ = this.§?!p§.x;
      }
      
      protected function §@!x§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!3§.length)
         {
            _loc2_ = this.§?!p§.x + this.§+!3§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§+!3§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§+!3§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§+!3§[_loc1_].mClip.alpha < 1)
            {
               (this.§+!3§[_loc1_] as §'E§).setEnabled(false);
            }
            else
            {
               (this.§+!3§[_loc1_] as §'E§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§!^§.stage)
         {
            §!^§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,%§);
         }
         super.deActivate();
         this.§="'§();
         (§!^§.getItemByName("Button_Back") as §?v§).setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §^!§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§1!4§)
         {
            this.§1!4§.stop();
            this.§1!4§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         if(param2.length > 0 && param3 is §]5§)
         {
            if((param3 as §]5§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §]5§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§3!?§)
               {
                  §^!§.loadLevel(§^!§.getValidLevelId(param2.toLowerCase()));
                  §8=§(StateCutScene.§]O§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §1!i§.§+!Y§("Menu_Back");
               §8=§(StateEpisodeSelection.§]O§);
               break;
            case "NEXT":
               this.§9O§();
               break;
            case "PREV":
               this.§4&§();
               break;
            case "FULLSCREEN_BUTTON":
               §1!i§.§+!Y§("Menu_Confirm");
               §&N§.§#Y§.§&<§();
         }
      }
      
      protected function §9O§() : void
      {
         §1!i§.§+!Y§("Menu_Confirm");
         if(!this.§3!?§)
         {
            ++this.§,I§;
            this.§^;§(this.§,I§);
         }
      }
      
      protected function §4&§() : void
      {
         §1!i§.§+!Y§("Menu_Confirm");
         if(!this.§3!?§)
         {
            --this.§,I§;
            this.§^;§(this.§,I§);
         }
      }
      
      public function §5#§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§>4§ = [];
         this.§8!H§ = [];
         var _loc2_:§>"2§ = §^!§.getEpisode(§^!§.currentEpisode);
         this.§,I§ = _loc2_.currentPage;
         this.§-B§ = this.§,I§;
         this.§#C§ = this.§,I§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§ !Q§)
         {
            _loc4_ = _loc2_.§`!e§(_loc3_);
            this.§>4§.push(_loc2_.§`!I§(_loc3_));
            this.§8!H§.push(_loc2_.§8!6§(_loc3_));
            _loc1_ = this.§5J§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§1x§ = new §]S§(this.§>4§[this.§,I§].red,this.§>4§[this.§,I§].green,this.§>4§[this.§,I§].blue,1);
         §!^§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§1x§);
         if(_loc2_.§8!K§)
         {
            _loc6_ = new (_loc5_ = §^1§.§+!I§(_loc2_.§8!K§))();
            §!^§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §!^§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§9]§)
         {
            _loc8_ = new (_loc7_ = §^1§.§+!I§(_loc2_.§9]§))();
            §!^§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §!^§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§8K§();
         if(§3f§ == StateCutScene.§]O§)
         {
            §3f§ = "";
            this.§^;§(this.§#C§);
         }
         else
         {
            this.§^;§(this.§,I§,true);
         }
      }
      
      protected function §5J§(param1:Array, param2:int, param3:Number, param4:§>"2§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §^1§.§+!I§(this.§8!H§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §&N§.§#Y§.§`"$§.userProgress.§[!8§(_loc10_);
            _loc12_ = this.§7!z§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §&N§.§[z§)
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
         _loc8_.@button = this.§8!H§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§'E§;
         (_loc9_ = new §'E§(_loc8_,this.§?!p§,null,null)).§7H§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§?!p§.§,W§(_loc9_);
         this.§+!3§.push(_loc9_);
         return Number(param3 + §&N§.§,!o§);
      }
      
      protected function §7!z§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§&N§.§#Y§.§`"$§.userProgress.§%"-§(param1) == 100)
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
            _loc7_ = §&N§.§#Y§.§`"$§.userProgress.§7?§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §8K§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§+!3§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§,T§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§+!3§.length)
         {
            _loc1_ = §^1§.§+!I§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §&N§.§,!o§ / 2 + _loc3_ - this.§+!3§.length * _loc2_.width / 2;
            _loc2_.y = (§!^§.getItemByName("Button_Next") as §?v§).y - _loc2_.height / 2;
            if(_loc4_ == this.§,I§)
            {
               _loc2_.gotoAndStop("Selected");
               (§!^§.getItemByName("TextField_LevelNumberSmall") as native).x = _loc2_.x;
               (§!^§.getItemByName("TextField_LevelNumberSmall") as native).y = _loc2_.y - _loc2_.height;
               this.§"k§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§>N§.mClip.addChild(_loc2_);
            this.§,T§[_loc2_] = _loc4_;
            this.§2`§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§+!3§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§!^§.getItemByName("Button_Next") as §?v§).x = §&N§.§,!o§ / 2;
         (§!^§.getItemByName("Button_Prev") as §?v§).x = §&N§.§,!o§ / 2;
         (§!^§.getItemByName("Button_Next") as §?v§).x = (§!^§.getItemByName("Button_Next") as §?v§).x + (_loc3_ + 10);
         (§!^§.getItemByName("Button_Prev") as §?v§).x = (§!^§.getItemByName("Button_Prev") as §?v§).x - (_loc3_ + 10);
      }
      
      protected function §="'§() : void
      {
         if(this.§1x§)
         {
            this.§1x§.§3!<§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§2`§.length)
         {
            if(this.§>N§.mClip.contains(this.§2`§[_loc1_]))
            {
               this.§2`§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
               this.§>N§.mClip.removeChild(this.§2`§[_loc1_]);
            }
            _loc1_++;
         }
         this.§2`§ = [];
         while(this.§?!p§.mClip.numChildren > 0)
         {
            this.§?!p§.mClip.removeChildAt(0);
         }
         this.§+!3§ = [];
      }
      
      protected function §9?§(param1:MouseEvent) : void
      {
         if(!this.§3!?§)
         {
            this.§^;§(this.§,T§[param1.target]);
         }
      }
      
      protected function §>!w§(param1:MouseEvent) : void
      {
         if(!this.§3!?§)
         {
            §8=§(§?E§.§]O§);
         }
      }
      
      protected function §^;§(param1:int, param2:Boolean = false) : void
      {
         this.§3!?§ = true;
         if(param1 > this.§+!3§.length - 1)
         {
            param1 = this.§+!3§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§,I§ = param1;
         if(this.§,I§ > this.§#C§)
         {
            this.§-B§ = this.§#C§ + 1;
         }
         else if(this.§,I§ < this.§#C§)
         {
            this.§-B§ = this.§#C§ - 1;
         }
         var _loc3_:Number = -this.§+!3§[param1].x;
         var _loc4_:Number = this.§+!3§[param1].x + this.§?!p§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §#[§;
         if(this.§1!4§ != null)
         {
            this.§1!4§.stop();
         }
         if(param2)
         {
            this.§?!p§.x = _loc3_;
         }
         else
         {
            this.§1!4§ = §`!F§.§=J§.§-r§(this.§?!p§,{"x":_loc3_},null,_loc5_,§'i§.easeOut);
            this.§1!4§.onComplete = this.§&!F§;
         }
         if(param2)
         {
            this.§&!F§();
         }
         else
         {
            this.§1!4§.play();
         }
      }
      
      protected function §&!F§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2`§.length)
         {
            if(_loc1_ == this.§,I§)
            {
               this.§2`§[_loc1_].gotoAndStop("Selected");
               (§!^§.getItemByName("TextField_LevelNumberSmall") as native).x = this.§2`§[_loc1_].x;
               this.§"k§(_loc1_);
            }
            else
            {
               this.§2`§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§3!?§ = false;
         §^!§.getEpisode(§^!§.currentEpisode).currentPage = this.§,I§;
      }
      
      protected function §"k§(param1:int) : void
      {
         (§!^§.getItemByName("TextField_LevelNumberSmall") as native).§&!K§.text = §^!§.getEpisode(§^!§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
