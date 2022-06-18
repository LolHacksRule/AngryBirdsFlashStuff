package §94§
{
   import §%#A§.§,#w§;
   import §%#A§.§]!_§;
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §2`§.§<"I§;
   import §6"r§.§!#A§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §4#M§ extends §`"z§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §1,§:Number = 0.5;
       
      
      protected var §-$§:Sprite;
      
      protected var §2#H§:§]!_§;
      
      protected var §4Y§:Array;
      
      protected var §'#-§:Array;
      
      protected var §?!$§:int = 0;
      
      protected var §[#H§:Number = 0;
      
      protected var §?"t§:Number = 0;
      
      protected var §-!Z§:§-#C§ = null;
      
      protected var §7"g§:Boolean = false;
      
      protected var §<"M§:Number = 0;
      
      public function §4#M§(param1:§^#Q§, param2:§+#!§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_ChapterSelection[0]);
         this.§+#N§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §!#A§.§#F§.§8"d§(false);
         this.§%#J§();
      }
      
      protected function §%#J§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§9##§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4Y§)
         {
            _loc3_ = mLevelManager.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§8M§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§26§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§@"V§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§%n§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§?G§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §+#N§() : void
      {
         var _loc3_:§9##§ = null;
         this.§2#H§ = §?Q§.getItemByName("Container_ChapterSelection") as §]!_§;
         this.§4Y§ = [];
         this.§'#-§ = [];
         var _loc1_:Number = 0;
         this.§-$§ = new Sprite();
         this.§-$§.y = AngryBirdsBase.screenHeight / 2;
         this.§[#H§ = AngryBirdsBase.screenWidth / 2;
         this.§-$§.x = this.§[#H§;
         this.§2#H§.mClip.addChild(this.§-$§);
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(!_loc3_.§4"Q§)
            {
               _loc1_ = this.§<!c§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§%U§(_loc1_);
         this.§@#x§();
      }
      
      protected function §%U§(param1:Number) : void
      {
         param1 = this.§<!c§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§<!c§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §@#x§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4Y§.length)
         {
            _loc3_ = new §+$#§.§["`§("Button_Dot")();
            if(_loc2_ == this.§?!$§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = AngryBirdsBase.screenWidth / 2 + _loc1_ - this.§4Y§.length * _loc3_.width / 2;
            _loc3_.y = (§?Q§.getItemByName("Button_Next") as §,#w§).y - _loc3_.height / 2;
            this.§2#H§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§'#-§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§@!6§);
            _loc2_++;
         }
         _loc1_ = this.§4Y§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§?Q§.getItemByName("Button_Next") as §,#w§).x = AngryBirdsBase.screenWidth / 2;
         (§?Q§.getItemByName("Button_Prev") as §,#w§).x = AngryBirdsBase.screenWidth / 2;
         (§?Q§.getItemByName("Button_Next") as §,#w§).x = (§?Q§.getItemByName("Button_Next") as §,#w§).x + (_loc1_ + 10);
         (§?Q§.getItemByName("Button_Prev") as §,#w§).x = (§?Q§.getItemByName("Button_Prev") as §,#w§).x - (_loc1_ + 10);
      }
      
      protected function §<!c§(param1:String, param2:Number, param3:§9##§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §+$#§.§["`§(param1)()).x = param2;
         this.§-$§.addChild(_loc4_);
         this.§4Y§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§=c§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§@"V§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§%n§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§?G§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§8M§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§26§(param3);
            }
         }
         return param2;
      }
      
      private function §@!6§(param1:MouseEvent) : void
      {
         if(!this.§7"g§)
         {
            this.§default§(this.§'#-§.indexOf(param1.target));
         }
      }
      
      protected function §=c§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§7"g§)
         {
            _loc2_ = this.§4Y§.indexOf(param1.currentTarget);
            if(this.§?!$§ != _loc2_)
            {
               this.§default§(_loc2_);
            }
            else if(_loc2_ < mLevelManager.getEpisodeCount())
            {
               mLevelManager.selectEpisode(_loc2_);
               §5"p§(§7!c§.STATE_NAME);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§&$9§();
         this.§]!8§();
      }
      
      protected function §]!8§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4Y§.length)
         {
            _loc2_ = this.§-$§.x + this.§4Y§[_loc1_].x - AngryBirdsBase.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§4Y§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§4Y§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§4Y§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§4Y§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §&$9§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'#-§.length)
         {
            if(-this.§-$§.x + 800 >= this.§4Y§[_loc1_].x && -this.§<"M§ < this.§4Y§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'#-§.length)
               {
                  this.§'#-§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'#-§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§-$§.x + 800 <= this.§4Y§[_loc1_].x && -this.§<"M§ > this.§4Y§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'#-§.length)
               {
                  this.§'#-§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'#-§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§<"M§ = this.§-$§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §!#A§.§#F§.clearLevel();
         this.§&!4§();
      }
      
      protected function §&!4§() : void
      {
         (§?Q§.getItemByName("Button_Back") as §,#w§).setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "BACK":
               §!#&§.playSound("Menu_Back",§!#&§.§6#h§);
               §5"p§(§+$,§.STATE_NAME);
               break;
            case "PREV":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               if(!this.§7"g§)
               {
                  --this.§?!$§;
                  this.§default§(this.§?!$§);
                  break;
               }
               break;
            case "NEXT":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               if(!this.§7"g§)
               {
                  ++this.§?!$§;
                  this.§default§(this.§?!$§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.§6"0§();
         }
      }
      
      protected function §default§(param1:int) : void
      {
         this.§7"g§ = true;
         if(param1 > this.§4Y§.length - 1)
         {
            param1 = this.§4Y§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§?!$§ = param1;
         var _loc2_:Number = -this.§4Y§[param1].x + this.§[#H§;
         var _loc3_:Number = this.§-$§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §1,§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§-!Z§ != null)
         {
            this.§-!Z§.stop();
         }
         this.§-!Z§ = §6"w§.§ "D§.§""3§(this.§-$§,{"x":_loc2_},null,_loc4_,§<"I§.easeOut);
         this.§-!Z§.onComplete = this.§!#1§;
         this.§-!Z§.play();
      }
      
      protected function §!#1§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'#-§.length)
         {
            if(_loc1_ == this.§?!$§)
            {
               this.§'#-§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§'#-§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§7"g§ = false;
      }
   }
}
