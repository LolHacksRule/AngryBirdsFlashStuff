package §0![§
{
   import §"v§.§"! §;
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §="§ extends §5y§
   {
      
      public static const §'=§:String = "ChapterSelectionState";
      
      private static const §;w§:Number = 0.5;
       
      
      private var §&v§:Sprite;
      
      private var §`R§:§`!T§;
      
      private var §[!I§:Array;
      
      private var §+[§:Array;
      
      private var §[!s§:int = 0;
      
      private var §9!Q§:Number = 0;
      
      private var §?J§:Number = 0;
      
      private var §1"+§:Dictionary;
      
      private var §]S§:Dictionary;
      
      private var §4i§:§3^§ = null;
      
      private var §"!0§:Boolean = false;
      
      private var §1"?§:Number = 0;
      
      public function §="§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_ChapterSelection[0]);
         this.§#!3§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§"! § = null;
         super.activate();
         §=!X§.§!'§.§;p§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[!I§)
         {
            _loc3_ = §3!w§.§2I§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§>" §.§4w§(_loc3_) + "/" + AngryBirdsFP11.§>" §.§%Y§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§>" §.§var §(_loc3_) + "/" + AngryBirdsFP11.§>" §.§08§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§>" §.§3"=§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §#!3§() : void
      {
         var _loc3_:§"! § = null;
         var _loc4_:String = null;
         this.§`R§ = §?E§.getItemByName("Container_ChapterSelection") as §`!T§;
         this.§[!I§ = [];
         this.§+[§ = [];
         var _loc1_:Number = 0;
         this.§&v§ = new Sprite();
         this.§&v§.y = AngryBirdsFP11.§>Y§ / 2;
         this.§9!Q§ = AngryBirdsFP11.§>!U§ / 2;
         this.§&v§.x = this.§9!Q§;
         this.§`R§.mClip.addChild(this.§&v§);
         this.§]S§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §3!w§.§!K§())
         {
            _loc3_ = §3!w§.§2I§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§;!;§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§;!;§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§;!;§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§!!r§();
      }
      
      private function §!!r§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§1"+§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§[!I§.length)
         {
            _loc1_ = §>!]§.§1!8§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§[!s§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§>!U§ / 2 + _loc3_ - this.§[!I§.length * _loc2_.width / 2;
            _loc2_.y = (§?E§.getItemByName("Button_Next") as §="#§).y - _loc2_.height / 2;
            this.§`R§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§1"+§[_loc2_] = _loc4_;
            this.§+[§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§%"6§);
            _loc4_++;
         }
         _loc3_ = this.§[!I§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§?E§.getItemByName("Button_Next") as §="#§).x = AngryBirdsFP11.§>!U§ / 2;
         (§?E§.getItemByName("Button_Prev") as §="#§).x = AngryBirdsFP11.§>!U§ / 2;
         (§?E§.getItemByName("Button_Next") as §="#§).x = (§?E§.getItemByName("Button_Next") as §="#§).x + (_loc3_ + 10);
         (§?E§.getItemByName("Button_Prev") as §="#§).x = (§?E§.getItemByName("Button_Prev") as §="#§).x - (_loc3_ + 10);
      }
      
      private function §;!;§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§"! § = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§>!]§.§6!J§(param1))
         {
            _loc4_ = §3!w§.§2I§(param3);
            (_loc6_ = new (_loc5_ = §>!]§.§1!8§(param1))()).x = param2;
            this.§&v§.addChild(_loc6_);
            this.§[!I§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§]S§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§9,§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§>" §.§var §(_loc4_) + "/" + AngryBirdsFP11.§>" §.§08§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§>" §.§3"=§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§>" §.§4w§(_loc4_) + "/" + AngryBirdsFP11.§>" §.§%Y§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §%"6§(param1:MouseEvent) : void
      {
         if(!this.§"!0§)
         {
            this.§8!$§(this.§1"+§[param1.target]);
         }
      }
      
      private function §9,§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§"!0§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§[!s§ != this.§]S§[_loc2_])
            {
               this.§8!$§(this.§]S§[_loc2_]);
            }
            else if(this.§]S§[_loc2_] < §3!w§.§!K§())
            {
               §3!w§.§&"&§ = this.§]S§[_loc2_];
               mNextState = §7B§.§'=§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§'!h§();
         this.§&"8§();
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      private function §&"8§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!I§.length)
         {
            _loc2_ = this.§&v§.x + this.§[!I§[_loc1_].x - AngryBirdsFP11.§>!U§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§[!I§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§[!I§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§[!I§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§[!I§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §'!h§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+[§.length)
         {
            if(-this.§&v§.x + 800 >= this.§[!I§[_loc1_].x && -this.§1"?§ < this.§[!I§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§+[§.length)
               {
                  this.§+[§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§+[§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§&v§.x + 800 <= this.§[!I§[_loc1_].x && -this.§1"?§ > this.§[!I§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§+[§.length)
               {
                  this.§+[§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§+[§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§1"?§ = this.§&v§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §=!X§.§!'§.clearLevel();
         (§?E§.getItemByName("Button_Back") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "BACK":
               §5!U§.playSound("Menu_Back");
               mNextState = §]x§.§'=§;
               break;
            case "PREV":
               §5!U§.playSound("Menu_Confirm");
               if(!this.§"!0§)
               {
                  --this.§[!s§;
                  this.§8!$§(this.§[!s§);
                  break;
               }
               break;
            case "NEXT":
               §5!U§.playSound("Menu_Confirm");
               if(!this.§"!0§)
               {
                  ++this.§[!s§;
                  this.§8!$§(this.§[!s§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §5!U§.playSound("Menu_Confirm");
               AngryBirdsFP11.§%d§.§9+§();
         }
      }
      
      private function §8!$§(param1:int) : void
      {
         this.§"!0§ = true;
         if(param1 > this.§[!I§.length - 1)
         {
            param1 = this.§[!I§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§[!s§ = param1;
         var _loc2_:Number = -this.§[!I§[param1].x + this.§9!Q§;
         var _loc3_:Number = this.§&v§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §;w§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§4i§ != null)
         {
            this.§4i§.stop();
         }
         this.§4i§ = §7!E§.§2=§.§<!C§(this.§&v§,{"x":_loc2_},null,_loc4_,§7!E§.§5!+§);
         this.§4i§.onComplete = this.§ ""§;
         this.§4i§.play();
      }
      
      private function § ""§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§+[§.length)
         {
            if(_loc1_ == this.§[!s§)
            {
               this.§+[§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§+[§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§"!0§ = false;
      }
   }
}
