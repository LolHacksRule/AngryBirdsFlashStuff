package §;H§
{
   import §+0§.§,!E§;
   import §1!E§.§#?§;
   import §1!E§.§==§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §,!]§ extends §,!E§
   {
      
      public static const §"!s§:String = "ChapterSelectionState";
      
      private static const §"!m§:Number = 0.5;
       
      
      private var §-!T§:Sprite;
      
      private var §3!^§:§#?§;
      
      private var § try§:Array;
      
      private var §]!s§:Array;
      
      private var §do§:int = 0;
      
      private var §=#§:Number = 0;
      
      private var §1D§:Number = 0;
      
      private var §@!l§:Dictionary;
      
      private var § !v§:Dictionary;
      
      private var §'!D§:§!q§ = null;
      
      private var §-!Z§:Boolean = false;
      
      private var §-!y§:Number = 0;
      
      public function §,!]§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_ChapterSelection[0]);
         this.§4a§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§<!#§ = null;
         super.activate();
         §^!c§.§5!Y§.§@!v§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ try§)
         {
            _loc3_ = LevelManager.§'J§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§0,§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§'!8§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§^P§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§&!^§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§@!9§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §4a§() : void
      {
         var _loc3_:§<!#§ = null;
         var _loc4_:String = null;
         this.§3!^§ = §&!m§.getItemByName("Container_ChapterSelection") as §#?§;
         this.§ try§ = [];
         this.§]!s§ = [];
         var _loc1_:Number = 0;
         this.§-!T§ = new Sprite();
         this.§-!T§.y = AngryBirdsFP11.§]!m§ / 2;
         this.§=#§ = AngryBirdsFP11.§3!5§ / 2;
         this.§-!T§.x = this.§=#§;
         this.§3!^§.mClip.addChild(this.§-!T§);
         this.§ !v§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§?p§())
         {
            _loc3_ = LevelManager.§'J§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§<0§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§<0§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§<0§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§ !V§();
      }
      
      private function § !V§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§@!l§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§ try§.length)
         {
            _loc1_ = §`!t§.§=J§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§do§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§3!5§ / 2 + _loc3_ - this.§ try§.length * _loc2_.width / 2;
            _loc2_.y = (§&!m§.getItemByName("Button_Next") as §==§).y - _loc2_.height / 2;
            this.§3!^§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§@!l§[_loc2_] = _loc4_;
            this.§]!s§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§!Z§);
            _loc4_++;
         }
         _loc3_ = this.§ try§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§&!m§.getItemByName("Button_Next") as §==§).x = AngryBirdsFP11.§3!5§ / 2;
         (§&!m§.getItemByName("Button_Prev") as §==§).x = AngryBirdsFP11.§3!5§ / 2;
         (§&!m§.getItemByName("Button_Next") as §==§).x = (§&!m§.getItemByName("Button_Next") as §==§).x + (_loc3_ + 10);
         (§&!m§.getItemByName("Button_Prev") as §==§).x = (§&!m§.getItemByName("Button_Prev") as §==§).x - (_loc3_ + 10);
      }
      
      private function §<0§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§<!#§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§`!t§.§3!g§(param1))
         {
            _loc4_ = LevelManager.§'J§(param3);
            (_loc6_ = new (_loc5_ = §`!t§.§=J§(param1))()).x = param2;
            this.§-!T§.addChild(_loc6_);
            this.§ try§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§ !v§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§6!V§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§^P§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§&!^§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§@!9§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§0,§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§'!8§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §!Z§(param1:MouseEvent) : void
      {
         if(!this.§-!Z§)
         {
            this.§!!4§(this.§@!l§[param1.target]);
         }
      }
      
      private function §6!V§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§-!Z§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§do§ != this.§ !v§[_loc2_])
            {
               this.§!!4§(this.§ !v§[_loc2_]);
            }
            else if(this.§ !v§[_loc2_] < LevelManager.§?p§())
            {
               LevelManager.§>!$§ = this.§ !v§[_loc2_];
               mNextState = §!y§.§"!s§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§%!i§();
         this.§&!O§();
         if(mNextState.length > 0)
         {
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      private function §&!O§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ try§.length)
         {
            _loc2_ = this.§-!T§.x + this.§ try§[_loc1_].x - AngryBirdsFP11.§3!5§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§ try§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§ try§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§ try§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§ try§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §%!i§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!s§.length)
         {
            if(-this.§-!T§.x + 800 >= this.§ try§[_loc1_].x && -this.§-!y§ < this.§ try§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!s§.length)
               {
                  this.§]!s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§]!s§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§-!T§.x + 800 <= this.§ try§[_loc1_].x && -this.§-!y§ > this.§ try§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§]!s§.length)
               {
                  this.§]!s§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§]!s§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§-!y§ = this.§-!T§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §^!c§.§5!Y§.clearLevel();
         (§&!m§.getItemByName("Button_Back") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         switch(param2)
         {
            case "BACK":
               §9'§.playSound("Menu_Back");
               mNextState = §%!R§.§"!s§;
               break;
            case "PREV":
               §9'§.playSound("Menu_Confirm");
               if(!this.§-!Z§)
               {
                  --this.§do§;
                  this.§!!4§(this.§do§);
                  break;
               }
               break;
            case "NEXT":
               §9'§.playSound("Menu_Confirm");
               if(!this.§-!Z§)
               {
                  ++this.§do§;
                  this.§!!4§(this.§do§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §9'§.playSound("Menu_Confirm");
               AngryBirdsFP11.§3l§.§1T§();
         }
      }
      
      private function §!!4§(param1:int) : void
      {
         this.§-!Z§ = true;
         if(param1 > this.§ try§.length - 1)
         {
            param1 = this.§ try§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§do§ = param1;
         var _loc2_:Number = -this.§ try§[param1].x + this.§=#§;
         var _loc3_:Number = this.§-!T§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §"!m§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§'!D§ != null)
         {
            this.§'!D§.stop();
         }
         this.§'!D§ = §-!,§.§7!j§.§,!`§(this.§-!T§,{"x":_loc2_},null,_loc4_,§-!,§.§&!8§);
         this.§'!D§.onComplete = this.§3!=§;
         this.§'!D§.play();
      }
      
      private function §3!=§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!s§.length)
         {
            if(_loc1_ == this.§do§)
            {
               this.§]!s§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§]!s§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§-!Z§ = false;
      }
   }
}
