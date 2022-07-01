package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §-!0§.§4!N§;
   import §1?§.§+!§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §9!h§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const §%!V§:Number = 0.5;
       
      
      private var §`!S§:Sprite;
      
      private var §+Q§:§[!s§;
      
      private var §%q§:Array;
      
      private var §<!^§:Array;
      
      private var §9!Q§:int = 0;
      
      private var §5!M§:Number = 0;
      
      private var §,!P§:Number = 0;
      
      private var §"!A§:Dictionary;
      
      private var §5!Q§:Dictionary;
      
      private var §7!Z§:§0Y§ = null;
      
      private var §=!D§:Boolean = false;
      
      private var §"!'§:Number = 0;
      
      public function §9!h§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_ChapterSelection[0]);
         this.§9;§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§4!N§ = null;
         super.activate();
         §'!V§.§1!2§.§-I§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%q§)
         {
            _loc3_ = §1^§.§?!0§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]!-§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§<3§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§!k§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§null §(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§,!6§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §9;§() : void
      {
         var _loc3_:§4!N§ = null;
         var _loc4_:String = null;
         this.§+Q§ = §+!$§.getItemByName("Container_ChapterSelection") as §[!s§;
         this.§%q§ = [];
         this.§<!^§ = [];
         var _loc1_:Number = 0;
         this.§`!S§ = new Sprite();
         this.§`!S§.y = AngryBirdsFP11.screenHeight / 2;
         this.§5!M§ = AngryBirdsFP11.screenWidth / 2;
         this.§`!S§.x = this.§5!M§;
         this.§+Q§.mClip.addChild(this.§`!S§);
         this.§5!Q§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §1^§.§9!d§())
         {
            _loc3_ = §1^§.§?!0§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§0!f§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§0!f§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§0!f§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§;!?§();
      }
      
      private function §;!?§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§"!A§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§%q§.length)
         {
            _loc1_ = §1F§.§"!_§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§9!Q§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§%q§.length * _loc2_.width / 2;
            _loc2_.y = (§+!$§.getItemByName("Button_Next") as §#!'§).y - _loc2_.height / 2;
            this.§+Q§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§"!A§[_loc2_] = _loc4_;
            this.§<!^§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
            _loc4_++;
         }
         _loc3_ = this.§%q§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§+!$§.getItemByName("Button_Next") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
         (§+!$§.getItemByName("Button_Prev") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
         (§+!$§.getItemByName("Button_Next") as §#!'§).x = (§+!$§.getItemByName("Button_Next") as §#!'§).x + (_loc3_ + 10);
         (§+!$§.getItemByName("Button_Prev") as §#!'§).x = (§+!$§.getItemByName("Button_Prev") as §#!'§).x - (_loc3_ + 10);
      }
      
      private function §0!f§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§4!N§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§1F§.§"!6§(param1))
         {
            _loc4_ = §1^§.§?!0§(param3);
            (_loc6_ = new (_loc5_ = §1F§.§"!_§(param1))()).x = param2;
            this.§`!S§.addChild(_loc6_);
            this.§%q§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§5!Q§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§9!&§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§!k§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§null §(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§,!6§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]!-§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§<3§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §3!M§(param1:MouseEvent) : void
      {
         if(!this.§=!D§)
         {
            this.§<M§(this.§"!A§[param1.target]);
         }
      }
      
      private function §9!&§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§=!D§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§9!Q§ != this.§5!Q§[_loc2_])
            {
               this.§<M§(this.§5!Q§[_loc2_]);
            }
            else if(this.§5!Q§[_loc2_] < §1^§.§9!d§())
            {
               §1^§.§<J§ = this.§5!Q§[_loc2_];
               mNextState = §?&§.STATE_NAME;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§7!>§();
         this.§>u§();
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      private function §>u§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%q§.length)
         {
            _loc2_ = this.§`!S§.x + this.§%q§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§%q§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§%q§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§%q§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§%q§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §7!>§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!^§.length)
         {
            if(-this.§`!S§.x + 800 >= this.§%q§[_loc1_].x && -this.§"!'§ < this.§%q§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§<!^§.length)
               {
                  this.§<!^§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<!^§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§`!S§.x + 800 <= this.§%q§[_loc1_].x && -this.§"!'§ > this.§%q§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§<!^§.length)
               {
                  this.§<!^§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§<!^§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§"!'§ = this.§`!S§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §'!V§.§1!2§.clearLevel();
         (§+!$§.getItemByName("Button_Back") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "BACK":
               §+!§.§4c§("Menu_Back");
               mNextState = §#!@§.STATE_NAME;
               break;
            case "PREV":
               §+!§.§4c§("Menu_Confirm");
               if(!this.§=!D§)
               {
                  --this.§9!Q§;
                  this.§<M§(this.§9!Q§);
                  break;
               }
               break;
            case "NEXT":
               §+!§.§4c§("Menu_Confirm");
               if(!this.§=!D§)
               {
                  ++this.§9!Q§;
                  this.§<M§(this.§9!Q§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §+!§.§4c§("Menu_Confirm");
               AngryBirdsFP11.§`!d§.§!5§();
         }
      }
      
      private function §<M§(param1:int) : void
      {
         this.§=!D§ = true;
         if(param1 > this.§%q§.length - 1)
         {
            param1 = this.§%q§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§9!Q§ = param1;
         var _loc2_:Number = -this.§%q§[param1].x + this.§5!M§;
         var _loc3_:Number = this.§`!S§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §%!V§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§7!Z§ != null)
         {
            this.§7!Z§.stop();
         }
         this.§7!Z§ = §@!T§.§`!t§.§8!"§(this.§`!S§,{"x":_loc2_},null,_loc4_,§@!T§.§2,§);
         this.§7!Z§.onComplete = this.§1q§;
         this.§7!Z§.play();
      }
      
      private function §1q§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!^§.length)
         {
            if(_loc1_ == this.§9!Q§)
            {
               this.§<!^§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§<!^§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§=!D§ = false;
      }
   }
}
