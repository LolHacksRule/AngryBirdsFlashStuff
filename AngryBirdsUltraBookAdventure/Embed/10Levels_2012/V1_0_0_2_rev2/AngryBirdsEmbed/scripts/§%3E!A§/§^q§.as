package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §6J§.§?S§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§3C§;
   import §class§.§?q§;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §^q§ extends §#!,§
   {
      
      public static const §?x§:String = "ChapterSelectionState";
      
      private static const §?!=§:Number = 0.5;
       
      
      private var §?Q§:Sprite;
      
      private var §6!1§:§3C§;
      
      private var §#w§:Array;
      
      private var §9]§:Array;
      
      private var §&F§:int = 0;
      
      private var §<!A§:Number = 0;
      
      private var §&&§:Number = 0;
      
      private var §9x§:Dictionary;
      
      private var §=!=§:Dictionary;
      
      private var §^!H§:§?!3§ = null;
      
      private var §%!8§:Boolean = false;
      
      private var §5!H§:Number = 0;
      
      public function §^q§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_ChapterSelection[0]);
         this.§[j§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§?S§ = null;
         super.activate();
         §[k§.§&@§.§`!G§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#w§)
         {
            _loc3_ = §5j§.§^!E§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]k§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§,$§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§<!;§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§1'§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8h§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §[j§() : void
      {
         var _loc3_:§?S§ = null;
         var _loc4_:String = null;
         this.§6!1§ = §[=§.getItemByName("Container_ChapterSelection") as §3C§;
         this.§#w§ = [];
         this.§9]§ = [];
         var _loc1_:Number = 0;
         this.§?Q§ = new Sprite();
         this.§?Q§.y = AngryBirdsFP11.screenHeight / 2;
         this.§<!A§ = AngryBirdsFP11.screenWidth / 2;
         this.§?Q§.x = this.§<!A§;
         this.§6!1§.mClip.addChild(this.§?Q§);
         this.§=!=§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §5j§.§,5§())
         {
            _loc3_ = §5j§.§^!E§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§<7§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§<7§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§<7§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§]§();
      }
      
      private function §]§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§9x§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§#w§.length)
         {
            _loc1_ = §'!H§.§&!G§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§&F§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§#w§.length * _loc2_.width / 2;
            _loc2_.y = (§[=§.getItemByName("Button_Next") as §?q§).y - _loc2_.height / 2;
            this.§6!1§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§9x§[_loc2_] = _loc4_;
            this.§9]§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!@§);
            _loc4_++;
         }
         _loc3_ = this.§#w§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§[=§.getItemByName("Button_Next") as §?q§).x = AngryBirdsFP11.screenWidth / 2;
         (§[=§.getItemByName("Button_Prev") as §?q§).x = AngryBirdsFP11.screenWidth / 2;
         (§[=§.getItemByName("Button_Next") as §?q§).x = (§[=§.getItemByName("Button_Next") as §?q§).x + (_loc3_ + 10);
         (§[=§.getItemByName("Button_Prev") as §?q§).x = (§[=§.getItemByName("Button_Prev") as §?q§).x - (_loc3_ + 10);
      }
      
      private function §<7§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§?S§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§'!H§.§>o§(param1))
         {
            _loc4_ = §5j§.§^!E§(param3);
            (_loc6_ = new (_loc5_ = §'!H§.§&!G§(param1))()).x = param2;
            this.§?Q§.addChild(_loc6_);
            this.§#w§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§=!=§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§7b§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§<!;§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§1'§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8h§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]k§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§,$§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §1!@§(param1:MouseEvent) : void
      {
         if(!this.§%!8§)
         {
            this.§=r§(this.§9x§[param1.target]);
         }
      }
      
      private function §7b§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§%!8§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§&F§ != this.§=!=§[_loc2_])
            {
               this.§=r§(this.§=!=§[_loc2_]);
            }
            else if(this.§=!=§[_loc2_] < §5j§.§,5§())
            {
               §5j§.§0P§ = this.§=!=§[_loc2_];
               mNextState = §5O§.§?x§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§+y§();
         this.§82§();
         if(mNextState.length > 0)
         {
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      private function §82§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#w§.length)
         {
            _loc2_ = this.§?Q§.x + this.§#w§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§#w§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§#w§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§#w§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§#w§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §+y§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9]§.length)
         {
            if(-this.§?Q§.x + 800 >= this.§#w§[_loc1_].x && -this.§5!H§ < this.§#w§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§9]§.length)
               {
                  this.§9]§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§9]§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§?Q§.x + 800 <= this.§#w§[_loc1_].x && -this.§5!H§ > this.§#w§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§9]§.length)
               {
                  this.§9]§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§9]§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§5!H§ = this.§?Q§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[k§.§&@§.clearLevel();
         (§[=§.getItemByName("Button_Back") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "BACK":
               §6I§.§ ;§("Menu_Back");
               mNextState = §!!=§.§?x§;
               break;
            case "PREV":
               §6I§.§ ;§("Menu_Confirm");
               if(!this.§%!8§)
               {
                  --this.§&F§;
                  this.§=r§(this.§&F§);
                  break;
               }
               break;
            case "NEXT":
               §6I§.§ ;§("Menu_Confirm");
               if(!this.§%!8§)
               {
                  ++this.§&F§;
                  this.§=r§(this.§&F§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §6I§.§ ;§("Menu_Confirm");
               AngryBirdsFP11.§,s§.§8!1§();
         }
      }
      
      private function §=r§(param1:int) : void
      {
         this.§%!8§ = true;
         if(param1 > this.§#w§.length - 1)
         {
            param1 = this.§#w§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§&F§ = param1;
         var _loc2_:Number = -this.§#w§[param1].x + this.§<!A§;
         var _loc3_:Number = this.§?Q§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §?!=§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§^!H§ != null)
         {
            this.§^!H§.stop();
         }
         this.§^!H§ = §,B§.§^n§.§2E§(this.§?Q§,{"x":_loc2_},null,_loc4_,§,B§.§[!F§);
         this.§^!H§.onComplete = this.§-T§;
         this.§^!H§.play();
      }
      
      private function §-T§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9]§.length)
         {
            if(_loc1_ == this.§&F§)
            {
               this.§9]§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§9]§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§%!8§ = false;
      }
   }
}
