package §,!=§
{
   import § §.§7#L§;
   import §#v§.§#!?§;
   import §#v§.§=!Z§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'U§.§]#[§;
   import §6"r§.§0"<§;
   import §6"r§.§=O§;
   import §8§.§#$+§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §]4§ extends §7"S§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §2!p§:Number = 0.5;
       
      
      protected var §6h§:Sprite;
      
      protected var §[">§:§0"<§;
      
      protected var §,#!§:Array;
      
      protected var §6!n§:Array;
      
      protected var §,!o§:int = 0;
      
      protected var §,O§:Number = 0;
      
      protected var §1e§:Number = 0;
      
      protected var §0"5§:§+,§ = null;
      
      protected var §=!B§:Boolean = false;
      
      protected var § "Q§:Number = 0;
      
      public function §]4§(param1:§#!?§, param2:§]#[§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_ChapterSelection[0]);
         this.§?"a§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §>"$§.§3#'§.§5'§(false);
         this.§-$-§();
      }
      
      protected function §-$-§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§=!Z§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,#!§)
         {
            _loc3_ = mLevelManager.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§;]§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§ !m§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§1#N§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§5#A§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§!"P§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §?"a§() : void
      {
         var _loc3_:§=!Z§ = null;
         this.§[">§ = §!$§.getItemByName("Container_ChapterSelection") as §0"<§;
         this.§,#!§ = [];
         this.§6!n§ = [];
         var _loc1_:Number = 0;
         this.§6h§ = new Sprite();
         this.§6h§.y = AngryBirdsBase.screenHeight / 2;
         this.§,O§ = AngryBirdsBase.screenWidth / 2;
         this.§6h§.x = this.§,O§;
         this.§[">§.mClip.addChild(this.§6h§);
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(!_loc3_.§]#>§)
            {
               _loc1_ = this.§7"s§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§&#g§(_loc1_);
         this.§]"r§();
      }
      
      protected function §&#g§(param1:Number) : void
      {
         param1 = this.§7"s§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§7"s§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §]"r§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,#!§.length)
         {
            _loc3_ = new §@`§.§4!i§("Button_Dot")();
            if(_loc2_ == this.§,!o§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = AngryBirdsBase.screenWidth / 2 + _loc1_ - this.§,#!§.length * _loc3_.width / 2;
            _loc3_.y = (§!$§.getItemByName("Button_Next") as §=O§).y - _loc3_.height / 2;
            this.§[">§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§6!n§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§`!G§);
            _loc2_++;
         }
         _loc1_ = this.§,#!§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§!$§.getItemByName("Button_Next") as §=O§).x = AngryBirdsBase.screenWidth / 2;
         (§!$§.getItemByName("Button_Prev") as §=O§).x = AngryBirdsBase.screenWidth / 2;
         (§!$§.getItemByName("Button_Next") as §=O§).x = (§!$§.getItemByName("Button_Next") as §=O§).x + (_loc1_ + 10);
         (§!$§.getItemByName("Button_Prev") as §=O§).x = (§!$§.getItemByName("Button_Prev") as §=O§).x - (_loc1_ + 10);
      }
      
      protected function §7"s§(param1:String, param2:Number, param3:§=!Z§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §@`§.§4!i§(param1)()).x = param2;
         this.§6h§.addChild(_loc4_);
         this.§,#!§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§88§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§1#N§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§5#A§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§!"P§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§;]§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§ !m§(param3);
            }
         }
         return param2;
      }
      
      private function §`!G§(param1:MouseEvent) : void
      {
         if(!this.§=!B§)
         {
            this.§7$"§(this.§6!n§.indexOf(param1.target));
         }
      }
      
      protected function §88§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§=!B§)
         {
            _loc2_ = this.§,#!§.indexOf(param1.currentTarget);
            if(this.§,!o§ != _loc2_)
            {
               this.§7$"§(_loc2_);
            }
            else if(_loc2_ < mLevelManager.getEpisodeCount())
            {
               mLevelManager.selectEpisode(_loc2_);
               §7P§(§<!B§.STATE_NAME);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§>$5§();
         this.§[!?§();
      }
      
      protected function §[!?§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,#!§.length)
         {
            _loc2_ = this.§6h§.x + this.§,#!§[_loc1_].x - AngryBirdsBase.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§,#!§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§,#!§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§,#!§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§,#!§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §>$5§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!n§.length)
         {
            if(-this.§6h§.x + 800 >= this.§,#!§[_loc1_].x && -this.§ "Q§ < this.§,#!§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§6!n§.length)
               {
                  this.§6!n§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§6!n§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§6h§.x + 800 <= this.§,#!§[_loc1_].x && -this.§ "Q§ > this.§,#!§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§6!n§.length)
               {
                  this.§6!n§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§6!n§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§ "Q§ = this.§6h§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §>"$§.§3#'§.clearLevel();
         this.§"d§();
      }
      
      protected function §"d§() : void
      {
         (§!$§.getItemByName("Button_Back") as §=O§).setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "BACK":
               §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
               §7P§(§;P§.STATE_NAME);
               break;
            case "PREV":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               if(!this.§=!B§)
               {
                  --this.§,!o§;
                  this.§7$"§(this.§,!o§);
               }
               break;
            case "NEXT":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               if(!this.§=!B§)
               {
                  ++this.§,!o§;
                  this.§7$"§(this.§,!o§);
               }
               break;
            case "FULLSCREEN_BUTTON":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               AngryBirdsBase.singleton.§&f§();
         }
      }
      
      protected function §7$"§(param1:int) : void
      {
         this.§=!B§ = true;
         if(param1 > this.§,#!§.length - 1)
         {
            param1 = this.§,#!§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§,!o§ = param1;
         var _loc2_:Number = -this.§,#!§[param1].x + this.§,O§;
         var _loc3_:Number = this.§6h§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §2!p§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§0"5§ != null)
         {
            this.§0"5§.stop();
         }
         this.§0"5§ = §""Z§.§3!]§.§5"0§(this.§6h§,{"x":_loc2_},null,_loc4_,§7#L§.easeOut);
         this.§0"5§.onComplete = this.§9!=§;
         this.§0"5§.play();
      }
      
      protected function §9!=§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!n§.length)
         {
            if(_loc1_ == this.§,!o§)
            {
               this.§6!n§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§6!n§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§=!B§ = false;
      }
   }
}
