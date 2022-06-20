package §3=§
{
   import §"$=§.§'![§;
   import §"$=§.§[§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §5!$§.§<c§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §9#^§.§"$ §;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §7W§ extends §-"4§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §;#-§:Number = 0.5;
       
      
      protected var §[#`§:Sprite;
      
      protected var §[q§:§<c§;
      
      protected var §^!t§:Array;
      
      protected var §%!u§:Array;
      
      protected var §=p§:int = 0;
      
      protected var §=L§:Number = 0;
      
      protected var §,"c§:Number = 0;
      
      protected var §%#-§:§]%§ = null;
      
      protected var §@y§:Boolean = false;
      
      protected var §0;§:Number = 0;
      
      public function §7W§(param1:§'![§, param2:§16§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_ChapterSelection[0]);
         this.§4?§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §%"T§.§;`§.setVisible(false);
         this.§,$3§();
      }
      
      protected function §,$3§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§[#5§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§^!t§)
         {
            _loc3_ = mLevelManager.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§8#C§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]-§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§=! §(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§8!`§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§-"e§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §4?§() : void
      {
         var _loc3_:§[#5§ = null;
         this.§[q§ = §<"`§.getItemByName("Container_ChapterSelection") as §<c§;
         this.§^!t§ = [];
         this.§%!u§ = [];
         var _loc1_:Number = 0;
         this.§[#`§ = new Sprite();
         this.§[#`§.y = AngryBirdsBase.screenHeight / 2;
         this.§=L§ = AngryBirdsBase.screenWidth / 2;
         this.§[#`§.x = this.§=L§;
         this.§[q§.mClip.addChild(this.§[#`§);
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(!_loc3_.§3"O§)
            {
               _loc1_ = this.§7"k§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§6#y§(_loc1_);
         this.§@#7§();
      }
      
      protected function §6#y§(param1:Number) : void
      {
         param1 = this.§7"k§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§7"k§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §@#7§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!t§.length)
         {
            _loc3_ = new §2"O§.§`>§("Button_Dot")();
            if(_loc2_ == this.§=p§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = AngryBirdsBase.screenWidth / 2 + _loc1_ - this.§^!t§.length * _loc3_.width / 2;
            _loc3_.y = (§<"`§.getItemByName("Button_Next") as §"S§).y - _loc3_.height / 2;
            this.§[q§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§%!u§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#c§);
            _loc2_++;
         }
         _loc1_ = this.§^!t§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§<"`§.getItemByName("Button_Next") as §"S§).x = AngryBirdsBase.screenWidth / 2;
         (§<"`§.getItemByName("Button_Prev") as §"S§).x = AngryBirdsBase.screenWidth / 2;
         (§<"`§.getItemByName("Button_Next") as §"S§).x = (§<"`§.getItemByName("Button_Next") as §"S§).x + (_loc1_ + 10);
         (§<"`§.getItemByName("Button_Prev") as §"S§).x = (§<"`§.getItemByName("Button_Prev") as §"S§).x - (_loc1_ + 10);
      }
      
      protected function §7"k§(param1:String, param2:Number, param3:§[#5§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §2"O§.§`>§(param1)()).x = param2;
         this.§[#`§.addChild(_loc4_);
         this.§^!t§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§;!h§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§=! §(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§8!`§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§-"e§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§8#C§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]-§(param3);
            }
         }
         return param2;
      }
      
      private function §#c§(param1:MouseEvent) : void
      {
         if(!this.§@y§)
         {
            this.§9#G§(this.§%!u§.indexOf(param1.target));
         }
      }
      
      protected function §;!h§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§@y§)
         {
            _loc2_ = this.§^!t§.indexOf(param1.currentTarget);
            if(this.§=p§ != _loc2_)
            {
               this.§9#G§(_loc2_);
            }
            else if(_loc2_ < mLevelManager.getEpisodeCount())
            {
               mLevelManager.selectEpisode(_loc2_);
               §%D§(§8$8§.STATE_NAME);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§0$=§();
         this.§+$5§();
      }
      
      protected function §+$5§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^!t§.length)
         {
            _loc2_ = this.§[#`§.x + this.§^!t§[_loc1_].x - AngryBirdsBase.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§^!t§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§^!t§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§^!t§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§^!t§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §0$=§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!u§.length)
         {
            if(-this.§[#`§.x + 800 >= this.§^!t§[_loc1_].x && -this.§0;§ < this.§^!t§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%!u§.length)
               {
                  this.§%!u§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§%!u§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§[#`§.x + 800 <= this.§^!t§[_loc1_].x && -this.§0;§ > this.§^!t§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%!u§.length)
               {
                  this.§%!u§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§%!u§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§0;§ = this.§[#`§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §%"T§.§;`§.clearLevel();
         this.§'"v§();
      }
      
      protected function §'"v§() : void
      {
         (§<"`§.getItemByName("Button_Back") as §"S§).setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "BACK":
               §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
               §%D§(§4#3§.STATE_NAME);
               break;
            case "PREV":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               if(!this.§@y§)
               {
                  --this.§=p§;
                  this.§9#G§(this.§=p§);
                  break;
               }
               break;
            case "NEXT":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               if(!this.§@y§)
               {
                  ++this.§=p§;
                  this.§9#G§(this.§=p§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.§3'§();
         }
      }
      
      protected function §9#G§(param1:int) : void
      {
         this.§@y§ = true;
         if(param1 > this.§^!t§.length - 1)
         {
            param1 = this.§^!t§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§=p§ = param1;
         var _loc2_:Number = -this.§^!t§[param1].x + this.§=L§;
         var _loc3_:Number = this.§[#`§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §;#-§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§%#-§ != null)
         {
            this.§%#-§.stop();
         }
         this.§%#-§ = §'#n§.§?q§.§9!N§(this.§[#`§,{"x":_loc2_},null,_loc4_,§"$ §.easeOut);
         this.§%#-§.onComplete = this.§3"Q§;
         this.§%#-§.play();
      }
      
      protected function §3"Q§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!u§.length)
         {
            if(_loc1_ == this.§=p§)
            {
               this.§%!u§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§%!u§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§@y§ = false;
      }
   }
}
