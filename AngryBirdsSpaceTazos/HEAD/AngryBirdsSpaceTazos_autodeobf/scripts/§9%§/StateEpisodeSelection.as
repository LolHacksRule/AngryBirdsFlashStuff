package §9%§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §%"%§.§2Z§;
   import §,!L§.§7!9§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1z§.§^!@§;
   import §1z§.§^"6§;
   import §3!S§.§<5§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §="<§.§,"$§;
   import §="<§.§87§;
   import §>"2§.§8k§;
   import com.rovio.assets.§1!h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §>!s§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §"![§:Number = 0.5;
       
      
      protected var §?!&§:Sprite;
      
      protected var §"!G§:§,"$§;
      
      protected var §>!A§:Array;
      
      protected var §#!N§:Array;
      
      protected var §5!,§:int = 0;
      
      protected var §?M§:Number = 0;
      
      protected var §>+§:Number = 0;
      
      protected var §5l§:§,4§ = null;
      
      protected var §"!Y§:Boolean = false;
      
      protected var §]@§:Number = 0;
      
      public function StateEpisodeSelection(param1:§^!@§, param2:§2Z§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_ChapterSelection[0]);
         this.initChapterLayer();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8k§.§;!]§.§#5§(false);
         this.updateEpisodeButtons();
      }
      
      protected function updateEpisodeButtons() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§^"6§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§>!A§)
         {
            _loc3_ = §#"=§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §2&§.§6o§.§2c§.userProgress.§@"-§(_loc3_) + "/" + §2&§.§6o§.§2c§.userProgress.§9!N§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §2&§.§6o§.§2c§.userProgress.§+!A§(_loc3_) + "/" + §2&§.§6o§.§2c§.userProgress.§7D§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §2&§.§6o§.§2c§.userProgress.§;!>§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function initChapterLayer() : void
      {
         var _loc3_:§^"6§ = null;
         this.§"!G§ = §%!A§.getItemByName("Container_ChapterSelection") as §,"$§;
         this.§>!A§ = [];
         this.§#!N§ = [];
         var _loc1_:Number = 0;
         this.§?!&§ = new Sprite();
         this.§?!&§.y = §2&§.screenHeight / 2;
         this.§?M§ = §2&§.screenWidth / 2;
         this.§?!&§.x = this.§?M§;
         this.§"!G§.mClip.addChild(this.§?!&§);
         var _loc2_:int = 0;
         while(_loc2_ < §#"=§.getEpisodeCount())
         {
            _loc3_ = §#"=§.getEpisode(_loc2_);
            if(!_loc3_.§="7§)
            {
               _loc1_ = this.addEpisode(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.addExtraButtons(_loc1_);
         this.configureChapterButtons();
      }
      
      protected function addExtraButtons(param1:Number) : void
      {
         param1 = this.addEpisode("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.addEpisode("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function configureChapterButtons() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!A§.length)
         {
            _loc3_ = new §1!h§.§4!D§("Button_Dot")();
            if(_loc2_ == this.§5!,§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §2&§.screenWidth / 2 + _loc1_ - this.§>!A§.length * _loc3_.width / 2;
            _loc3_.y = (§%!A§.getItemByName("Button_Next") as §87§).y - _loc3_.height / 2;
            this.§"!G§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§#!N§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§,U§);
            _loc2_++;
         }
         _loc1_ = this.§>!A§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§%!A§.getItemByName("Button_Next") as §87§).x = §2&§.screenWidth / 2;
         (§%!A§.getItemByName("Button_Prev") as §87§).x = §2&§.screenWidth / 2;
         (§%!A§.getItemByName("Button_Next") as §87§).x = (§%!A§.getItemByName("Button_Next") as §87§).x + (_loc1_ + 10);
         (§%!A§.getItemByName("Button_Prev") as §87§).x = (§%!A§.getItemByName("Button_Prev") as §87§).x - (_loc1_ + 10);
      }
      
      protected function addEpisode(param1:String, param2:Number, param3:§^"6§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §1!h§.§4!D§(param1)()).x = param2;
         this.§?!&§.addChild(_loc4_);
         this.§>!A§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.onChapterClick);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §2&§.§6o§.§2c§.userProgress.§+!A§(param3) + "/" + §2&§.§6o§.§2c§.userProgress.§7D§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §2&§.§6o§.§2c§.userProgress.§;!>§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §2&§.§6o§.§2c§.userProgress.§@"-§(param3) + "/" + §2&§.§6o§.§2c§.userProgress.§9!N§(param3);
            }
         }
         return param2;
      }
      
      private function §,U§(param1:MouseEvent) : void
      {
         if(!this.§"!Y§)
         {
            this.moveToChapter(this.§#!N§.indexOf(param1.target));
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§"!Y§)
         {
            _loc2_ = this.§>!A§.indexOf(param1.currentTarget);
            if(this.§5!,§ != _loc2_)
            {
               this.moveToChapter(_loc2_);
            }
            else if(_loc2_ < §#"=§.getEpisodeCount())
            {
               §#"=§.selectEpisode(_loc2_);
               § !I§(§ §.STATE_NAME);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.checkIfPagePassed();
         this.coverFlowScale();
      }
      
      protected function coverFlowScale() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!A§.length)
         {
            _loc2_ = this.§?!&§.x + this.§>!A§[_loc1_].x - §2&§.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§>!A§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§>!A§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§>!A§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§>!A§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!N§.length)
         {
            if(-this.§?!&§.x + 800 >= this.§>!A§[_loc1_].x && -this.§]@§ < this.§>!A§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§#!N§.length)
               {
                  this.§#!N§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#!N§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§?!&§.x + 800 <= this.§>!A§[_loc1_].x && -this.§]@§ > this.§>!A§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§#!N§.length)
               {
                  this.§#!N§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#!N§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§]@§ = this.§?!&§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §8k§.§;!]§.clearLevel();
         this.resetButtons();
      }
      
      protected function resetButtons() : void
      {
         (§%!A§.getItemByName("Button_Back") as §87§).setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "BACK":
               §<5§.playSound("Menu_Back");
               § !I§(§1"1§.STATE_NAME);
               break;
            case "PREV":
               §<5§.playSound("Menu_Confirm");
               if(!this.§"!Y§)
               {
                  --this.§5!,§;
                  this.moveToChapter(this.§5!,§);
                  break;
               }
               break;
            case "NEXT":
               §<5§.playSound("Menu_Confirm");
               if(!this.§"!Y§)
               {
                  ++this.§5!,§;
                  this.moveToChapter(this.§5!,§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §<5§.playSound("Menu_Confirm");
               §2&§.§6o§.§>!9§();
         }
      }
      
      protected function moveToChapter(param1:int) : void
      {
         this.§"!Y§ = true;
         if(param1 > this.§>!A§.length - 1)
         {
            param1 = this.§>!A§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§5!,§ = param1;
         var _loc2_:Number = -this.§>!A§[param1].x + this.§?M§;
         var _loc3_:Number = this.§?!&§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §"![§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§5l§ != null)
         {
            this.§5l§.stop();
         }
         this.§5l§ = §"!t§.§3R§.§2m§(this.§?!&§,{"x":_loc2_},null,_loc4_,§7!9§.easeOut);
         this.§5l§.onComplete = this.onChapterTweenComplete;
         this.§5l§.play();
      }
      
      protected function onChapterTweenComplete() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!N§.length)
         {
            if(_loc1_ == this.§5!,§)
            {
               this.§#!N§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§#!N§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§"!Y§ = false;
      }
   }
}
