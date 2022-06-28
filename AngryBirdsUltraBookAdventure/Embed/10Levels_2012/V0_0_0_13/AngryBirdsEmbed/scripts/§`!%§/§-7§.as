package §`!%§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§]P§;
   import §=^§.§`f§;
   import §>!C§.§6M§;
   import §>!C§.§^h§;
   import §?!?§.§3!E§;
   import §@s§.§'!0§;
   import §@s§.§9$§;
   import com.rovio.assets.§,u§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §-7§ extends §9[§
   {
      
      public static const §0!7§:String = "ChapterSelectionState";
      
      private static const §7,§:Number = 0.5;
       
      
      private var §>6§:Sprite;
      
      private var §#$§:§`f§;
      
      private var §>i§:Array;
      
      private var §^p§:Array;
      
      private var §%,§:int = 0;
      
      private var §6%§:Number = 0;
      
      private var §5p§:Number = 0;
      
      private var §;Q§:Dictionary;
      
      private var §+!#§:Dictionary;
      
      private var §2%§:§ !5§ = null;
      
      private var §&_§:Boolean = false;
      
      private var §@W§:Number = 0;
      
      public function §-7§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#!4§ = new §!!1§(this);
         §#!4§.init(§0!&§.§'^§.Views.View_ChapterSelection[0]);
         this.§>S§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§^h§ = null;
         super.activate();
         §,!!§.§;4§.§69§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§>i§)
         {
            _loc3_ = §6M§.§6[§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§9&§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§0,§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§;!#§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§3!7§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§4D§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §>S§() : void
      {
         var _loc3_:§^h§ = null;
         var _loc4_:String = null;
         this.§#$§ = §#!4§.getItemByName("Container_ChapterSelection") as §`f§;
         this.§>i§ = [];
         this.§^p§ = [];
         var _loc1_:Number = 0;
         this.§>6§ = new Sprite();
         this.§>6§.y = AngryBirdsFP11.screenHeight / 2;
         this.§6%§ = AngryBirdsFP11.screenWidth / 2;
         this.§>6§.x = this.§6%§;
         this.§#$§.mClip.addChild(this.§>6§);
         this.§+!#§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §6M§.§!!>§())
         {
            _loc3_ = §6M§.§6[§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§[b§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§[b§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§[b§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§2-§();
      }
      
      private function §2-§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§;Q§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§>i§.length)
         {
            _loc1_ = §,u§.§'[§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§%,§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§>i§.length * _loc2_.width / 2;
            _loc2_.y = (§#!4§.getItemByName("Button_Next") as §]P§).y - _loc2_.height / 2;
            this.§#$§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§;Q§[_loc2_] = _loc4_;
            this.§^p§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7!6§);
            _loc4_++;
         }
         _loc3_ = this.§>i§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§#!4§.getItemByName("Button_Next") as §]P§).x = AngryBirdsFP11.screenWidth / 2;
         (§#!4§.getItemByName("Button_Prev") as §]P§).x = AngryBirdsFP11.screenWidth / 2;
         (§#!4§.getItemByName("Button_Next") as §]P§).x = (§#!4§.getItemByName("Button_Next") as §]P§).x + (_loc3_ + 10);
         (§#!4§.getItemByName("Button_Prev") as §]P§).x = (§#!4§.getItemByName("Button_Prev") as §]P§).x - (_loc3_ + 10);
      }
      
      private function §[b§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§^h§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§,u§.§?0§(param1))
         {
            _loc4_ = §6M§.§6[§(param3);
            (_loc6_ = new (_loc5_ = §,u§.§'[§(param1))()).x = param2;
            this.§>6§.addChild(_loc6_);
            this.§>i§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§+!#§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§3x§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§;!#§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§3!7§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§4D§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§9&§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§0,§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §7!6§(param1:MouseEvent) : void
      {
         if(!this.§&_§)
         {
            this.§3[§(this.§;Q§[param1.target]);
         }
      }
      
      private function §3x§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§&_§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§%,§ != this.§+!#§[_loc2_])
            {
               this.§3[§(this.§+!#§[_loc2_]);
            }
            else if(this.§+!#§[_loc2_] < §6M§.§!!>§())
            {
               §6M§.§'0§ = this.§+!#§[_loc2_];
               mNextState = §!,§.§0!7§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,;§();
         this.§[!H§();
         if(mNextState.length > 0)
         {
            return §9[§.STATE_STATUS_COMPLETED;
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
      
      private function §[!H§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>i§.length)
         {
            _loc2_ = this.§>6§.x + this.§>i§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§>i§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§>i§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§>i§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§>i§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §,;§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^p§.length)
         {
            if(-this.§>6§.x + 800 >= this.§>i§[_loc1_].x && -this.§@W§ < this.§>i§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§^p§.length)
               {
                  this.§^p§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§^p§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§>6§.x + 800 <= this.§>i§[_loc1_].x && -this.§@W§ > this.§>i§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§^p§.length)
               {
                  this.§^p§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§^p§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§@W§ = this.§>6§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §,!!§.§;4§.clearLevel();
         (§#!4§.getItemByName("Button_Back") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         switch(param2)
         {
            case "BACK":
               §3!E§.§<!,§("Menu_Back");
               mNextState = §9!@§.§0!7§;
               break;
            case "PREV":
               §3!E§.§<!,§("Menu_Confirm");
               if(!this.§&_§)
               {
                  --this.§%,§;
                  this.§3[§(this.§%,§);
                  break;
               }
               break;
            case "NEXT":
               §3!E§.§<!,§("Menu_Confirm");
               if(!this.§&_§)
               {
                  ++this.§%,§;
                  this.§3[§(this.§%,§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §3!E§.§<!,§("Menu_Confirm");
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
      
      private function §3[§(param1:int) : void
      {
         this.§&_§ = true;
         if(param1 > this.§>i§.length - 1)
         {
            param1 = this.§>i§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§%,§ = param1;
         var _loc2_:Number = -this.§>i§[param1].x + this.§6%§;
         var _loc3_:Number = this.§>6§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §7,§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§2%§ != null)
         {
            this.§2%§.stop();
         }
         this.§2%§ = §%!>§.§-]§.§?U§(this.§>6§,{"x":_loc2_},null,_loc4_,§%!>§.§4G§);
         this.§2%§.onComplete = this.§@!7§;
         this.§2%§.play();
      }
      
      private function §@!7§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§^p§.length)
         {
            if(_loc1_ == this.§%,§)
            {
               this.§^p§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§^p§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§&_§ = false;
      }
   }
}
