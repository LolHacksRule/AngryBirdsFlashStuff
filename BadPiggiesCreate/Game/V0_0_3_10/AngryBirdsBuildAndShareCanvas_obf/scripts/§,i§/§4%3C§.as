package §,i§
{
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §7M§.§ !e§;
   import §7M§.§"?§;
   import §<8§.§"h§;
   import §<8§.§7!n§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import com.rovio.assets.§5!+§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §4<§ extends §0!K§
   {
      
      public static const §]"2§:String = "ChapterSelectionState";
      
      private static const §8!Y§:Number = 0.5;
       
      
      private var §!?§:Sprite;
      
      private var §++§:§7!a§;
      
      private var §;F§:Array;
      
      private var §6<§:Array;
      
      private var §-!V§:int = 0;
      
      private var §[O§:Number = 0;
      
      private var §;!>§:Number = 0;
      
      private var §=![§:Dictionary;
      
      private var §8=§:Dictionary;
      
      private var §=!@§:§^F§ = null;
      
      private var §%!N§:Boolean = false;
      
      private var §<!,§:Number = 0;
      
      public function §4<§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_ChapterSelection[0]);
         this.§15§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§ !e§ = null;
         super.activate();
         §"!V§.§!j§.§9!q§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;F§)
         {
            _loc3_ = §"?§.§3!X§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§<U§.§61§(_loc3_) + "/" + AngryBirdsFP11.§<U§.§2!t§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§<U§.§@!f§(_loc3_) + "/" + AngryBirdsFP11.§<U§.§-!s§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§<U§.§7=§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §15§() : void
      {
         var _loc3_:§ !e§ = null;
         var _loc4_:String = null;
         this.§++§ = §'K§.getItemByName("Container_ChapterSelection") as §7!a§;
         this.§;F§ = [];
         this.§6<§ = [];
         var _loc1_:Number = 0;
         this.§!?§ = new Sprite();
         this.§!?§.y = AngryBirdsFP11.§2!e§ / 2;
         this.§[O§ = AngryBirdsFP11.§#"8§ / 2;
         this.§!?§.x = this.§[O§;
         this.§++§.mClip.addChild(this.§!?§);
         this.§8=§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §"?§.§6!G§())
         {
            _loc3_ = §"?§.§3!X§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§#w§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§#w§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§#w§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§#W§();
      }
      
      private function §#W§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§=![§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§;F§.length)
         {
            _loc1_ = §5!+§.§,]§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§-!V§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§#"8§ / 2 + _loc3_ - this.§;F§.length * _loc2_.width / 2;
            _loc2_.y = (§'K§.getItemByName("Button_Next") as §8!r§).y - _loc2_.height / 2;
            this.§++§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§=![§[_loc2_] = _loc4_;
            this.§6<§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§"7§);
            _loc4_++;
         }
         _loc3_ = this.§;F§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§'K§.getItemByName("Button_Next") as §8!r§).x = AngryBirdsFP11.§#"8§ / 2;
         (§'K§.getItemByName("Button_Prev") as §8!r§).x = AngryBirdsFP11.§#"8§ / 2;
         (§'K§.getItemByName("Button_Next") as §8!r§).x = (§'K§.getItemByName("Button_Next") as §8!r§).x + (_loc3_ + 10);
         (§'K§.getItemByName("Button_Prev") as §8!r§).x = (§'K§.getItemByName("Button_Prev") as §8!r§).x - (_loc3_ + 10);
      }
      
      private function §#w§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§ !e§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§5!+§.§"g§(param1))
         {
            _loc4_ = §"?§.§3!X§(param3);
            (_loc6_ = new (_loc5_ = §5!+§.§,]§(param1))()).x = param2;
            this.§!?§.addChild(_loc6_);
            this.§;F§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§8=§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§`!`§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§<U§.§@!f§(_loc4_) + "/" + AngryBirdsFP11.§<U§.§-!s§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§<U§.§7=§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§<U§.§61§(_loc4_) + "/" + AngryBirdsFP11.§<U§.§2!t§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §"7§(param1:MouseEvent) : void
      {
         if(!this.§%!N§)
         {
            this.§+"7§(this.§=![§[param1.target]);
         }
      }
      
      private function §`!`§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§%!N§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§-!V§ != this.§8=§[_loc2_])
            {
               this.§+"7§(this.§8=§[_loc2_]);
            }
            else if(this.§8=§[_loc2_] < §"?§.§6!G§())
            {
               §"?§.§]"0§ = this.§8=§[_loc2_];
               mNextState = §6!x§.§]"2§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§finally§();
         this.§+5§();
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      private function §+5§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;F§.length)
         {
            _loc2_ = this.§!?§.x + this.§;F§[_loc1_].x - AngryBirdsFP11.§#"8§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§;F§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§;F§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§;F§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§;F§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §finally§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6<§.length)
         {
            if(-this.§!?§.x + 800 >= this.§;F§[_loc1_].x && -this.§<!,§ < this.§;F§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§6<§.length)
               {
                  this.§6<§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§6<§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§!?§.x + 800 <= this.§;F§[_loc1_].x && -this.§<!,§ > this.§;F§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§6<§.length)
               {
                  this.§6<§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§6<§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§<!,§ = this.§!?§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §"!V§.§!j§.clearLevel();
         (§'K§.getItemByName("Button_Back") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "BACK":
               § !x§.playSound("Menu_Back");
               mNextState = §#!G§.§]"2§;
               break;
            case "PREV":
               § !x§.playSound("Menu_Confirm");
               if(!this.§%!N§)
               {
                  --this.§-!V§;
                  this.§+"7§(this.§-!V§);
                  break;
               }
               break;
            case "NEXT":
               § !x§.playSound("Menu_Confirm");
               if(!this.§%!N§)
               {
                  ++this.§-!V§;
                  this.§+"7§(this.§-!V§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               § !x§.playSound("Menu_Confirm");
               AngryBirdsFP11.§'"0§.§[!>§();
         }
      }
      
      private function §+"7§(param1:int) : void
      {
         this.§%!N§ = true;
         if(param1 > this.§;F§.length - 1)
         {
            param1 = this.§;F§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§-!V§ = param1;
         var _loc2_:Number = -this.§;F§[param1].x + this.§[O§;
         var _loc3_:Number = this.§!?§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §8!Y§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§=!@§ != null)
         {
            this.§=!@§.stop();
         }
         this.§=!@§ = §<y§.§,l§.§]!C§(this.§!?§,{"x":_loc2_},null,_loc4_,§<y§.§-!]§);
         this.§=!@§.onComplete = this.§#r§;
         this.§=!@§.play();
      }
      
      private function §#r§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§6<§.length)
         {
            if(_loc1_ == this.§-!V§)
            {
               this.§6<§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§6<§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§%!N§ = false;
      }
   }
}
