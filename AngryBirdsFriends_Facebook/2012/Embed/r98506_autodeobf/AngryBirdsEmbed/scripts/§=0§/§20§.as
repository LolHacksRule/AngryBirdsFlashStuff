package §=0§
{
   import §+n§.§3P§;
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §3!A§.§9!0§;
   import §3'§.§5I§;
   import §3'§.§8I§;
   import §8!G§.§-Z§;
   import §8!G§.§>!C§;
   import §;=§.§7I§;
   import §;=§.§>!2§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import com.rovio.assets.§53§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §20§ extends §`U§
   {
      
      public static const §?1§:String = "ChapterSelectionState";
      
      private static const §8m§:Number = 0.5;
       
      
      private var §[t§:Sprite;
      
      private var §&_§:§8I§;
      
      private var §!U§:Array;
      
      private var §'!2§:Array;
      
      private var §=!G§:int = 0;
      
      private var §%[§:Number = 0;
      
      private var §2!7§:Number = 0;
      
      private var §0y§:Dictionary;
      
      private var §9!I§:Dictionary;
      
      private var §^v§:§7I§ = null;
      
      private var §]"§:Boolean = false;
      
      private var §`A§:Number = 0;
      
      public function §20§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_ChapterSelection[0]);
         this.§;l§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§>!C§ = null;
         super.activate();
         §^?§.§]!%§.§ U§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!U§)
         {
            _loc3_ = §-Z§.§=!<§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§'N§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§'#§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§=G§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§`S§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§ !'§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §;l§() : void
      {
         var _loc3_:§>!C§ = null;
         var _loc4_:String = null;
         this.§&_§ = §4G§.getItemByName("Container_ChapterSelection") as §8I§;
         this.§!U§ = [];
         this.§'!2§ = [];
         var _loc1_:Number = 0;
         this.§[t§ = new Sprite();
         this.§[t§.y = AngryBirdsFP11.screenHeight / 2;
         this.§%[§ = AngryBirdsFP11.screenWidth / 2;
         this.§[t§.x = this.§%[§;
         this.§&_§.mClip.addChild(this.§[t§);
         this.§9!I§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §-Z§.§`I§())
         {
            _loc3_ = §-Z§.§=!<§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§-1§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§-1§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§-1§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§-!9§();
      }
      
      private function §-!9§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§0y§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§!U§.length)
         {
            _loc1_ = §53§.§[N§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§=!G§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§!U§.length * _loc2_.width / 2;
            _loc2_.y = (§4G§.getItemByName("Button_Next") as §5I§).y - _loc2_.height / 2;
            this.§&_§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§0y§[_loc2_] = _loc4_;
            this.§'!2§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§&U§);
            _loc4_++;
         }
         _loc3_ = this.§!U§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§4G§.getItemByName("Button_Next") as §5I§).x = AngryBirdsFP11.screenWidth / 2;
         (§4G§.getItemByName("Button_Prev") as §5I§).x = AngryBirdsFP11.screenWidth / 2;
         (§4G§.getItemByName("Button_Next") as §5I§).x = (§4G§.getItemByName("Button_Next") as §5I§).x + (_loc3_ + 10);
         (§4G§.getItemByName("Button_Prev") as §5I§).x = (§4G§.getItemByName("Button_Prev") as §5I§).x - (_loc3_ + 10);
      }
      
      private function §-1§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§>!C§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§53§.§9x§(param1))
         {
            _loc4_ = §-Z§.§=!<§(param3);
            (_loc6_ = new (_loc5_ = §53§.§[N§(param1))()).x = param2;
            this.§[t§.addChild(_loc6_);
            this.§!U§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§9!I§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§5v§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§=G§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§`S§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§ !'§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§'N§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§'#§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §&U§(param1:MouseEvent) : void
      {
         if(!this.§]"§)
         {
            this.§'X§(this.§0y§[param1.target]);
         }
      }
      
      private function §5v§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§]"§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§=!G§ != this.§9!I§[_loc2_])
            {
               this.§'X§(this.§9!I§[_loc2_]);
            }
            else if(this.§9!I§[_loc2_] < §-Z§.§`I§())
            {
               §-Z§.§@!$§ = this.§9!I§[_loc2_];
               mNextState = §33§.§?1§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§^!H§();
         this.§9=§();
         if(mNextState.length > 0)
         {
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      private function §9=§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!U§.length)
         {
            _loc2_ = this.§[t§.x + this.§!U§[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§!U§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§!U§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§!U§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§!U§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §^!H§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!2§.length)
         {
            if(-this.§[t§.x + 800 >= this.§!U§[_loc1_].x && -this.§`A§ < this.§!U§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'!2§.length)
               {
                  this.§'!2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'!2§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§[t§.x + 800 <= this.§!U§[_loc1_].x && -this.§`A§ > this.§!U§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§'!2§.length)
               {
                  this.§'!2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§'!2§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§`A§ = this.§[t§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §^?§.§]!%§.clearLevel();
         (§4G§.getItemByName("Button_Back") as §5I§).setComponentVisualState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         switch(param2)
         {
            case "BACK":
               §9!0§.§-! §("Menu_Back");
               mNextState = §[!$§.§?1§;
               break;
            case "PREV":
               §9!0§.§-! §("Menu_Confirm");
               if(!this.§]"§)
               {
                  --this.§=!G§;
                  this.§'X§(this.§=!G§);
                  break;
               }
               break;
            case "NEXT":
               §9!0§.§-! §("Menu_Confirm");
               if(!this.§]"§)
               {
                  ++this.§=!G§;
                  this.§'X§(this.§=!G§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §9!0§.§-! §("Menu_Confirm");
               AngryBirdsFP11.§5W§.§^!@§();
         }
      }
      
      private function §'X§(param1:int) : void
      {
         this.§]"§ = true;
         if(param1 > this.§!U§.length - 1)
         {
            param1 = this.§!U§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§=!G§ = param1;
         var _loc2_:Number = -this.§!U§[param1].x + this.§%[§;
         var _loc3_:Number = this.§[t§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §8m§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§^v§ != null)
         {
            this.§^v§.stop();
         }
         this.§^v§ = §>!2§.§72§.§-z§(this.§[t§,{"x":_loc2_},null,_loc4_,§>!2§.§ !%§);
         this.§^v§.onComplete = this.§^W§;
         this.§^v§.play();
      }
      
      private function §^W§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!2§.length)
         {
            if(_loc1_ == this.§=!G§)
            {
               this.§'!2§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§'!2§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§]"§ = false;
      }
   }
}
