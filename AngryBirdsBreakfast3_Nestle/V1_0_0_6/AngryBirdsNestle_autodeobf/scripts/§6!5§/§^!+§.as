package §6!5§
{
   import § !T§.§ q§;
   import § !T§.§=!x§;
   import § ,§.§>u§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §+!5§.§2O§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §9Y§.§=@§;
   import §@!6§.§3!5§;
   import §[!F§.§#!F§;
   import §[!F§.§1c§;
   import §[!F§.§2!;§;
   import §[!F§.§3j§;
   import §[!F§.§^!g§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   import com.rovio.assets.§<U§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §^!+§ extends §3!3§
   {
      
      public static const §7w§:String = "LevelSelectionState";
      
      protected static const §]z§:Number = 0.5;
      
      public static var §1!0§:String = "";
       
      
      protected var § set§:Boolean = false;
      
      protected var §!!$§:§3j§;
      
      protected var §9A§:§3j§;
      
      protected var §=!a§:MovieClip;
      
      protected var §[C§:Array;
      
      protected var §]"%§:Array;
      
      protected var §<<§:int = 0;
      
      protected var §;w§:int = 0;
      
      protected var §1!q§:int = 0;
      
      protected var §+!"§:Boolean = false;
      
      protected var §+2§:§<!'§ = null;
      
      protected var §5;§:Dictionary;
      
      protected var §&K§:Array;
      
      protected var §7<§:Array;
      
      protected var §0!M§:§2O§;
      
      protected var §6!;§:Number = 0;
      
      public function §^!+§(param1:§ q§, param2:§>u§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§;D§();
         while(this.§9A§.mClip.numChildren > 0)
         {
            this.§9A§.mClip.removeChildAt(0);
         }
         this.§]"%§ = [];
         this.§[C§ = [];
      }
      
      protected function §;D§() : void
      {
         § !z§ = new §-"5§(this);
         § !z§.init(§#p§.§'"0§.Views.View_LevelSelection[0]);
         this.§9A§ = § !z§.getItemByName("Container_LevelRepeaters") as §3j§;
         this.§!!$§ = § !z§.getItemByName("Container_LevelSelection") as §3j§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6!E§.§7I§.clearLevel();
         §6!E§.§7I§.§'F§(false);
         this.§'!J§();
         §-!I§.§[f§.§[g§();
         if(this.§]"%§.length == 1)
         {
            (§ !z§.getItemByName("Button_Prev") as §^!g§).setVisibility(false);
            (§ !z§.getItemByName("Button_Next") as §^!g§).setVisibility(false);
            (§ !z§.getItemByName("TextField_LevelNumberSmall") as §1c§).setVisibility(false);
         }
         else
         {
            (§ !z§.getItemByName("Button_Prev") as §^!g§).setVisibility(true);
            (§ !z§.getItemByName("Button_Next") as §^!g§).setVisibility(true);
            (§ !z§.getItemByName("TextField_LevelNumberSmall") as §1c§).setVisibility(true);
         }
         this.§6!;§ = this.§9A§.x;
         if(§ !z§.stage)
         {
            § !z§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§-A§);
         }
      }
      
      protected function §-A§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.LEFT)
         {
            this.§>N§();
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            this.§ "&§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§+#§();
         this.§=o§();
      }
      
      protected function §+#§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[C§.length)
         {
            if(-this.§9A§.x >= this.§]"%§[_loc1_].x && -this.§6!;§ < this.§]"%§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[C§.length)
               {
                  this.§[C§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§1!q§ = _loc1_;
               this.§[C§[_loc1_].gotoAndStop("Selected");
               (§ !z§.getItemByName("TextField_LevelNumberSmall") as §1c§).x = this.§[C§[_loc1_].x;
               this.§=T§(_loc1_);
            }
            if(-this.§9A§.x <= this.§]"%§[_loc1_].x && -this.§6!;§ > this.§]"%§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[C§.length)
               {
                  this.§[C§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§1!q§ = _loc1_;
               this.§[C§[_loc1_].gotoAndStop("Selected");
               (§ !z§.getItemByName("TextField_LevelNumberSmall") as §1c§).x = this.§[C§[_loc1_].x;
               this.§=T§(_loc1_);
            }
            _loc1_++;
         }
         if(this.§1!q§ != this.§<<§)
         {
            if(this.§<<§ > this.§1!q§)
            {
               this.§;w§ = this.§1!q§ + 1;
            }
            else if(this.§<<§ < this.§1!q§)
            {
               this.§;w§ = this.§1!q§ - 1;
            }
            else
            {
               this.§;w§ = this.§1!q§;
            }
            this.§0!M§.§,6§(this.§&K§[this.§;w§].red,this.§&K§[this.§;w§].green,this.§&K§[this.§;w§].blue);
         }
         this.§6!;§ = this.§9A§.x;
      }
      
      protected function §=o§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]"%§.length)
         {
            _loc2_ = this.§9A§.x + this.§]"%§[_loc1_].x;
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            if(Math.abs(this.§]"%§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               this.§]"%§[_loc1_].mClip.alpha = 1 - _loc2_ / 1000;
            }
            if(this.§]"%§[_loc1_].mClip.alpha < 1)
            {
               (this.§]"%§[_loc1_] as §2!;§).setEnabled(false);
            }
            else
            {
               (this.§]"%§[_loc1_] as §2!;§).setEnabled(true);
            }
            _loc1_++;
         }
      }
      
      override public function deActivate() : void
      {
         if(§ !z§.stage)
         {
            § !z§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§-A§);
         }
         super.deActivate();
         this.§<!G§();
         (§ !z§.getItemByName("Button_Back") as §^!g§).setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §="4§.resetPreviousLevel();
      }
      
      override public function cleanup() : void
      {
         if(this.§+2§)
         {
            this.§+2§.stop();
            this.§+2§ = null;
         }
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         if(param2.length > 0 && param3 is §#!F§)
         {
            if((param3 as §#!F§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §#!F§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!this.§+!"§)
               {
                  §="4§.loadLevel(§="4§.getValidLevelId(param2.toLowerCase()));
                  §?n§(StateCutScene.§7w§);
               }
            }
         }
         switch(param2)
         {
            case "BACK":
               §3!5§.§<!9§("Menu_Back");
               §?n§(StateEpisodeSelection.§7w§);
               break;
            case "NEXT":
               this.§ "&§();
               break;
            case "PREV":
               this.§>N§();
               break;
            case "FULLSCREEN_BUTTON":
               §3!5§.§<!9§("Menu_Confirm");
               §-!I§.§[f§.§?U§();
         }
      }
      
      protected function § "&§() : void
      {
         §3!5§.§<!9§("Menu_Confirm");
         if(!this.§+!"§)
         {
            ++this.§<<§;
            this.§0q§(this.§<<§);
         }
      }
      
      protected function §>N§() : void
      {
         §3!5§.§<!9§("Menu_Confirm");
         if(!this.§+!"§)
         {
            --this.§<<§;
            this.§0q§(this.§<<§);
         }
      }
      
      public function §'!J§() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         this.§&K§ = [];
         this.§7<§ = [];
         var _loc2_:§=!x§ = §="4§.getEpisode(§="4§.currentEpisode);
         this.§<<§ = _loc2_.currentPage;
         this.§;w§ = this.§<<§;
         this.§1!q§ = this.§<<§;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§,;§)
         {
            _loc4_ = _loc2_.§=N§(_loc3_);
            this.§&K§.push(_loc2_.§&",§(_loc3_));
            this.§7<§.push(_loc2_.§2!o§(_loc3_));
            _loc1_ = this.§85§(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         this.§0!M§ = new §2O§(this.§&K§[this.§<<§].red,this.§&K§[this.§<<§].green,this.§&K§[this.§<<§].blue,1);
         § !z§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§0!M§);
         if(_loc2_.§'J§)
         {
            _loc6_ = new (_loc5_ = §<U§.§5"0§(_loc2_.§'J§))();
            § !z§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
         }
         else
         {
            § !z§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
         }
         if(_loc2_.§+f§)
         {
            _loc8_ = new (_loc7_ = §<U§.§5"0§(_loc2_.§+f§))();
            § !z§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
         }
         else
         {
            § !z§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
         }
         this.§4!^§();
         if(§1!0§ == StateCutScene.§7w§)
         {
            §1!0§ = "";
            this.§0q§(this.§1!q§);
         }
         else
         {
            this.§0q§(this.§<<§,true);
         }
      }
      
      protected function §85§(param1:Array, param2:int, param3:Number, param4:§=!x§) : Number
      {
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §<U§.§5"0§(this.§7<§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            _loc11_ = §-!I§.§[f§.§?4§.userProgress.§^!P§(_loc10_);
            _loc12_ = this.§!!2§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc11_ || §-!I§.§%q§)
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
         _loc8_.@button = this.§7<§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:§2!;§;
         (_loc9_ = new §2!;§(_loc8_,this.§9A§,null,null)).§'!w§(_loc5_);
         _loc9_.setVisibility(true);
         _loc9_.x += param3;
         this.§9A§.§0J§(_loc9_);
         this.§]"%§.push(_loc9_);
         return Number(param3 + §-!I§.§[M§);
      }
      
      protected function §!!2§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.MovieClip_MEInUse.visible = false;
            if(§-!I§.§[f§.§?4§.userProgress.§^!y§(param1) == 100)
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
            _loc7_ = §-!I§.§[f§.§?4§.userProgress.§`!E§(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
         }
         return _loc6_;
      }
      
      protected function §4!^§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(this.§]"%§.length == 1)
         {
            return;
         }
         var _loc3_:Number = 0;
         this.§5;§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§]"%§.length)
         {
            _loc1_ = §<U§.§5"0§("Button_Dot");
            _loc2_ = new _loc1_();
            _loc2_.x = §-!I§.§[M§ / 2 + _loc3_ - this.§]"%§.length * _loc2_.width / 2;
            _loc2_.y = (§ !z§.getItemByName("Button_Next") as §^!g§).y - _loc2_.height / 2;
            if(_loc4_ == this.§<<§)
            {
               _loc2_.gotoAndStop("Selected");
               (§ !z§.getItemByName("TextField_LevelNumberSmall") as §1c§).x = _loc2_.x;
               (§ !z§.getItemByName("TextField_LevelNumberSmall") as §1c§).y = _loc2_.y - _loc2_.height;
               this.§=T§(_loc4_);
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            this.§!!$§.mClip.addChild(_loc2_);
            this.§5;§[_loc2_] = _loc4_;
            this.§[C§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§?B§);
            _loc2_.buttonMode = true;
            _loc4_++;
         }
         _loc3_ = this.§]"%§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§ !z§.getItemByName("Button_Next") as §^!g§).x = §-!I§.§[M§ / 2;
         (§ !z§.getItemByName("Button_Prev") as §^!g§).x = §-!I§.§[M§ / 2;
         (§ !z§.getItemByName("Button_Next") as §^!g§).x = (§ !z§.getItemByName("Button_Next") as §^!g§).x + (_loc3_ + 10);
         (§ !z§.getItemByName("Button_Prev") as §^!g§).x = (§ !z§.getItemByName("Button_Prev") as §^!g§).x - (_loc3_ + 10);
      }
      
      protected function §<!G§() : void
      {
         if(this.§0!M§)
         {
            this.§0!M§.§[!R§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§[C§.length)
         {
            if(this.§!!$§.mClip.contains(this.§[C§[_loc1_]))
            {
               this.§[C§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§?B§);
               this.§!!$§.mClip.removeChild(this.§[C§[_loc1_]);
            }
            _loc1_++;
         }
         this.§[C§ = [];
         while(this.§9A§.mClip.numChildren > 0)
         {
            this.§9A§.mClip.removeChildAt(0);
         }
         this.§]"%§ = [];
      }
      
      protected function §?B§(param1:MouseEvent) : void
      {
         if(!this.§+!"§)
         {
            this.§0q§(this.§5;§[param1.target]);
         }
      }
      
      protected function §]c§(param1:MouseEvent) : void
      {
         if(!this.§+!"§)
         {
            §?n§(§^!+§.§7w§);
         }
      }
      
      protected function §0q§(param1:int, param2:Boolean = false) : void
      {
         this.§+!"§ = true;
         if(param1 > this.§]"%§.length - 1)
         {
            param1 = this.§]"%§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§<<§ = param1;
         if(this.§<<§ > this.§1!q§)
         {
            this.§;w§ = this.§1!q§ + 1;
         }
         else if(this.§<<§ < this.§1!q§)
         {
            this.§;w§ = this.§1!q§ - 1;
         }
         var _loc3_:Number = -this.§]"%§[param1].x;
         var _loc4_:Number = this.§]"%§[param1].x + this.§9A§.x;
         var _loc5_:Number = (_loc5_ = (_loc5_ = Math.abs(_loc4_)) / 1024) * §]z§;
         if(this.§+2§ != null)
         {
            this.§+2§.stop();
         }
         if(param2)
         {
            this.§9A§.x = _loc3_;
         }
         else
         {
            this.§+2§ = §3`§.§<"5§.§^g§(this.§9A§,{"x":_loc3_},null,_loc5_,§=@§.easeOut);
            this.§+2§.onComplete = this.§4"1§;
         }
         if(param2)
         {
            this.§4"1§();
         }
         else
         {
            this.§+2§.play();
         }
      }
      
      protected function §4"1§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[C§.length)
         {
            if(_loc1_ == this.§<<§)
            {
               this.§[C§[_loc1_].gotoAndStop("Selected");
               (§ !z§.getItemByName("TextField_LevelNumberSmall") as §1c§).x = this.§[C§[_loc1_].x;
               this.§=T§(_loc1_);
            }
            else
            {
               this.§[C§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§+!"§ = false;
         §="4§.getEpisode(§="4§.currentEpisode).currentPage = this.§<<§;
      }
      
      protected function §=T§(param1:int) : void
      {
         (§ !z§.getItemByName("TextField_LevelNumberSmall") as §1c§).§ e§.text = §="4§.getEpisode(§="4§.currentEpisode).getPageIndex(param1).toString();
      }
   }
}
