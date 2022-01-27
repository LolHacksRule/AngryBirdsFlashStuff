package §>Y§
{
   import §"^§.§9=§;
   import §3!%§.§-k§;
   import §3!%§.§9i§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import §<!4§.§25§;
   import §=u§.§1r§;
   import §=u§.§>v§;
   import §?!=§.§<!>§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import com.rovio.assets.§@h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §=!F§ extends §<!>§
   {
      
      public static const §4!C§:String = "ChapterSelectionState";
      
      private static const §2! §:Number = 0.5;
       
      
      private var §2!=§:Sprite;
      
      private var §[d§:§>v§;
      
      private var §=>§:Array;
      
      private var §2'§:Array;
      
      private var §+7§:int = 0;
      
      private var §"!N§:Number = 0;
      
      private var §<s§:Number = 0;
      
      private var §!!F§:Dictionary;
      
      private var §"z§:Dictionary;
      
      private var §#e§:§6q§ = null;
      
      private var §'F§:Boolean = false;
      
      private var §]!<§:Number = 0;
      
      public function §=!F§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_ChapterSelection[0]);
         this.§-!6§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§9i§ = null;
         super.activate();
         §9=§.§<!@§.§2k§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=>§)
         {
            _loc3_ = §-k§.§^4§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§3!?§.§^u§(_loc3_) + "/" + AngryBirdsFP11.§3!?§.§#w§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§3!?§.§9I§(_loc3_) + "/" + AngryBirdsFP11.§3!?§.§2X§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§3!?§.§-8§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §-!6§() : void
      {
         var _loc3_:§9i§ = null;
         var _loc4_:String = null;
         this.§[d§ = §3g§.getItemByName("Container_ChapterSelection") as §>v§;
         this.§=>§ = [];
         this.§2'§ = [];
         var _loc1_:Number = 0;
         this.§2!=§ = new Sprite();
         this.§2!=§.y = AngryBirdsFP11.§,§ / 2;
         this.§"!N§ = AngryBirdsFP11.§4!D§ / 2;
         this.§2!=§.x = this.§"!N§;
         this.§[d§.mClip.addChild(this.§2!=§);
         this.§"z§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §-k§.§;F§())
         {
            _loc3_ = §-k§.§^4§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§3!'§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§3!'§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§3!'§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§5r§();
      }
      
      private function §5r§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§!!F§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§=>§.length)
         {
            _loc1_ = §@h§.§[@§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§+7§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§4!D§ / 2 + _loc3_ - this.§=>§.length * _loc2_.width / 2;
            _loc2_.y = (§3g§.getItemByName("Button_Next") as §1r§).y - _loc2_.height / 2;
            this.§[d§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§!!F§[_loc2_] = _loc4_;
            this.§2'§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4;§);
            _loc4_++;
         }
         _loc3_ = this.§=>§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§3g§.getItemByName("Button_Next") as §1r§).x = AngryBirdsFP11.§4!D§ / 2;
         (§3g§.getItemByName("Button_Prev") as §1r§).x = AngryBirdsFP11.§4!D§ / 2;
         (§3g§.getItemByName("Button_Next") as §1r§).x = (§3g§.getItemByName("Button_Next") as §1r§).x + (_loc3_ + 10);
         (§3g§.getItemByName("Button_Prev") as §1r§).x = (§3g§.getItemByName("Button_Prev") as §1r§).x - (_loc3_ + 10);
      }
      
      private function §3!'§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§9i§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§@h§.§;+§(param1))
         {
            _loc4_ = §-k§.§^4§(param3);
            (_loc6_ = new (_loc5_ = §@h§.§[@§(param1))()).x = param2;
            this.§2!=§.addChild(_loc6_);
            this.§=>§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§"z§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§6F§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§3!?§.§9I§(_loc4_) + "/" + AngryBirdsFP11.§3!?§.§2X§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§3!?§.§-8§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§3!?§.§^u§(_loc4_) + "/" + AngryBirdsFP11.§3!?§.§#w§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §4;§(param1:MouseEvent) : void
      {
         if(!this.§'F§)
         {
            this.§@a§(this.§!!F§[param1.target]);
         }
      }
      
      private function §6F§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§'F§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§+7§ != this.§"z§[_loc2_])
            {
               this.§@a§(this.§"z§[_loc2_]);
            }
            else if(this.§"z§[_loc2_] < §-k§.§;F§())
            {
               §-k§.§>-§ = this.§"z§[_loc2_];
               mNextState = §8!F§.§4!C§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§]§();
         this.§>!H§();
         if(mNextState.length > 0)
         {
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      private function §>!H§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=>§.length)
         {
            _loc2_ = this.§2!=§.x + this.§=>§[_loc1_].x - AngryBirdsFP11.§4!D§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§=>§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§=>§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§=>§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§=>§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §]§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2'§.length)
         {
            if(-this.§2!=§.x + 800 >= this.§=>§[_loc1_].x && -this.§]!<§ < this.§=>§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2'§.length)
               {
                  this.§2'§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2'§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§2!=§.x + 800 <= this.§=>§[_loc1_].x && -this.§]!<§ > this.§=>§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2'§.length)
               {
                  this.§2'§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2'§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§]!<§ = this.§2!=§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §9=§.§<!@§.clearLevel();
         (§3g§.getItemByName("Button_Back") as §1r§).setComponentVisualState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         switch(param2)
         {
            case "BACK":
               §25§.playSound("Menu_Back");
               mNextState = §>8§.§4!C§;
               break;
            case "PREV":
               §25§.playSound("Menu_Confirm");
               if(!this.§'F§)
               {
                  --this.§+7§;
                  this.§@a§(this.§+7§);
                  break;
               }
               break;
            case "NEXT":
               §25§.playSound("Menu_Confirm");
               if(!this.§'F§)
               {
                  ++this.§+7§;
                  this.§@a§(this.§+7§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §25§.playSound("Menu_Confirm");
               AngryBirdsFP11.§ j§.§@[§();
         }
      }
      
      private function §@a§(param1:int) : void
      {
         this.§'F§ = true;
         if(param1 > this.§=>§.length - 1)
         {
            param1 = this.§=>§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§+7§ = param1;
         var _loc2_:Number = -this.§=>§[param1].x + this.§"!N§;
         var _loc3_:Number = this.§2!=§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §2! §) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§#e§ != null)
         {
            this.§#e§.stop();
         }
         this.§#e§ = §[!-§.§ set§.§6B§(this.§2!=§,{"x":_loc2_},null,_loc4_,§[!-§.§>X§);
         this.§#e§.onComplete = this.§%!<§;
         this.§#e§.play();
      }
      
      private function §%!<§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2'§.length)
         {
            if(_loc1_ == this.§+7§)
            {
               this.§2'§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§2'§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§'F§ = false;
      }
   }
}
