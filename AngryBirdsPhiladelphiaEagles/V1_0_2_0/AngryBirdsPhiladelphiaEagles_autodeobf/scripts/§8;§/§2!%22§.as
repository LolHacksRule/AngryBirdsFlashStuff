package §8;§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §9c§.§,x§;
   import §9c§.§6P§;
   import §<!F§.§5!+§;
   import §=!H§.§9V§;
   import §=!H§.§=<§;
   import §?!;§.§6H§;
   import §?!;§.§;h§;
   import com.rovio.assets.§<x§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §2!"§ extends §!L§
   {
      
      public static const §"Z§:String = "ChapterSelectionState";
      
      private static const §+!!§:Number = 0.5;
       
      
      private var §9a§:Sprite;
      
      private var §7r§:§9V§;
      
      private var §0!,§:Array;
      
      private var §4!2§:Array;
      
      private var §1i§:int = 0;
      
      private var §1x§:Number = 0;
      
      private var §"r§:Number = 0;
      
      private var §[r§:Dictionary;
      
      private var §9!<§:Dictionary;
      
      private var §!E§:§ !4§ = null;
      
      private var §,7§:Boolean = false;
      
      private var §46§:Number = 0;
      
      public function §2!"§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_ChapterSelection[0]);
         this.§&!M§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§;h§ = null;
         super.activate();
         §5!+§.§6!§.§'!+§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0!,§)
         {
            _loc3_ = §6H§.§4_§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§^O§.§!!=§(_loc3_) + "/" + AngryBirdsFP11.§^O§.§8!3§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§^O§.§4m§(_loc3_) + "/" + AngryBirdsFP11.§^O§.§7!M§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§^O§.§%I§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §&!M§() : void
      {
         var _loc3_:§;h§ = null;
         var _loc4_:String = null;
         this.§7r§ = §>2§.getItemByName("Container_ChapterSelection") as §9V§;
         this.§0!,§ = [];
         this.§4!2§ = [];
         var _loc1_:Number = 0;
         this.§9a§ = new Sprite();
         this.§9a§.y = AngryBirdsFP11.§0O§ / 2;
         this.§1x§ = AngryBirdsFP11.§<§ / 2;
         this.§9a§.x = this.§1x§;
         this.§7r§.mClip.addChild(this.§9a§);
         this.§9!<§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §6H§.§%a§())
         {
            _loc3_ = §6H§.§4_§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§8y§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§8y§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§8y§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§-%§();
      }
      
      private function §-%§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§[r§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§0!,§.length)
         {
            _loc1_ = §<x§.§,! §("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§1i§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§<§ / 2 + _loc3_ - this.§0!,§.length * _loc2_.width / 2;
            _loc2_.y = (§>2§.getItemByName("Button_Next") as §=<§).y - _loc2_.height / 2;
            this.§7r§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§[r§[_loc2_] = _loc4_;
            this.§4!2§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!E§);
            _loc4_++;
         }
         _loc3_ = this.§0!,§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§>2§.getItemByName("Button_Next") as §=<§).x = AngryBirdsFP11.§<§ / 2;
         (§>2§.getItemByName("Button_Prev") as §=<§).x = AngryBirdsFP11.§<§ / 2;
         (§>2§.getItemByName("Button_Next") as §=<§).x = (§>2§.getItemByName("Button_Next") as §=<§).x + (_loc3_ + 10);
         (§>2§.getItemByName("Button_Prev") as §=<§).x = (§>2§.getItemByName("Button_Prev") as §=<§).x - (_loc3_ + 10);
      }
      
      private function §8y§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§;h§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§<x§.§,!@§(param1))
         {
            _loc4_ = §6H§.§4_§(param3);
            (_loc6_ = new (_loc5_ = §<x§.§,! §(param1))()).x = param2;
            this.§9a§.addChild(_loc6_);
            this.§0!,§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§9!<§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§<I§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§^O§.§4m§(_loc4_) + "/" + AngryBirdsFP11.§^O§.§7!M§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§^O§.§%I§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§^O§.§!!=§(_loc4_) + "/" + AngryBirdsFP11.§^O§.§8!3§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §#!E§(param1:MouseEvent) : void
      {
         if(!this.§,7§)
         {
            this.§8t§(this.§[r§[param1.target]);
         }
      }
      
      private function §<I§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§,7§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§1i§ != this.§9!<§[_loc2_])
            {
               this.§8t§(this.§9!<§[_loc2_]);
            }
            else if(this.§9!<§[_loc2_] < §6H§.§%a§())
            {
               §6H§.§6!;§ = this.§9!<§[_loc2_];
               mNextState = §!!6§.§"Z§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-d§();
         this.§`;§();
         if(mNextState.length > 0)
         {
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      private function §`;§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!,§.length)
         {
            _loc2_ = this.§9a§.x + this.§0!,§[_loc1_].x - AngryBirdsFP11.§<§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§0!,§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§0!,§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§0!,§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§0!,§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §-d§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4!2§.length)
         {
            if(-this.§9a§.x + 800 >= this.§0!,§[_loc1_].x && -this.§46§ < this.§0!,§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§4!2§.length)
               {
                  this.§4!2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§4!2§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§9a§.x + 800 <= this.§0!,§[_loc1_].x && -this.§46§ > this.§0!,§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§4!2§.length)
               {
                  this.§4!2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§4!2§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§46§ = this.§9a§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §5!+§.§6!§.clearLevel();
         (§>2§.getItemByName("Button_Back") as §=<§).setComponentVisualState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         switch(param2)
         {
            case "BACK":
               §3V§.playSound("Menu_Back");
               mNextState = §6!F§.§"Z§;
               break;
            case "PREV":
               §3V§.playSound("Menu_Confirm");
               if(!this.§,7§)
               {
                  --this.§1i§;
                  this.§8t§(this.§1i§);
                  break;
               }
               break;
            case "NEXT":
               §3V§.playSound("Menu_Confirm");
               if(!this.§,7§)
               {
                  ++this.§1i§;
                  this.§8t§(this.§1i§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §3V§.playSound("Menu_Confirm");
               AngryBirdsFP11.§"Y§.§4%§();
         }
      }
      
      private function §8t§(param1:int) : void
      {
         this.§,7§ = true;
         if(param1 > this.§0!,§.length - 1)
         {
            param1 = this.§0!,§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§1i§ = param1;
         var _loc2_:Number = -this.§0!,§[param1].x + this.§1x§;
         var _loc3_:Number = this.§9a§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §+!!§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§!E§ != null)
         {
            this.§!E§.stop();
         }
         this.§!E§ = §49§.§&y§.§=!3§(this.§9a§,{"x":_loc2_},null,_loc4_,§49§.§+<§);
         this.§!E§.onComplete = this.§3!>§;
         this.§!E§.play();
      }
      
      private function §3!>§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§4!2§.length)
         {
            if(_loc1_ == this.§1i§)
            {
               this.§4!2§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§4!2§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§,7§ = false;
      }
   }
}
