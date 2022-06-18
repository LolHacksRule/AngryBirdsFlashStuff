package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §+!n§.§+!p§;
   import §0r§.§3#G§;
   import §2$;§.§!"e§;
   import §2$;§.§;!b§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §4#p§ extends §';§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §7&§:Number = 0.5;
       
      
      protected var §?#c§:Sprite;
      
      protected var §<!_§:§!"e§;
      
      protected var §^_§:Array;
      
      protected var §5!B§:Array;
      
      protected var §>"8§:int = 0;
      
      protected var §"I§:Number = 0;
      
      protected var §["N§:Number = 0;
      
      protected var §<!c§:§@#5§ = null;
      
      protected var §9s§:Boolean = false;
      
      protected var §,#U§:Number = 0;
      
      public function §4#p§(param1:§4#?§, param2:§?!>§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_ChapterSelection[0]);
         this.§"" §();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §+!p§.§`?§.setVisible(false);
         this.§52§();
      }
      
      protected function §52§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§79§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§^_§)
         {
            _loc3_ = mLevelManager.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§72§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§2$4§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§2#2§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§@r§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§6"s§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §"" §() : void
      {
         var _loc3_:§79§ = null;
         this.§<!_§ = §@!D§.getItemByName("Container_ChapterSelection") as §!"e§;
         this.§^_§ = [];
         this.§5!B§ = [];
         var _loc1_:Number = 0;
         this.§?#c§ = new Sprite();
         this.§?#c§.y = AngryBirdsBase.screenHeight / 2;
         this.§"I§ = AngryBirdsBase.screenWidth / 2;
         this.§?#c§.x = this.§"I§;
         this.§<!_§.mClip.addChild(this.§?#c§);
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(!_loc3_.§^$5§)
            {
               _loc1_ = this.§1$0§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§"e§(_loc1_);
         this.§1R§();
      }
      
      protected function §"e§(param1:Number) : void
      {
         param1 = this.§1$0§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§1$0§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §1R§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^_§.length)
         {
            _loc3_ = new §=@§.§9!x§("Button_Dot")();
            if(_loc2_ == this.§>"8§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = AngryBirdsBase.screenWidth / 2 + _loc1_ - this.§^_§.length * _loc3_.width / 2;
            _loc3_.y = (§@!D§.getItemByName("Button_Next") as §;!b§).y - _loc3_.height / 2;
            this.§<!_§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§5!B§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!1§);
            _loc2_++;
         }
         _loc1_ = this.§^_§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§@!D§.getItemByName("Button_Next") as §;!b§).x = AngryBirdsBase.screenWidth / 2;
         (§@!D§.getItemByName("Button_Prev") as §;!b§).x = AngryBirdsBase.screenWidth / 2;
         (§@!D§.getItemByName("Button_Next") as §;!b§).x = (§@!D§.getItemByName("Button_Next") as §;!b§).x + (_loc1_ + 10);
         (§@!D§.getItemByName("Button_Prev") as §;!b§).x = (§@!D§.getItemByName("Button_Prev") as §;!b§).x - (_loc1_ + 10);
      }
      
      protected function §1$0§(param1:String, param2:Number, param3:§79§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §=@§.§9!x§(param1)()).x = param2;
         this.§?#c§.addChild(_loc4_);
         this.§^_§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§?!l§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§2#2§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§@r§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§6"s§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§72§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§2$4§(param3);
            }
         }
         return param2;
      }
      
      private function §[!1§(param1:MouseEvent) : void
      {
         if(!this.§9s§)
         {
            this.§>e§(this.§5!B§.indexOf(param1.target));
         }
      }
      
      protected function §?!l§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§9s§)
         {
            _loc2_ = this.§^_§.indexOf(param1.currentTarget);
            if(this.§>"8§ != _loc2_)
            {
               this.§>e§(_loc2_);
            }
            else if(_loc2_ < mLevelManager.getEpisodeCount())
            {
               mLevelManager.selectEpisode(_loc2_);
               §%!?§(§;O§.STATE_NAME);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§8! §();
         this.§@"T§();
      }
      
      protected function §@"T§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^_§.length)
         {
            _loc2_ = this.§?#c§.x + this.§^_§[_loc1_].x - AngryBirdsBase.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§^_§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§^_§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§^_§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§^_§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §8! §() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!B§.length)
         {
            if(-this.§?#c§.x + 800 >= this.§^_§[_loc1_].x && -this.§,#U§ < this.§^_§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5!B§.length)
               {
                  this.§5!B§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§5!B§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§?#c§.x + 800 <= this.§^_§[_loc1_].x && -this.§,#U§ > this.§^_§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5!B§.length)
               {
                  this.§5!B§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§5!B§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§,#U§ = this.§?#c§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §+!p§.§`?§.clearLevel();
         this.§+Q§();
      }
      
      protected function §+Q§() : void
      {
         (§@!D§.getItemByName("Button_Back") as §;!b§).setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "BACK":
               §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
               §%!?§(§=!w§.STATE_NAME);
               break;
            case "PREV":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               if(!this.§9s§)
               {
                  --this.§>"8§;
                  this.§>e§(this.§>"8§);
                  break;
               }
               break;
            case "NEXT":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               if(!this.§9s§)
               {
                  ++this.§>"8§;
                  this.§>e§(this.§>"8§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.§=!Y§();
         }
      }
      
      protected function §>e§(param1:int) : void
      {
         this.§9s§ = true;
         if(param1 > this.§^_§.length - 1)
         {
            param1 = this.§^_§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§>"8§ = param1;
         var _loc2_:Number = -this.§^_§[param1].x + this.§"I§;
         var _loc3_:Number = this.§?#c§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §7&§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§<!c§ != null)
         {
            this.§<!c§.stop();
         }
         this.§<!c§ = §5"<§.§3"1§.§3#§(this.§?#c§,{"x":_loc2_},null,_loc4_,§3#G§.easeOut);
         this.§<!c§.onComplete = this.§[#D§;
         this.§<!c§.play();
      }
      
      protected function §[#D§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!B§.length)
         {
            if(_loc1_ == this.§>"8§)
            {
               this.§5!B§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§5!B§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§9s§ = false;
      }
   }
}
