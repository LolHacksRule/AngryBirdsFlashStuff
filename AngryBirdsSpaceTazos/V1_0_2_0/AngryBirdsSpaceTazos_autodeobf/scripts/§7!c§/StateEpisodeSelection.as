package §7!c§
{
   import §!i§.§1s§;
   import §!i§.§3!A§;
   import §"!>§.§<!o§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §7"+§.§;"B§;
   import §9!G§.§"!S§;
   import §;!0§.;
   import §;!0§.§]§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import com.rovio.assets.§2!3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §%<§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §]O§:Number = 0.5;
       
      
      protected var §%C§:Sprite;
      
      protected var §;N§:§1s§;
      
      protected var §=z§:Array;
      
      protected var §;!#§:Array;
      
      protected var §&!?§:int = 0;
      
      protected var § "-§:Number = 0;
      
      protected var §?!J§:Number = 0;
      
      protected var §-!2§:§8"+§ = null;
      
      protected var §2!2§:Boolean = false;
      
      protected var §?!Y§:Number = 0;
      
      public function StateEpisodeSelection(param1:§#2§, param2:§<!o§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_ChapterSelection[0]);
         this.initChapterLayer();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;0§.§@!^§.§'!z§(false);
         this.updateEpisodeButtons();
      }
      
      protected function updateEpisodeButtons() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§]§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=z§)
         {
            _loc3_ = §,W§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §&!h§.§ u§.§-!V§.userProgress.§function§(_loc3_) + "/" + §&!h§.§ u§.§-!V§.userProgress.§%!m§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §&!h§.§ u§.§-!V§.userProgress.§&!1§(_loc3_) + "/" + §&!h§.§ u§.§-!V§.userProgress.§>1§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §&!h§.§ u§.§-!V§.userProgress.§^"6§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function initChapterLayer() : void
      {
         var _loc3_:§]§ = null;
         this.§;N§ = §4§.getItemByName("Container_ChapterSelection") as §1s§;
         this.§=z§ = [];
         this.§;!#§ = [];
         var _loc1_:Number = 0;
         this.§%C§ = new Sprite();
         this.§%C§.y = §&!h§.screenHeight / 2;
         this.§ "-§ = §&!h§.screenWidth / 2;
         this.§%C§.x = this.§ "-§;
         this.§;N§.mClip.addChild(this.§%C§);
         var _loc2_:int = 0;
         while(_loc2_ < §,W§.getEpisodeCount())
         {
            _loc3_ = §,W§.getEpisode(_loc2_);
            if(!_loc3_.§0!_§)
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
         while(_loc2_ < this.§=z§.length)
         {
            _loc3_ = new §2!3§.dynamic("Button_Dot")();
            if(_loc2_ == this.§&!?§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §&!h§.screenWidth / 2 + _loc1_ - this.§=z§.length * _loc3_.width / 2;
            _loc3_.y = (§4§.getItemByName("Button_Next") as §3!A§).y - _loc3_.height / 2;
            this.§;N§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§;!#§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§+!X§);
            _loc2_++;
         }
         _loc1_ = this.§=z§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§4§.getItemByName("Button_Next") as §3!A§).x = §&!h§.screenWidth / 2;
         (§4§.getItemByName("Button_Prev") as §3!A§).x = §&!h§.screenWidth / 2;
         (§4§.getItemByName("Button_Next") as §3!A§).x = (§4§.getItemByName("Button_Next") as §3!A§).x + (_loc1_ + 10);
         (§4§.getItemByName("Button_Prev") as §3!A§).x = (§4§.getItemByName("Button_Prev") as §3!A§).x - (_loc1_ + 10);
      }
      
      protected function addEpisode(param1:String, param2:Number, param3:§]§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §2!3§.dynamic(param1)()).x = param2;
         this.§%C§.addChild(_loc4_);
         this.§=z§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.onChapterClick);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §&!h§.§ u§.§-!V§.userProgress.§&!1§(param3) + "/" + §&!h§.§ u§.§-!V§.userProgress.§>1§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §&!h§.§ u§.§-!V§.userProgress.§^"6§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §&!h§.§ u§.§-!V§.userProgress.§function§(param3) + "/" + §&!h§.§ u§.§-!V§.userProgress.§%!m§(param3);
            }
         }
         return param2;
      }
      
      private function §+!X§(param1:MouseEvent) : void
      {
         if(!this.§2!2§)
         {
            this.moveToChapter(this.§;!#§.indexOf(param1.target));
         }
      }
      
      protected function onChapterClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§2!2§)
         {
            _loc2_ = this.§=z§.indexOf(param1.currentTarget);
            if(this.§&!?§ != _loc2_)
            {
               this.moveToChapter(_loc2_);
            }
            else if(_loc2_ < §,W§.getEpisodeCount())
            {
               §,W§.selectEpisode(_loc2_);
               §2g§(§!!Q§.STATE_NAME);
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
         while(_loc1_ < this.§=z§.length)
         {
            _loc2_ = this.§%C§.x + this.§=z§[_loc1_].x - §&!h§.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§=z§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§=z§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§=z§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§=z§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function checkIfPagePassed() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!#§.length)
         {
            if(-this.§%C§.x + 800 >= this.§=z§[_loc1_].x && -this.§?!Y§ < this.§=z§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§;!#§.length)
               {
                  this.§;!#§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§;!#§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§%C§.x + 800 <= this.§=z§[_loc1_].x && -this.§?!Y§ > this.§=z§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§;!#§.length)
               {
                  this.§;!#§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§;!#§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§?!Y§ = this.§%C§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §;0§.§@!^§.clearLevel();
         this.resetButtons();
      }
      
      protected function resetButtons() : void
      {
         (§4§.getItemByName("Button_Back") as §3!A§).setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "BACK":
               §"!S§.playSound("Menu_Back");
               §2g§(§>!6§.STATE_NAME);
               break;
            case "PREV":
               §"!S§.playSound("Menu_Confirm");
               if(!this.§2!2§)
               {
                  --this.§&!?§;
                  this.moveToChapter(this.§&!?§);
                  break;
               }
               break;
            case "NEXT":
               §"!S§.playSound("Menu_Confirm");
               if(!this.§2!2§)
               {
                  ++this.§&!?§;
                  this.moveToChapter(this.§&!?§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §"!S§.playSound("Menu_Confirm");
               §&!h§.§ u§.§+"4§();
         }
      }
      
      protected function moveToChapter(param1:int) : void
      {
         this.§2!2§ = true;
         if(param1 > this.§=z§.length - 1)
         {
            param1 = this.§=z§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§&!?§ = param1;
         var _loc2_:Number = -this.§=z§[param1].x + this.§ "-§;
         var _loc3_:Number = this.§%C§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §]O§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§-!2§ != null)
         {
            this.§-!2§.stop();
         }
         this.§-!2§ = §<K§.§<"B§.§`!c§(this.§%C§,{"x":_loc2_},null,_loc4_,§;"B§.easeOut);
         this.§-!2§.onComplete = this.onChapterTweenComplete;
         this.§-!2§.play();
      }
      
      protected function onChapterTweenComplete() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!#§.length)
         {
            if(_loc1_ == this.§&!?§)
            {
               this.§;!#§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§;!#§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§2!2§ = false;
      }
   }
}
