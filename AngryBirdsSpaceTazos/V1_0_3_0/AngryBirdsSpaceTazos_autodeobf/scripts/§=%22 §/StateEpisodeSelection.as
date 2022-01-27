package §=" §
{
   import § 3§.§@1§;
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §,!7§.§%!J§;
   import §,!7§.§5!k§;
   import §4",§.§,!j§;
   import §4",§.§2!S§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import §>"!§.§@!9§;
   import com.rovio.assets.§>!;§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §[!B§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §[8§:Number = 0.5;
       
      
      protected var §3;§:Sprite;
      
      protected var §&!9§:§5!k§;
      
      protected var §]!b§:Array;
      
      protected var §%"1§:Array;
      
      protected var §%"0§:int = 0;
      
      protected var §return§:Number = 0;
      
      protected var §6"3§:Number = 0;
      
      protected var §4!0§:§15§ = null;
      
      protected var §%,§:Boolean = false;
      
      protected var §4I§:Number = 0;
      
      public function StateEpisodeSelection(param1:§,!j§, param2:§;l§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_ChapterSelection[0]);
         this.initChapterLayer();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8!w§.§5!V§.§3r§(false);
         this.updateEpisodeButtons();
      }
      
      protected function updateEpisodeButtons() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§2!S§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]!b§)
         {
            _loc3_ = §]m§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §&"<§.§<!7§.§,!9§.userProgress.§7@§(_loc3_) + "/" + §&"<§.§<!7§.§,!9§.userProgress.§%?§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §&"<§.§<!7§.§,!9§.userProgress.§#i§(_loc3_) + "/" + §&"<§.§<!7§.§,!9§.userProgress.§^w§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §&"<§.§<!7§.§,!9§.userProgress.§3"9§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function initChapterLayer() : void
      {
         var _loc3_:§2!S§ = null;
         this.§&!9§ = §6!J§.getItemByName("Container_ChapterSelection") as §5!k§;
         this.§]!b§ = [];
         this.§%"1§ = [];
         var _loc1_:Number = 0;
         this.§3;§ = new Sprite();
         this.§3;§.y = §&"<§.screenHeight / 2;
         this.§return§ = §&"<§.screenWidth / 2;
         this.§3;§.x = this.§return§;
         this.§&!9§.mClip.addChild(this.§3;§);
         var _loc2_:int = 0;
         while(_loc2_ < §]m§.getEpisodeCount())
         {
            _loc3_ = §]m§.getEpisode(_loc2_);
            if(!_loc3_.§^0§)
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
         while(_loc2_ < this.§]!b§.length)
         {
            _loc3_ = new §>!;§.§+!u§("Button_Dot")();
            if(_loc2_ == this.§%"0§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §&"<§.screenWidth / 2 + _loc1_ - this.§]!b§.length * _loc3_.width / 2;
            _loc3_.y = (§6!J§.getItemByName("Button_Next") as §%!J§).y - _loc3_.height / 2;
            this.§&!9§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§%"1§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§@!_§);
            _loc2_++;
         }
         _loc1_ = this.§]!b§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§6!J§.getItemByName("Button_Next") as §%!J§).x = §&"<§.screenWidth / 2;
         (§6!J§.getItemByName("Button_Prev") as §%!J§).x = §&"<§.screenWidth / 2;
         (§6!J§.getItemByName("Button_Next") as §%!J§).x = (§6!J§.getItemByName("Button_Next") as §%!J§).x + (_loc1_ + 10);
         (§6!J§.getItemByName("Button_Prev") as §%!J§).x = (§6!J§.getItemByName("Button_Prev") as §%!J§).x - (_loc1_ + 10);
      }
      
      protected function addEpisode(param1:String, param2:Number, param3:§2!S§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §>!;§.§+!u§(param1)()).x = param2;
         this.§3;§.addChild(_loc4_);
         this.§]!b§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.onChapterClick);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §&"<§.§<!7§.§,!9§.userProgress.§#i§(param3) + "/" + §&"<§.§<!7§.§,!9§.userProgress.§^w§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §&"<§.§<!7§.§,!9§.userProgress.§3"9§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §&"<§.§<!7§.§,!9§.userProgress.§7@§(param3) + "/" + §&"<§.§<!7§.§,!9§.userProgress.§%?§(param3);
            }
         }
         return param2;
      }
      
      private function §@!_§(param1:MouseEvent) : void
      {
         if(!this.§%,§)
         {
            this.moveToChapter(this.§%"1§.indexOf(param1.target));
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§%,§)
         {
            _loc2_ = this.§]!b§.indexOf(param1.currentTarget);
            if(this.§%"0§ != _loc2_)
            {
               this.moveToChapter(_loc2_);
            }
            else if(_loc2_ < §]m§.getEpisodeCount())
            {
               §]m§.selectEpisode(_loc2_);
               §'Q§(§]!"§.STATE_NAME);
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
         while(_loc1_ < this.§]!b§.length)
         {
            _loc2_ = this.§3;§.x + this.§]!b§[_loc1_].x - §&"<§.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§]!b§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§]!b§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§]!b§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§]!b§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%"1§.length)
         {
            if(-this.§3;§.x + 800 >= this.§]!b§[_loc1_].x && -this.§4I§ < this.§]!b§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%"1§.length)
               {
                  this.§%"1§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§%"1§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§3;§.x + 800 <= this.§]!b§[_loc1_].x && -this.§4I§ > this.§]!b§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%"1§.length)
               {
                  this.§%"1§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§%"1§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§4I§ = this.§3;§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §8!w§.§5!V§.clearLevel();
         this.resetButtons();
      }
      
      protected function resetButtons() : void
      {
         (§6!J§.getItemByName("Button_Back") as §%!J§).setComponentVisualState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "BACK":
               §@!9§.playSound("Menu_Back");
               §'Q§(§&";§.STATE_NAME);
               break;
            case "PREV":
               §@!9§.playSound("Menu_Confirm");
               if(!this.§%,§)
               {
                  --this.§%"0§;
                  this.moveToChapter(this.§%"0§);
                  break;
               }
               break;
            case "NEXT":
               §@!9§.playSound("Menu_Confirm");
               if(!this.§%,§)
               {
                  ++this.§%"0§;
                  this.moveToChapter(this.§%"0§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §@!9§.playSound("Menu_Confirm");
               §&"<§.§<!7§.§7!H§();
         }
      }
      
      protected function moveToChapter(param1:int) : void
      {
         this.§%,§ = true;
         if(param1 > this.§]!b§.length - 1)
         {
            param1 = this.§]!b§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§%"0§ = param1;
         var _loc2_:Number = -this.§]!b§[param1].x + this.§return§;
         var _loc3_:Number = this.§3;§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §[8§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§4!0§ != null)
         {
            this.§4!0§.stop();
         }
         this.§4!0§ = §@F§.§8!J§.§&6§(this.§3;§,{"x":_loc2_},null,_loc4_,§@1§.easeOut);
         this.§4!0§.onComplete = this.onChapterTweenComplete;
         this.§4!0§.play();
      }
      
      protected function onChapterTweenComplete() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§%"1§.length)
         {
            if(_loc1_ == this.§%"0§)
            {
               this.§%"1§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§%"1§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§%,§ = false;
      }
   }
}
