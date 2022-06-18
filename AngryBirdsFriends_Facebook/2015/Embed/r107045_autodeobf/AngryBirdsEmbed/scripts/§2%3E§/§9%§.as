package §2>§
{
   import §%q§.§'!A§;
   import §%q§.§9;§;
   import §'0§.§]!2§;
   import §2T§.§&M§;
   import §2T§.§2H§;
   import §6Z§.§ in§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §7J§.§=U§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import com.rovio.assets.§5R§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §9%§ extends §9Y§
   {
      
      public static const §]! §:String = "ChapterSelectionState";
      
      private static const §90§:Number = 0.5;
       
      
      private var § @§:Sprite;
      
      private var §4L§:§&M§;
      
      private var §6E§:Array;
      
      private var §0!,§:Array;
      
      private var §>!2§:int = 0;
      
      private var §;"§:Number = 0;
      
      private var §&!&§:Number = 0;
      
      private var §2!H§:Dictionary;
      
      private var §5K§:Dictionary;
      
      private var §2!%§:§9;§ = null;
      
      private var §7!>§:Boolean = false;
      
      private var §"4§:Number = 0;
      
      public function §9%§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_ChapterSelection[0]);
         this.§[!O§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§ in§ = null;
         super.activate();
         §[!4§.§continue§.§3!;§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§6E§)
         {
            _loc3_ = §'?§.§-7§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§`q§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§-6§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§&!>§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§8!7§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§`^§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §[!O§() : void
      {
         var _loc3_:§ in§ = null;
         var _loc4_:String = null;
         this.§4L§ = §!s§.getItemByName("Container_ChapterSelection") as §&M§;
         this.§6E§ = [];
         this.§0!,§ = [];
         var _loc1_:Number = 0;
         this.§ @§ = new Sprite();
         this.§ @§.y = AngryBirdsFP11.screenHeight / 2;
         this.§;"§ = AngryBirdsFP11.screenWidth / 2;
         this.§ @§.x = this.§;"§;
         this.§4L§.mClip.addChild(this.§ @§);
         this.§5K§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §'?§.§4S§())
         {
            _loc3_ = §'?§.§-7§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§]!>§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§]!>§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§]!>§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§^!+§();
      }
      
      private function §^!+§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§2!H§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§6E§.length)
         {
            _loc1_ = §5R§.§6+§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§>!2§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§6E§.length * _loc2_.width / 2;
            _loc2_.y = (§!s§.getItemByName("Button_Next") as §2H§).y - _loc2_.height / 2;
            this.§4L§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§2!H§[_loc2_] = _loc4_;
            this.§0!,§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§use§);
            _loc4_++;
         }
         _loc3_ = this.§6E§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§!s§.getItemByName("Button_Next") as §2H§).x = AngryBirdsFP11.screenWidth / 2;
         (§!s§.getItemByName("Button_Prev") as §2H§).x = AngryBirdsFP11.screenWidth / 2;
         (§!s§.getItemByName("Button_Next") as §2H§).x = (§!s§.getItemByName("Button_Next") as §2H§).x + (_loc3_ + 10);
         (§!s§.getItemByName("Button_Prev") as §2H§).x = (§!s§.getItemByName("Button_Prev") as §2H§).x - (_loc3_ + 10);
      }
      
      private function §]!>§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§ in§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§5R§.§ g§(param1))
         {
            _loc4_ = §'?§.§-7§(param3);
            (_loc6_ = new (_loc5_ = §5R§.§6+§(param1))()).x = param2;
            this.§ @§.addChild(_loc6_);
            this.§6E§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§5K§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§0k§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§&!>§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§8!7§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§`^§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§`q§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§-6§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §use§(param1:MouseEvent) : void
      {
         if(!this.§7!>§)
         {
            this.§;!<§(this.§2!H§[param1.target]);
         }
      }
      
      private function §0k§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§7!>§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§>!2§ != this.§5K§[_loc2_])
            {
               this.§;!<§(this.§5K§[_loc2_]);
            }
            else if(this.§5K§[_loc2_] < §'?§.§4S§())
            {
               §'?§.§5!G§ = this.§5K§[_loc2_];
               mNextState = §0!O§.§]! §;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§8!<§();
         this.§+q§();
         if(mNextState.length > 0)
         {
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      private function §+q§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6E§.length)
         {
            _loc2_ = this.§ @§.x + this.§6E§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§6E§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§6E§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§6E§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§6E§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §8!<§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!,§.length)
         {
            if(-this.§ @§.x + 800 >= this.§6E§[_loc1_].x && -this.§"4§ < this.§6E§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0!,§.length)
               {
                  this.§0!,§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0!,§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§ @§.x + 800 <= this.§6E§[_loc1_].x && -this.§"4§ > this.§6E§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0!,§.length)
               {
                  this.§0!,§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0!,§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§"4§ = this.§ @§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[!4§.§continue§.clearLevel();
         (§!s§.getItemByName("Button_Back") as §2H§).setComponentVisualState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "BACK":
               §]!2§.playSound("Menu_Back");
               mNextState = §&!8§.§]! §;
               break;
            case "PREV":
               §]!2§.playSound("Menu_Confirm");
               if(!this.§7!>§)
               {
                  --this.§>!2§;
                  this.§;!<§(this.§>!2§);
                  break;
               }
               break;
            case "NEXT":
               §]!2§.playSound("Menu_Confirm");
               if(!this.§7!>§)
               {
                  ++this.§>!2§;
                  this.§;!<§(this.§>!2§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §]!2§.playSound("Menu_Confirm");
               AngryBirdsFP11.§6C§.§`d§();
         }
      }
      
      private function §;!<§(param1:int) : void
      {
         this.§7!>§ = true;
         if(param1 > this.§6E§.length - 1)
         {
            param1 = this.§6E§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§>!2§ = param1;
         var _loc2_:Number = -this.§6E§[param1].x + this.§;"§;
         var _loc3_:Number = this.§ @§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §90§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§2!%§ != null)
         {
            this.§2!%§.stop();
         }
         this.§2!%§ = §'!A§.§5+§.§;h§(this.§ @§,{"x":_loc2_},null,_loc4_,§'!A§.§=T§);
         this.§2!%§.onComplete = this.§-!@§;
         this.§2!%§.play();
      }
      
      private function §-!@§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!,§.length)
         {
            if(_loc1_ == this.§>!2§)
            {
               this.§0!,§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§0!,§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§7!>§ = false;
      }
   }
}
