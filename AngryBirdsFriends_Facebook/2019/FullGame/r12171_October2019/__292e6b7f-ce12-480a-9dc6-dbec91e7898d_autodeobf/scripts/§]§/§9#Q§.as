package §]§
{
   import § "L§.§1"r§;
   import § "L§.§23§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §+`§.§%"q§;
   import §3"V§.§ b§;
   import §7#$§.§3!,§;
   import §7#$§.§]#q§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §=J§.§4#"§;
   import §?#z§.§]$?§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §9#Q§ extends §1$?§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const § "D§:Number = 0.5;
       
      
      protected var §<# §:Sprite;
      
      protected var §`"s§:§23§;
      
      protected var §%"A§:Array;
      
      protected var §0"!§:Array;
      
      protected var §'$$§:int = 0;
      
      protected var §@"w§:Number = 0;
      
      protected var §9#+§:Number = 0;
      
      protected var § !+§:§@$-§ = null;
      
      protected var §;#^§:Boolean = false;
      
      protected var §,"h§:Number = 0;
      
      public function §9#Q§(param1:§]#q§, param2:§%"q§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_ChapterSelection[0]);
         this.§2n§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]$?§.§2#§.setVisible(false);
         this.§^$?§();
      }
      
      protected function §^$?§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§3!,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%"A§)
         {
            _loc3_ = mLevelManager.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§#!r§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§=#[§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§`!t§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§<!S§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§8"I§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §2n§() : void
      {
         var _loc3_:§3!,§ = null;
         this.§`"s§ = §;!w§.getItemByName("Container_ChapterSelection") as §23§;
         this.§%"A§ = [];
         this.§0"!§ = [];
         var _loc1_:Number = 0;
         this.§<# § = new Sprite();
         this.§<# §.y = AngryBirdsBase.screenHeight / 2;
         this.§@"w§ = AngryBirdsBase.screenWidth / 2;
         this.§<# §.x = this.§@"w§;
         this.§`"s§.mClip.addChild(this.§<# §);
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(!_loc3_.§ !k§)
            {
               _loc1_ = this.§#$0§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§var §(_loc1_);
         this.§&"I§();
      }
      
      protected function §var §(param1:Number) : void
      {
         param1 = this.§#$0§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§#$0§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §&"I§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%"A§.length)
         {
            _loc3_ = new §[a§.§8#k§("Button_Dot")();
            if(_loc2_ == this.§'$$§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = AngryBirdsBase.screenWidth / 2 + _loc1_ - this.§%"A§.length * _loc3_.width / 2;
            _loc3_.y = (§;!w§.getItemByName("Button_Next") as §1"r§).y - _loc3_.height / 2;
            this.§`"s§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§0"!§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§=[§);
            _loc2_++;
         }
         _loc1_ = this.§%"A§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§;!w§.getItemByName("Button_Next") as §1"r§).x = AngryBirdsBase.screenWidth / 2;
         (§;!w§.getItemByName("Button_Prev") as §1"r§).x = AngryBirdsBase.screenWidth / 2;
         (§;!w§.getItemByName("Button_Next") as §1"r§).x = (§;!w§.getItemByName("Button_Next") as §1"r§).x + (_loc1_ + 10);
         (§;!w§.getItemByName("Button_Prev") as §1"r§).x = (§;!w§.getItemByName("Button_Prev") as §1"r§).x - (_loc1_ + 10);
      }
      
      protected function §#$0§(param1:String, param2:Number, param3:§3!,§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §[a§.§8#k§(param1)()).x = param2;
         this.§<# §.addChild(_loc4_);
         this.§%"A§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§5#V§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§`!t§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§<!S§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§8"I§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§#!r§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§=#[§(param3);
            }
         }
         return param2;
      }
      
      private function §=[§(param1:MouseEvent) : void
      {
         if(!this.§;#^§)
         {
            this.§@#Q§(this.§0"!§.indexOf(param1.target));
         }
      }
      
      protected function §5#V§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§;#^§)
         {
            _loc2_ = this.§%"A§.indexOf(param1.currentTarget);
            if(this.§'$$§ != _loc2_)
            {
               this.§@#Q§(_loc2_);
            }
            else if(_loc2_ < mLevelManager.getEpisodeCount())
            {
               mLevelManager.selectEpisode(_loc2_);
               §3#§(§#!$§.STATE_NAME);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§7!a§();
         this.§#!k§();
      }
      
      protected function §#!k§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%"A§.length)
         {
            _loc2_ = this.§<# §.x + this.§%"A§[_loc1_].x - AngryBirdsBase.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§%"A§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§%"A§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§%"A§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§%"A§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §7!a§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0"!§.length)
         {
            if(-this.§<# §.x + 800 >= this.§%"A§[_loc1_].x && -this.§,"h§ < this.§%"A§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0"!§.length)
               {
                  this.§0"!§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0"!§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§<# §.x + 800 <= this.§%"A§[_loc1_].x && -this.§,"h§ > this.§%"A§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0"!§.length)
               {
                  this.§0"!§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0"!§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§,"h§ = this.§<# §.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §]$?§.§2#§.clearLevel();
         this.§9!t§();
      }
      
      protected function §9!t§() : void
      {
         (§;!w§.getItemByName("Button_Back") as §1"r§).setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "BACK":
               § b§.playSound("Menu_Back",§ b§.§;$5§);
               §3#§(§;#D§.STATE_NAME);
               break;
            case "PREV":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               if(!this.§;#^§)
               {
                  --this.§'$$§;
                  this.§@#Q§(this.§'$$§);
                  break;
               }
               break;
            case "NEXT":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               if(!this.§;#^§)
               {
                  ++this.§'$$§;
                  this.§@#Q§(this.§'$$§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.§`<§();
         }
      }
      
      protected function §@#Q§(param1:int) : void
      {
         this.§;#^§ = true;
         if(param1 > this.§%"A§.length - 1)
         {
            param1 = this.§%"A§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§'$$§ = param1;
         var _loc2_:Number = -this.§%"A§[param1].x + this.§@"w§;
         var _loc3_:Number = this.§<# §.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * § "D§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§ !+§ != null)
         {
            this.§ !+§.stop();
         }
         this.§ !+§ = §6"W§.§+!,§.§9!n§(this.§<# §,{"x":_loc2_},null,_loc4_,§4#"§.easeOut);
         this.§ !+§.onComplete = this.§0"I§;
         this.§ !+§.play();
      }
      
      protected function §0"I§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§0"!§.length)
         {
            if(_loc1_ == this.§'$$§)
            {
               this.§0"!§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§0"!§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§;#^§ = false;
      }
   }
}
