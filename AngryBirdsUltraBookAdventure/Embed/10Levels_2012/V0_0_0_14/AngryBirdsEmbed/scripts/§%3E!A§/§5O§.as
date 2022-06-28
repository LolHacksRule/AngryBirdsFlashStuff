package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§&!A§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §6J§.§?S§;
   import §87§.§<8§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§'3§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§use §;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §5O§ extends §#!,§
   {
      
      public static const §?x§:String = "LevelSelectionState";
      
      protected static const §?!=§:Number = 0.5;
      
      public static var §-!A§:String = "";
       
      
      protected var §+o§:Boolean = false;
      
      protected var §6!1§:§3C§;
      
      protected var §>!$§:§3C§;
      
      protected var §`!=§:MovieClip;
      
      protected var §9]§:Array;
      
      protected var § K§:Array;
      
      protected var §7S§:int = 0;
      
      protected var §!!!§:int = 0;
      
      protected var §[!6§:int = 0;
      
      protected var §;!9§:Boolean = false;
      
      protected var §^!H§:§?!3§ = null;
      
      protected var §?!A§:Dictionary;
      
      protected var §`f§:Array;
      
      protected var § !A§:Array;
      
      protected var §<!4§:§<8§;
      
      protected var §6K§:Number = 0;
      
      public function §5O§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§+#§();
         while(this.§>!$§.mClip.numChildren > 0)
         {
            this.§>!$§.mClip.removeChildAt(0);
         }
         this.§ K§ = [];
         this.§9]§ = [];
      }
      
      protected function §+#§() : void
      {
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_LevelSelection[0]);
         this.§>!$§ = §[=§.getItemByName("Container_LevelRepeaters") as §3C§;
         this.§6!1§ = §[=§.getItemByName("Container_LevelSelection") as §3C§;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[k§.§&@§.clearLevel();
         §[k§.§&@§.§`!G§(false);
         this.§0w§();
         AngryBirdsFP11.§<!#§();
         if(this.§ K§.length == 1)
         {
            (§[=§.getItemByName("Button_Prev") as §?q§).setVisibility(false);
            (§[=§.getItemByName("Button_Next") as §?q§).setVisibility(false);
            (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).setVisibility(false);
         }
         else
         {
            (§[=§.getItemByName("Button_Prev") as §?q§).setVisibility(true);
            (§[=§.getItemByName("Button_Next") as §?q§).setVisibility(true);
            (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).setVisibility(true);
         }
         this.§6K§ = this.§>!$§.x;
         if(§[=§.stage)
         {
            §[=§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§"!#§);
         }
      }
      
      protected function §"!#§(param1:KeyboardEvent) : void
      {
         if(this.§ K§.length <= 1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§9!8§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§3!!§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§+y§();
         this.§2!G§();
         if(mNextState.length > 0)
         {
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      protected function §+y§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9]§.length)
         {
            if(-this.§>!$§.x >= this.§ K§[_loc1_].x && -this.§6K§ < this.§ K§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§9]§.length)
               {
                  this.§9]§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§[!6§ = _loc1_;
               this.§9]§[_loc1_].gotoAndStop("Selected");
               (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).x = this.§9]§[_loc1_].x;
               this.§=e§(_loc1_);
            }
            if(-this.§>!$§.x <= this.§ K§[_loc1_].x && -this.§6K§ > this.§ K§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§9]§.length)
               {
                  this.§9]§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§[!6§ = _loc1_;
               this.§9]§[_loc1_].gotoAndStop("Selected");
               (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).x = this.§9]§[_loc1_].x;
               this.§=e§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§[!6§ != this.§7S§)
         {
            if(this.§7S§ > this.§[!6§)
            {
               this.§!!!§ = this.§[!6§ + 1;
            }
            else if(this.§7S§ < this.§[!6§)
            {
               this.§!!!§ = this.§[!6§ - 1;
            }
            else
            {
               this.§!!!§ = this.§[!6§;
            }
            this.§<!4§.§+J§(this.§`f§[this.§!!!§].red,this.§`f§[this.§!!!§].green,this.§`f§[this.§!!!§].blue);
         }
         this.§6K§ = this.§>!$§.x;
      }
      
      protected function §2!G§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ K§.length)
         {
            _loc2_ = this.§>!$§.x + this.§ K§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§ K§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§ K§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§ K§[_loc1_].mClip.alpha < 1)
            {
               (this.§ K§[_loc1_] as §&!A§).setEnabled(false);
            }
            else
            {
               (this.§ K§[_loc1_] as §&!A§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§[=§.stage)
         {
            §[=§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§"!#§);
         }
         super.deActivate();
         this.§#z§();
         (§[=§.getItemByName("Button_Back") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §5j§.§>N§ = null;
      }
      
      override public function cleanup() : void
      {
         if(this.§^!H§)
         {
            this.§^!H§.stop();
            this.§^!H§ = null;
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         if(param2.length > 0 && param3 is §'3§)
         {
            if((param3 as §'3§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §'3§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§;!9§)
               {
                  §5j§.§#8§(§5j§.§8[§(param2.toLowerCase()));
                  mNextState = StateCutScene.§?x§;
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §6I§.§ ;§("Menu_Back");
               mNextState = §^q§.§?x§;
               break;
            case "NEXT":
               this.§3!!§();
               break;
            case "PREV":
               this.§9!8§();
               break;
            case "FULLSCREEN_BUTTON":
               §6I§.§ ;§("Menu_Confirm");
               AngryBirdsFP11.§,s§.§8!1§();
         }
      }
      
      protected function §3!!§() : void
      {
         §6I§.§ ;§("Menu_Confirm");
         if(!this.§;!9§)
         {
            ++this.§7S§;
            this.§2F§(this.§7S§);
         }
      }
      
      protected function §9!8§() : void
      {
         §6I§.§ ;§("Menu_Confirm");
         if(!this.§;!9§)
         {
            --this.§7S§;
            this.§2F§(this.§7S§);
         }
      }
      
      public function §0w§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§`f§ = [];
         this.§ !A§ = [];
         this.§7S§ = §5j§.§^!E§(§5j§.§0P§).§7E§;
         this.§!!!§ = this.§7S§;
         this.§[!6§ = this.§7S§;
         var _loc2_:§?S§ = §5j§.§^!E§(§5j§.§0P§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§81§(_loc2_.pageIndexes[_loc3_]);
            this.§`f§.push(_loc2_.§7!D§(_loc3_));
            this.§ !A§.push(_loc2_.§#2§(_loc3_));
            _loc1_ = this.§'7§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§<!4§ = new §<8§(this.§`f§[this.§7S§].red,this.§`f§[this.§7S§].green,this.§`f§[this.§7S§].blue,1);
         §[=§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§<!4§);
         if(_loc2_.§7<§)
         {
            _loc6_ = new (_loc5_ = §'!H§.§&!G§(_loc2_.§7<§))();
            §[=§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            §[=§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§8S§)
         {
            _loc8_ = new (_loc7_ = §'!H§.§&!G§(_loc2_.§8S§))();
            §[=§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            §[=§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§&c§();
         if(§-!A§ == StateCutScene.§?x§)
         {
            §-!A§ = "";
            this.§2F§(this.§[!6§);
         }
         else
         {
            this.§2F§(this.§7S§,true);
         }
      }
      
      protected function §'7§(param1:Array, param2:int, param3:Number, param4:§?S§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §'!H§.§&!G§(this.§ !A§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_);
            _loc12_ = this.§]d§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || AngryBirdsFP11.§,#§)
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
         _loc8_.@button = this.§ !A§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§use §;
         (_loc9_ = new §use §(_loc8_,this.§>!$§,null,null)).§"!0§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§>!$§.§5'§(_loc9_);
         this.§ K§.push(_loc9_);
         return Number(param3 + AngryBirdsFP11.screenWidth);
      }
      
      protected function §]d§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(AngryBirdsFP11.sUserProgress.§ !&§(param1) == 100)
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
            _loc7_ = AngryBirdsFP11.sUserProgress.§7!"§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §&c§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§ K§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§?!A§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§ K§.length)
         {
            _loc1_ = §'!H§.§&!G§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§ K§.length * _loc2_.width / 2;
            _loc2_.y = (§[=§.getItemByName("Button_Next") as §?q§).y - _loc2_.height / 2;
            if(_loc4_ == this.§7S§)
            {
               _loc2_.gotoAndStop("Selected");
               (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).x = _loc2_.x;
               (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).y = _loc2_.y - _loc2_.height;
               this.§=e§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§6!1§.mClip.addChild(_loc2_);
            this.§?!A§[_loc2_] = _loc4_;
            this.§9]§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!@§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§ K§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§[=§.getItemByName("Button_Next") as §?q§).x = AngryBirdsFP11.screenWidth / 2;
         (§[=§.getItemByName("Button_Prev") as §?q§).x = AngryBirdsFP11.screenWidth / 2;
         (§[=§.getItemByName("Button_Next") as §?q§).x = (§[=§.getItemByName("Button_Next") as §?q§).x + (_loc3_ + 10);
         (§[=§.getItemByName("Button_Prev") as §?q§).x = (§[=§.getItemByName("Button_Prev") as §?q§).x - (_loc3_ + 10);
      }
      
      protected function §#z§() : void
      {
         if(this.§<!4§)
         {
            this.§<!4§.clean();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§9]§.length)
         {
            if(this.§6!1§.mClip.contains(this.§9]§[_loc1_]))
            {
               this.§9]§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!@§);
               this.§6!1§.mClip.removeChild(this.§9]§[_loc1_]);
            }
            _loc1_++;
         }
         this.§9]§ = [];
         while(this.§>!$§.mClip.numChildren > 0)
         {
            this.§>!$§.mClip.removeChildAt(0);
         }
         this.§ K§ = [];
      }
      
      protected function §1!@§(param1:MouseEvent) : void
      {
         if(!this.§;!9§)
         {
            this.§2F§(this.§?!A§[param1.target]);
         }
      }
      
      protected function §7b§(param1:MouseEvent) : void
      {
         if(!this.§;!9§)
         {
            mNextState = §5O§.§?x§;
         }
      }
      
      protected function §2F§(param1:int, param2:Boolean = false) : void
      {
         this.§;!9§ = true;
         if(param1 > this.§ K§.length - 1)
         {
            param1 = this.§ K§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§7S§ = param1;
         if(this.§7S§ > this.§[!6§)
         {
            this.§!!!§ = this.§[!6§ + 1;
         }
         else if(this.§7S§ < this.§[!6§)
         {
            this.§!!!§ = this.§[!6§ - 1;
         }
         var _loc3_:Number = -this.§ K§[param1].x;
         var _loc4_:Number = this.§ K§[param1].x + this.§>!$§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §?!=§;
         if(this.§^!H§ != null)
         {
            this.§^!H§.stop();
         }
         if(param2)
         {
            this.§>!$§.x = _loc3_;
         }
         else
         {
            this.§^!H§ = §,B§.§^n§.§2E§(this.§>!$§,{"x":_loc3_},null,_loc5_,§,B§.§[!F§);
            this.§^!H§.onComplete = this.§%!'§;
         }
         if(param2)
         {
            this.§%!'§();
         }
         else
         {
            this.§^!H§.play();
         }
      }
      
      protected function §%!'§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9]§.length)
         {
            if(_loc1_ == this.§7S§)
            {
               this.§9]§[_loc1_].gotoAndStop("Selected");
               (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).x = this.§9]§[_loc1_].x;
               this.§=e§(_loc1_);
            }
            else
            {
               this.§9]§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§;!9§ = false;
         §5j§.§^!E§(§5j§.§0P§).§7E§ = this.§7S§;
      }
      
      protected function §=e§(param1:int) : void
      {
         (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).§7=§.text = §5j§.§^!E§(§5j§.§0P§).pageIndexes[param1];
      }
   }
}
