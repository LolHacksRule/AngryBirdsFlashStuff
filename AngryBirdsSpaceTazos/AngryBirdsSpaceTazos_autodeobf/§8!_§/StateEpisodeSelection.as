package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§@_§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §]!K§.§,!H§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §5!&§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §?0§:Number = 0.5;
       
      
      protected var §3G§:Sprite;
      
      protected var §5!B§:§ ",§;
      
      protected var §,<§:Array;
      
      protected var §03§:Array;
      
      protected var §`_§:int = 0;
      
      protected var §9!D§:Number = 0;
      
      protected var §!"§:Number = 0;
      
      protected var §8!t§:§5!9§ = null;
      
      protected var §+!4§:Boolean = false;
      
      protected var §8"9§:Number = 0;
      
      public function StateEpisodeSelection(param1:§9"!§, param2:§3!'§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_ChapterSelection[0]);
         this.initChapterLayer();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §9q§.§>!L§.§0!M§(false);
         this.updateEpisodeButtons();
      }
      
      protected function updateEpisodeButtons() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§3,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,<§)
         {
            _loc3_ = §6u§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = § !g§.§;!'§.§&!`§.userProgress.§7%§(_loc3_) + "/" + § !g§.§;!'§.§&!`§.userProgress.§?N§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = § !g§.§;!'§.§&!`§.userProgress.§5;§(_loc3_) + "/" + § !g§.§;!'§.§&!`§.userProgress.§4"4§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = § !g§.§;!'§.§&!`§.userProgress.§<!y§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function initChapterLayer() : void
      {
         var _loc3_:§3,§ = null;
         this.§5!B§ = §8!A§.getItemByName("Container_ChapterSelection") as § ",§;
         this.§,<§ = [];
         this.§03§ = [];
         var _loc1_:Number = 0;
         this.§3G§ = new Sprite();
         this.§3G§.y = § !g§.screenHeight / 2;
         this.§9!D§ = § !g§.screenWidth / 2;
         this.§3G§.x = this.§9!D§;
         this.§5!B§.mClip.addChild(this.§3G§);
         var _loc2_:int = 0;
         while(_loc2_ < §6u§.getEpisodeCount())
         {
            _loc3_ = §6u§.getEpisode(_loc2_);
            if(!_loc3_.§@!i§)
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
         while(_loc2_ < this.§,<§.length)
         {
            _loc3_ = new § !h§.§["3§("Button_Dot")();
            if(_loc2_ == this.§`_§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = § !g§.screenWidth / 2 + _loc1_ - this.§,<§.length * _loc3_.width / 2;
            _loc3_.y = (§8!A§.getItemByName("Button_Next") as §@_§).y - _loc3_.height / 2;
            this.§5!B§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§03§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§-!j§);
            _loc2_++;
         }
         _loc1_ = this.§,<§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§8!A§.getItemByName("Button_Next") as §@_§).x = § !g§.screenWidth / 2;
         (§8!A§.getItemByName("Button_Prev") as §@_§).x = § !g§.screenWidth / 2;
         (§8!A§.getItemByName("Button_Next") as §@_§).x = (§8!A§.getItemByName("Button_Next") as §@_§).x + (_loc1_ + 10);
         (§8!A§.getItemByName("Button_Prev") as §@_§).x = (§8!A§.getItemByName("Button_Prev") as §@_§).x - (_loc1_ + 10);
      }
      
      protected function addEpisode(param1:String, param2:Number, param3:§3,§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new § !h§.§["3§(param1)()).x = param2;
         this.§3G§.addChild(_loc4_);
         this.§,<§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.onChapterClick);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = § !g§.§;!'§.§&!`§.userProgress.§5;§(param3) + "/" + § !g§.§;!'§.§&!`§.userProgress.§4"4§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = § !g§.§;!'§.§&!`§.userProgress.§<!y§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = § !g§.§;!'§.§&!`§.userProgress.§7%§(param3) + "/" + § !g§.§;!'§.§&!`§.userProgress.§?N§(param3);
            }
         }
         return param2;
      }
      
      private function §-!j§(param1:MouseEvent) : void
      {
         if(!this.§+!4§)
         {
            this.moveToChapter(this.§03§.indexOf(param1.target));
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§+!4§)
         {
            _loc2_ = this.§,<§.indexOf(param1.currentTarget);
            if(this.§`_§ != _loc2_)
            {
               this.moveToChapter(_loc2_);
            }
            else if(_loc2_ < §6u§.getEpisodeCount())
            {
               §6u§.selectEpisode(_loc2_);
               §8!^§(§]J§.STATE_NAME);
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
         while(_loc1_ < this.§,<§.length)
         {
            _loc2_ = this.§3G§.x + this.§,<§[_loc1_].x - § !g§.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§,<§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§,<§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§,<§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§,<§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§03§.length)
         {
            if(-this.§3G§.x + 800 >= this.§,<§[_loc1_].x && -this.§8"9§ < this.§,<§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§03§.length)
               {
                  this.§03§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§03§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§3G§.x + 800 <= this.§,<§[_loc1_].x && -this.§8"9§ > this.§,<§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§03§.length)
               {
                  this.§03§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§03§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§8"9§ = this.§3G§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §9q§.§>!L§.clearLevel();
         this.resetButtons();
      }
      
      protected function resetButtons() : void
      {
         (§8!A§.getItemByName("Button_Back") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "BACK":
               §<!O§.playSound("Menu_Back");
               §8!^§(§0!q§.STATE_NAME);
               break;
            case "PREV":
               §<!O§.playSound("Menu_Confirm");
               if(!this.§+!4§)
               {
                  --this.§`_§;
                  this.moveToChapter(this.§`_§);
               }
               break;
            case "NEXT":
               §<!O§.playSound("Menu_Confirm");
               if(!this.§+!4§)
               {
                  ++this.§`_§;
                  this.moveToChapter(this.§`_§);
               }
               break;
            case "FULLSCREEN_BUTTON":
               §<!O§.playSound("Menu_Confirm");
               § !g§.§;!'§.§%!N§();
         }
      }
      
      protected function moveToChapter(param1:int) : void
      {
         this.§+!4§ = true;
         if(param1 > this.§,<§.length - 1)
         {
            param1 = this.§,<§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§`_§ = param1;
         var _loc2_:Number = -this.§,<§[param1].x + this.§9!D§;
         var _loc3_:Number = this.§3G§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §?0§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§8!t§ != null)
         {
            this.§8!t§.stop();
         }
         this.§8!t§ = §!D§.§[!1§.§1"<§(this.§3G§,{"x":_loc2_},null,_loc4_,§,!H§.easeOut);
         this.§8!t§.onComplete = this.onChapterTweenComplete;
         this.§8!t§.play();
      }
      
      protected function onChapterTweenComplete() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§03§.length)
         {
            if(_loc1_ == this.§`_§)
            {
               this.§03§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§03§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§+!4§ = false;
      }
   }
}
