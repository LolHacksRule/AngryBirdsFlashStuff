package §-P§
{
   import §!D§.§ use§;
   import §!D§.§3!6§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §'!O§.§=!w§;
   import §'!O§.§[!m§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9!7§.§6"0§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   import com.rovio.assets.§%"4§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §<!4§ extends §4E§
   {
      
      public static const §#!w§:String = "ChapterSelectionState";
      
      private static const §2p§:Number = 0.5;
       
      
      private var §<!M§:Sprite;
      
      private var §!!p§:§ use§;
      
      private var §#!m§:Array;
      
      private var §@Z§:Array;
      
      private var §&"4§:int = 0;
      
      private var §[!?§:Number = 0;
      
      private var §&W§:Number = 0;
      
      private var §66§:Dictionary;
      
      private var §8b§:Dictionary;
      
      private var §2!A§:§;!5§ = null;
      
      private var §8!A§:Boolean = false;
      
      private var §7!C§:Number = 0;
      
      public function §<!4§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_ChapterSelection[0]);
         this.§2!F§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§=!w§ = null;
         super.activate();
         §8!0§.§?2§.§<;§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#!m§)
         {
            _loc3_ = §[!m§.§3!n§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§8!v§.§%! §(_loc3_) + "/" + AngryBirdsFP11.§8!v§.§1!V§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§8!v§.§!!W§(_loc3_) + "/" + AngryBirdsFP11.§8!v§.§<M§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§8!v§.§#!&§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §2!F§() : void
      {
         var _loc3_:§=!w§ = null;
         var _loc4_:String = null;
         this.§!!p§ = §1!j§.getItemByName("Container_ChapterSelection") as § use§;
         this.§#!m§ = [];
         this.§@Z§ = [];
         var _loc1_:Number = 0;
         this.§<!M§ = new Sprite();
         this.§<!M§.y = AngryBirdsFP11.§7!;§ / 2;
         this.§[!?§ = AngryBirdsFP11.§'A§ / 2;
         this.§<!M§.x = this.§[!?§;
         this.§!!p§.mClip.addChild(this.§<!M§);
         this.§8b§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §[!m§.§ !l§())
         {
            _loc3_ = §[!m§.§3!n§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§4"2§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§4"2§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§4"2§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§<!^§();
      }
      
      private function §<!^§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§66§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§#!m§.length)
         {
            _loc1_ = §%"4§.§>!v§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§&"4§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§'A§ / 2 + _loc3_ - this.§#!m§.length * _loc2_.width / 2;
            _loc2_.y = (§1!j§.getItemByName("Button_Next") as §3!6§).y - _loc2_.height / 2;
            this.§!!p§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§66§[_loc2_] = _loc4_;
            this.§@Z§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§=" §);
            _loc4_++;
         }
         _loc3_ = this.§#!m§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§1!j§.getItemByName("Button_Next") as §3!6§).x = AngryBirdsFP11.§'A§ / 2;
         (§1!j§.getItemByName("Button_Prev") as §3!6§).x = AngryBirdsFP11.§'A§ / 2;
         (§1!j§.getItemByName("Button_Next") as §3!6§).x = (§1!j§.getItemByName("Button_Next") as §3!6§).x + (_loc3_ + 10);
         (§1!j§.getItemByName("Button_Prev") as §3!6§).x = (§1!j§.getItemByName("Button_Prev") as §3!6§).x - (_loc3_ + 10);
      }
      
      private function §4"2§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§=!w§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§%"4§.§=!;§(param1))
         {
            _loc4_ = §[!m§.§3!n§(param3);
            (_loc6_ = new (_loc5_ = §%"4§.§>!v§(param1))()).x = param2;
            this.§<!M§.addChild(_loc6_);
            this.§#!m§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§8b§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§0u§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§8!v§.§!!W§(_loc4_) + "/" + AngryBirdsFP11.§8!v§.§<M§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§8!v§.§#!&§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§8!v§.§%! §(_loc4_) + "/" + AngryBirdsFP11.§8!v§.§1!V§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §=" §(param1:MouseEvent) : void
      {
         if(!this.§8!A§)
         {
            this.§'!j§(this.§66§[param1.target]);
         }
      }
      
      private function §0u§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§8!A§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§&"4§ != this.§8b§[_loc2_])
            {
               this.§'!j§(this.§8b§[_loc2_]);
            }
            else if(this.§8b§[_loc2_] < §[!m§.§ !l§())
            {
               §[!m§.§0`§ = this.§8b§[_loc2_];
               mNextState = §1f§.§#!w§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§@!3§();
         this.§="5§();
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      private function §="5§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!m§.length)
         {
            _loc2_ = this.§<!M§.x + this.§#!m§[_loc1_].x - AngryBirdsFP11.§'A§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§#!m§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§#!m§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§#!m§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§#!m§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §@!3§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@Z§.length)
         {
            if(-this.§<!M§.x + 800 >= this.§#!m§[_loc1_].x && -this.§7!C§ < this.§#!m§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§@Z§.length)
               {
                  this.§@Z§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§@Z§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§<!M§.x + 800 <= this.§#!m§[_loc1_].x && -this.§7!C§ > this.§#!m§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§@Z§.length)
               {
                  this.§@Z§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§@Z§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§7!C§ = this.§<!M§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §8!0§.§?2§.clearLevel();
         (§1!j§.getItemByName("Button_Back") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "BACK":
               §?!7§.playSound("Menu_Back");
               mNextState = §3" §.§#!w§;
               break;
            case "PREV":
               §?!7§.playSound("Menu_Confirm");
               if(!this.§8!A§)
               {
                  --this.§&"4§;
                  this.§'!j§(this.§&"4§);
                  break;
               }
               break;
            case "NEXT":
               §?!7§.playSound("Menu_Confirm");
               if(!this.§8!A§)
               {
                  ++this.§&"4§;
                  this.§'!j§(this.§&"4§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §?!7§.playSound("Menu_Confirm");
               AngryBirdsFP11.§"!U§.§2!Z§();
         }
      }
      
      private function §'!j§(param1:int) : void
      {
         this.§8!A§ = true;
         if(param1 > this.§#!m§.length - 1)
         {
            param1 = this.§#!m§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§&"4§ = param1;
         var _loc2_:Number = -this.§#!m§[param1].x + this.§[!?§;
         var _loc3_:Number = this.§<!M§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §2p§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§2!A§ != null)
         {
            this.§2!A§.stop();
         }
         this.§2!A§ = §"!5§.§9j§.§4!p§(this.§<!M§,{"x":_loc2_},null,_loc4_,§"!5§.§+!F§);
         this.§2!A§.onComplete = this.§"$§;
         this.§2!A§.play();
      }
      
      private function §"$§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§@Z§.length)
         {
            if(_loc1_ == this.§&"4§)
            {
               this.§@Z§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§@Z§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§8!A§ = false;
      }
   }
}
