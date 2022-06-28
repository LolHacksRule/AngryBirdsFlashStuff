package §9!5§
{
   import §"R§.§ !Q§;
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import §true§.§ _§;
   
   public class §0!`§ extends §?Y§
   {
      
      public static const §?h§:String = "ChapterSelectionState";
      
      private static const §=C§:Number = 0.5;
       
      
      private var §-+§:Sprite;
      
      private var §=!4§:§8;§;
      
      private var §9g§:Array;
      
      private var §%3§:Array;
      
      private var §;z§:int = 0;
      
      private var § !O§:Number = 0;
      
      private var §'p§:Number = 0;
      
      private var §,!L§:Dictionary;
      
      private var §7!p§:Dictionary;
      
      private var §8_§:§4!Z§ = null;
      
      private var §2!"§:Boolean = false;
      
      private var §0B§:Number = 0;
      
      public function §0!`§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_ChapterSelection[0]);
         this.§5N§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§4n§ = null;
         super.activate();
         § _§.§!6§.§2!d§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§9g§)
         {
            _loc3_ = LevelManager.§`!-§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§`!8§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§'!O§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§&!N§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§#O§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§7!>§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §5N§() : void
      {
         var _loc3_:§4n§ = null;
         var _loc4_:String = null;
         this.§=!4§ = §5!P§.getItemByName("Container_ChapterSelection") as §8;§;
         this.§9g§ = [];
         this.§%3§ = [];
         var _loc1_:Number = 0;
         this.§-+§ = new Sprite();
         this.§-+§.y = AngryBirdsFP11.§@U§ / 2;
         this.§ !O§ = AngryBirdsFP11.§>!2§ / 2;
         this.§-+§.x = this.§ !O§;
         this.§=!4§.mClip.addChild(this.§-+§);
         this.§7!p§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§1K§())
         {
            _loc3_ = LevelManager.§`!-§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§#k§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§#k§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§#k§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§3!g§();
      }
      
      private function §3!g§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§,!L§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§9g§.length)
         {
            _loc1_ = §%!G§.§^!B§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§;z§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§>!2§ / 2 + _loc3_ - this.§9g§.length * _loc2_.width / 2;
            _loc2_.y = (§5!P§.getItemByName("Button_Next") as §5!I§).y - _loc2_.height / 2;
            this.§=!4§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§,!L§[_loc2_] = _loc4_;
            this.§%3§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4"§);
            _loc4_++;
         }
         _loc3_ = this.§9g§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§5!P§.getItemByName("Button_Next") as §5!I§).x = AngryBirdsFP11.§>!2§ / 2;
         (§5!P§.getItemByName("Button_Prev") as §5!I§).x = AngryBirdsFP11.§>!2§ / 2;
         (§5!P§.getItemByName("Button_Next") as §5!I§).x = (§5!P§.getItemByName("Button_Next") as §5!I§).x + (_loc3_ + 10);
         (§5!P§.getItemByName("Button_Prev") as §5!I§).x = (§5!P§.getItemByName("Button_Prev") as §5!I§).x - (_loc3_ + 10);
      }
      
      private function §#k§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§4n§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§%!G§.§+!W§(param1))
         {
            _loc4_ = LevelManager.§`!-§(param3);
            (_loc6_ = new (_loc5_ = §%!G§.§^!B§(param1))()).x = param2;
            this.§-+§.addChild(_loc6_);
            this.§9g§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§7!p§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§'@§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§&!N§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§#O§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§7!>§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§`!8§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§'!O§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §4"§(param1:MouseEvent) : void
      {
         if(!this.§2!"§)
         {
            this.§'!m§(this.§,!L§[param1.target]);
         }
      }
      
      private function §'@§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§2!"§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§;z§ != this.§7!p§[_loc2_])
            {
               this.§'!m§(this.§7!p§[_loc2_]);
            }
            else if(this.§7!p§[_loc2_] < LevelManager.§1K§())
            {
               LevelManager.§>!§ = this.§7!p§[_loc2_];
               mNextState = § B§.§?h§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§1G§();
         this.§5q§();
         if(mNextState.length > 0)
         {
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      private function §5q§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9g§.length)
         {
            _loc2_ = this.§-+§.x + this.§9g§[_loc1_].x - AngryBirdsFP11.§>!2§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§9g§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§9g§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§9g§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§9g§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §1G§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%3§.length)
         {
            if(-this.§-+§.x + 800 >= this.§9g§[_loc1_].x && -this.§0B§ < this.§9g§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%3§.length)
               {
                  this.§%3§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§%3§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§-+§.x + 800 <= this.§9g§[_loc1_].x && -this.§0B§ > this.§9g§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§%3§.length)
               {
                  this.§%3§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§%3§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§0B§ = this.§-+§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         § _§.§!6§.clearLevel();
         (§5!P§.getItemByName("Button_Back") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         switch(param2)
         {
            case "BACK":
               § !Q§.playSound("Menu_Back");
               mNextState = §!i§.§?h§;
               break;
            case "PREV":
               § !Q§.playSound("Menu_Confirm");
               if(!this.§2!"§)
               {
                  --this.§;z§;
                  this.§'!m§(this.§;z§);
                  break;
               }
               break;
            case "NEXT":
               § !Q§.playSound("Menu_Confirm");
               if(!this.§2!"§)
               {
                  ++this.§;z§;
                  this.§'!m§(this.§;z§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               § !Q§.playSound("Menu_Confirm");
               AngryBirdsFP11.§3!a§.§8!d§();
         }
      }
      
      private function §'!m§(param1:int) : void
      {
         this.§2!"§ = true;
         if(param1 > this.§9g§.length - 1)
         {
            param1 = this.§9g§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§;z§ = param1;
         var _loc2_:Number = -this.§9g§[param1].x + this.§ !O§;
         var _loc3_:Number = this.§-+§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §=C§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§8_§ != null)
         {
            this.§8_§.stop();
         }
         this.§8_§ = §,!b§.§<d§.§>a§(this.§-+§,{"x":_loc2_},null,_loc4_,§,!b§.§4t§);
         this.§8_§.onComplete = this.§3!L§;
         this.§8_§.play();
      }
      
      private function §3!L§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§%3§.length)
         {
            if(_loc1_ == this.§;z§)
            {
               this.§%3§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§%3§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§2!"§ = false;
      }
   }
}
