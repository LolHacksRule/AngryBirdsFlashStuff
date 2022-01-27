package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §1!-§.§2n§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §for § extends §1Q§
   {
      
      public static const §>9§:String = "ChapterSelectionState";
      
      private static const §<m§:Number = 0.5;
       
      
      private var §7!$§:Sprite;
      
      private var §4=§:§4!=§;
      
      private var §6!=§:Array;
      
      private var §'N§:Array;
      
      private var §%$§:int = 0;
      
      private var §]K§:Number = 0;
      
      private var §<!!§:Number = 0;
      
      private var §2!M§:Dictionary;
      
      private var §,!!§:Dictionary;
      
      private var §8!K§:§ !=§ = null;
      
      private var §9!5§:Boolean = false;
      
      private var §,!§:Number = 0;
      
      public function §for §(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_ChapterSelection[0]);
         this.§<P§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§2n§ = null;
         super.activate();
         §=w§.§ o§.§7!E§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§6!=§)
         {
            _loc3_ = §[4§.§2A§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§=Z§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§]P§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§8!,§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§-"§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§>U§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §<P§() : void
      {
         var _loc3_:§2n§ = null;
         var _loc4_:String = null;
         this.§4=§ = §]F§.getItemByName("Container_ChapterSelection") as §4!=§;
         this.§6!=§ = [];
         this.§'N§ = [];
         var _loc1_:Number = 0;
         this.§7!$§ = new Sprite();
         this.§7!$§.y = AngryBirdsFP11.screenHeight / 2;
         this.§]K§ = AngryBirdsFP11.screenWidth / 2;
         this.§7!$§.x = this.§]K§;
         this.§4=§.mClip.addChild(this.§7!$§);
         this.§,!!§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §[4§.§99§())
         {
            _loc3_ = §[4§.§2A§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§!m§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§!m§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§!m§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§,P§();
      }
      
      private function §,P§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§2!M§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§6!=§.length)
         {
            _loc1_ = §]!>§.§8!@§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§%$§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§6!=§.length * _loc2_.width / 2;
            _loc2_.y = (§]F§.getItemByName("Button_Next") as §7-§).y - _loc2_.height / 2;
            this.§4=§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§2!M§[_loc2_] = _loc4_;
            this.§'N§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§80§);
            _loc4_++;
         }
         _loc3_ = this.§6!=§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§]F§.getItemByName("Button_Next") as §7-§).x = AngryBirdsFP11.screenWidth / 2;
         (§]F§.getItemByName("Button_Prev") as §7-§).x = AngryBirdsFP11.screenWidth / 2;
         (§]F§.getItemByName("Button_Next") as §7-§).x = (§]F§.getItemByName("Button_Next") as §7-§).x + (_loc3_ + 10);
         (§]F§.getItemByName("Button_Prev") as §7-§).x = (§]F§.getItemByName("Button_Prev") as §7-§).x - (_loc3_ + 10);
      }
      
      private function §!m§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§2n§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§]!>§.§ in§(param1))
         {
            _loc4_ = §[4§.§2A§(param3);
            (_loc6_ = new (_loc5_ = §]!>§.§8!@§(param1))()).x = param2;
            this.§7!$§.addChild(_loc6_);
            this.§6!=§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§,!!§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§'B§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§8!,§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§-"§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§>U§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§=Z§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§]P§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §80§(param1:MouseEvent) : void
      {
         if(!this.§9!5§)
         {
            this.§1c§(this.§2!M§[param1.target]);
         }
      }
      
      private function §'B§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§9!5§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§%$§ != this.§,!!§[_loc2_])
            {
               this.§1c§(this.§,!!§[_loc2_]);
            }
            else if(this.§,!!§[_loc2_] < §[4§.§99§())
            {
               §[4§.§ m§ = this.§,!!§[_loc2_];
               mNextState = §6!@§.§>9§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-U§();
         this.§ !E§();
         if(mNextState.length > 0)
         {
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      private function § !E§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!=§.length)
         {
            _loc2_ = this.§7!$§.x + this.§6!=§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§6!=§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§6!=§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§6!=§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§6!=§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §-U§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'N§.length)
         {
            if(-this.§7!$§.x + 800 >= this.§6!=§[_loc1_].x && -this.§,!§ < this.§6!=§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'N§.length)
               {
                  this.§'N§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'N§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§7!$§.x + 800 <= this.§6!=§[_loc1_].x && -this.§,!§ > this.§6!=§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'N§.length)
               {
                  this.§'N§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'N§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§,!§ = this.§7!$§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §=w§.§ o§.clearLevel();
         (§]F§.getItemByName("Button_Back") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         switch(param2)
         {
            case "BACK":
               §,!F§.§;v§("Menu_Back");
               mNextState = §5!#§.§>9§;
               break;
            case "PREV":
               §,!F§.§;v§("Menu_Confirm");
               if(!this.§9!5§)
               {
                  --this.§%$§;
                  this.§1c§(this.§%$§);
                  break;
               }
               break;
            case "NEXT":
               §,!F§.§;v§("Menu_Confirm");
               if(!this.§9!5§)
               {
                  ++this.§%$§;
                  this.§1c§(this.§%$§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §,!F§.§;v§("Menu_Confirm");
               AngryBirdsFP11.§ y§.§-!$§();
         }
      }
      
      private function §1c§(param1:int) : void
      {
         this.§9!5§ = true;
         if(param1 > this.§6!=§.length - 1)
         {
            param1 = this.§6!=§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§%$§ = param1;
         var _loc2_:Number = -this.§6!=§[param1].x + this.§]K§;
         var _loc3_:Number = this.§7!$§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §<m§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§8!K§ != null)
         {
            this.§8!K§.stop();
         }
         this.§8!K§ = §@7§.§@6§.§3!%§(this.§7!$§,{"x":_loc2_},null,_loc4_,§@7§.§[^§);
         this.§8!K§.onComplete = this.§]I§;
         this.§8!K§.play();
      }
      
      private function §]I§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'N§.length)
         {
            if(_loc1_ == this.§%$§)
            {
               this.§'N§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§'N§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§9!5§ = false;
      }
   }
}
