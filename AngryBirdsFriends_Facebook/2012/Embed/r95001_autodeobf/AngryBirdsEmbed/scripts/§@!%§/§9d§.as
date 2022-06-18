package §@!%§
{
   import § "§.§1!9§;
   import § "§.§8!3§;
   import §0m§.§1!,§;
   import §0u§.§"`§;
   import §0u§.§&]§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §4-§.§%+§;
   import §4-§.§'J§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §]5§.§,G§;
   import §]5§.§1^§;
   import com.rovio.assets.§ 3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §9d§ extends §1!,§
   {
      
      public static const §5%§:String = "ChapterSelectionState";
      
      private static const §0o§:Number = 0.5;
       
      
      private var §=0§:Sprite;
      
      private var §7H§:§'J§;
      
      private var §"!2§:Array;
      
      private var §?-§:Array;
      
      private var §?k§:int = 0;
      
      private var §-2§:Number = 0;
      
      private var §74§:Number = 0;
      
      private var §%6§:Dictionary;
      
      private var §]U§:Dictionary;
      
      private var §;j§:§1^§ = null;
      
      private var §=!G§:Boolean = false;
      
      private var §8y§:Number = 0;
      
      public function §9d§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_ChapterSelection[0]);
         this.§4!4§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§1!9§ = null;
         super.activate();
         §#!4§.§^Y§.§<[§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§"!2§)
         {
            _loc3_ = §8!3§.§`!5§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§[m§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§>q§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§1"§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§[!$§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8]§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §4!4§() : void
      {
         var _loc3_:§1!9§ = null;
         var _loc4_:String = null;
         this.§7H§ = §`k§.getItemByName("Container_ChapterSelection") as §'J§;
         this.§"!2§ = [];
         this.§?-§ = [];
         var _loc1_:Number = 0;
         this.§=0§ = new Sprite();
         this.§=0§.y = AngryBirdsFP11.screenHeight / 2;
         this.§-2§ = AngryBirdsFP11.screenWidth / 2;
         this.§=0§.x = this.§-2§;
         this.§7H§.mClip.addChild(this.§=0§);
         this.§]U§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §8!3§.§7!5§())
         {
            _loc3_ = §8!3§.§`!5§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§"1§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§"1§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§"1§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§`_§();
      }
      
      private function §`_§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§%6§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§"!2§.length)
         {
            _loc1_ = § 3§.§+i§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§?k§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§"!2§.length * _loc2_.width / 2;
            _loc2_.y = (§`k§.getItemByName("Button_Next") as §%+§).y - _loc2_.height / 2;
            this.§7H§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§%6§[_loc2_] = _loc4_;
            this.§?-§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§!=§);
            _loc4_++;
         }
         _loc3_ = this.§"!2§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§`k§.getItemByName("Button_Next") as §%+§).x = AngryBirdsFP11.screenWidth / 2;
         (§`k§.getItemByName("Button_Prev") as §%+§).x = AngryBirdsFP11.screenWidth / 2;
         (§`k§.getItemByName("Button_Next") as §%+§).x = (§`k§.getItemByName("Button_Next") as §%+§).x + (_loc3_ + 10);
         (§`k§.getItemByName("Button_Prev") as §%+§).x = (§`k§.getItemByName("Button_Prev") as §%+§).x - (_loc3_ + 10);
      }
      
      private function §"1§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§1!9§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§ 3§.§=V§(param1))
         {
            _loc4_ = §8!3§.§`!5§(param3);
            (_loc6_ = new (_loc5_ = § 3§.§+i§(param1))()).x = param2;
            this.§=0§.addChild(_loc6_);
            this.§"!2§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§]U§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§;1§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§1"§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§[!$§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8]§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§[m§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§>q§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §!=§(param1:MouseEvent) : void
      {
         if(!this.§=!G§)
         {
            this.§8z§(this.§%6§[param1.target]);
         }
      }
      
      private function §;1§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§=!G§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§?k§ != this.§]U§[_loc2_])
            {
               this.§8z§(this.§]U§[_loc2_]);
            }
            else if(this.§]U§[_loc2_] < §8!3§.§7!5§())
            {
               §8!3§.§0! § = this.§]U§[_loc2_];
               mNextState = §]V§.§5%§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§^p§();
         this.§7!>§();
         if(mNextState.length > 0)
         {
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      private function §7!>§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!2§.length)
         {
            _loc2_ = this.§=0§.x + this.§"!2§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§"!2§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§"!2§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§"!2§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§"!2§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §^p§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?-§.length)
         {
            if(-this.§=0§.x + 800 >= this.§"!2§[_loc1_].x && -this.§8y§ < this.§"!2§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§?-§.length)
               {
                  this.§?-§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§?-§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§=0§.x + 800 <= this.§"!2§[_loc1_].x && -this.§8y§ > this.§"!2§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§?-§.length)
               {
                  this.§?-§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§?-§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§8y§ = this.§=0§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §#!4§.§^Y§.clearLevel();
         (§`k§.getItemByName("Button_Back") as §%+§).setComponentVisualState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "BACK":
               §7_§.§4!5§("Menu_Back");
               mNextState = §4P§.§5%§;
               break;
            case "PREV":
               §7_§.§4!5§("Menu_Confirm");
               if(!this.§=!G§)
               {
                  --this.§?k§;
                  this.§8z§(this.§?k§);
                  break;
               }
               break;
            case "NEXT":
               §7_§.§4!5§("Menu_Confirm");
               if(!this.§=!G§)
               {
                  ++this.§?k§;
                  this.§8z§(this.§?k§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §7_§.§4!5§("Menu_Confirm");
               AngryBirdsFP11.§?,§.§do§();
         }
      }
      
      private function §8z§(param1:int) : void
      {
         this.§=!G§ = true;
         if(param1 > this.§"!2§.length - 1)
         {
            param1 = this.§"!2§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§?k§ = param1;
         var _loc2_:Number = -this.§"!2§[param1].x + this.§-2§;
         var _loc3_:Number = this.§=0§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §0o§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§;j§ != null)
         {
            this.§;j§.stop();
         }
         this.§;j§ = §,G§.§+S§.§1u§(this.§=0§,{"x":_loc2_},null,_loc4_,§,G§.§ each§);
         this.§;j§.onComplete = this.§[k§;
         this.§;j§.play();
      }
      
      private function §[k§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§?-§.length)
         {
            if(_loc1_ == this.§?k§)
            {
               this.§?-§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§?-§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§=!G§ = false;
      }
   }
}
