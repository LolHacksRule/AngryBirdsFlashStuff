package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<i§.§3!l§;
   import §<i§.§`!r§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §2u§ extends §'B§
   {
      
      public static const §%!Q§:String = "ChapterSelectionState";
      
      private static const §#!4§:Number = 0.5;
       
      
      private var §>o§:Sprite;
      
      private var §7"%§:§6W§;
      
      private var §6!E§:Array;
      
      private var §82§:Array;
      
      private var §9u§:int = 0;
      
      private var §7!"§:Number = 0;
      
      private var §5!R§:Number = 0;
      
      private var §,"8§:Dictionary;
      
      private var §6!=§:Dictionary;
      
      private var § ![§:§=!r§ = null;
      
      private var §3";§:Boolean = false;
      
      private var §1j§:Number = 0;
      
      public function §2u§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_ChapterSelection[0]);
         this.§+!C§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§3!l§ = null;
         super.activate();
         §'_§.§=M§.§'"@§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§6!E§)
         {
            _loc3_ = §`!r§.§]-§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§>!7§.§3k§(_loc3_) + "/" + AngryBirdsFP11.§>!7§.§?!Y§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§>!7§.§ 8§(_loc3_) + "/" + AngryBirdsFP11.§>!7§.§7!z§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§>!7§.§[!i§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §+!C§() : void
      {
         var _loc3_:§3!l§ = null;
         var _loc4_:String = null;
         this.§7"%§ = §`!v§.getItemByName("Container_ChapterSelection") as §6W§;
         this.§6!E§ = [];
         this.§82§ = [];
         var _loc1_:Number = 0;
         this.§>o§ = new Sprite();
         this.§>o§.y = AngryBirdsFP11.§+#§ / 2;
         this.§7!"§ = AngryBirdsFP11.§6j§ / 2;
         this.§>o§.x = this.§7!"§;
         this.§7"%§.mClip.addChild(this.§>o§);
         this.§6!=§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §`!r§.§1!o§())
         {
            _loc3_ = §`!r§.§]-§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§[!D§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§[!D§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§[!D§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§0!w§();
      }
      
      private function §0!w§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§,"8§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§6!E§.length)
         {
            _loc1_ = §69§.§ 0§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§9u§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§6j§ / 2 + _loc3_ - this.§6!E§.length * _loc2_.width / 2;
            _loc2_.y = (§`!v§.getItemByName("Button_Next") as §9"8§).y - _loc2_.height / 2;
            this.§7"%§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§,"8§[_loc2_] = _loc4_;
            this.§82§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!X§);
            _loc4_++;
         }
         _loc3_ = this.§6!E§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§`!v§.getItemByName("Button_Next") as §9"8§).x = AngryBirdsFP11.§6j§ / 2;
         (§`!v§.getItemByName("Button_Prev") as §9"8§).x = AngryBirdsFP11.§6j§ / 2;
         (§`!v§.getItemByName("Button_Next") as §9"8§).x = (§`!v§.getItemByName("Button_Next") as §9"8§).x + (_loc3_ + 10);
         (§`!v§.getItemByName("Button_Prev") as §9"8§).x = (§`!v§.getItemByName("Button_Prev") as §9"8§).x - (_loc3_ + 10);
      }
      
      private function §[!D§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§3!l§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§69§.§?"5§(param1))
         {
            _loc4_ = §`!r§.§]-§(param3);
            (_loc6_ = new (_loc5_ = §69§.§ 0§(param1))()).x = param2;
            this.§>o§.addChild(_loc6_);
            this.§6!E§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§6!=§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§=!B§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§>!7§.§ 8§(_loc4_) + "/" + AngryBirdsFP11.§>!7§.§7!z§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§>!7§.§[!i§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§>!7§.§3k§(_loc4_) + "/" + AngryBirdsFP11.§>!7§.§?!Y§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §[!X§(param1:MouseEvent) : void
      {
         if(!this.§3";§)
         {
            this.§%!&§(this.§,"8§[param1.target]);
         }
      }
      
      private function §=!B§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§3";§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§9u§ != this.§6!=§[_loc2_])
            {
               this.§%!&§(this.§6!=§[_loc2_]);
            }
            else if(this.§6!=§[_loc2_] < §`!r§.§1!o§())
            {
               §`!r§.§^0§ = this.§6!=§[_loc2_];
               mNextState = §1!i§.§%!Q§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§1!d§();
         this.§6+§();
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      private function §6+§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!E§.length)
         {
            _loc2_ = this.§>o§.x + this.§6!E§[_loc1_].x - AngryBirdsFP11.§6j§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§6!E§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§6!E§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§6!E§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§6!E§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §1!d§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§82§.length)
         {
            if(-this.§>o§.x + 800 >= this.§6!E§[_loc1_].x && -this.§1j§ < this.§6!E§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§82§.length)
               {
                  this.§82§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§82§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§>o§.x + 800 <= this.§6!E§[_loc1_].x && -this.§1j§ > this.§6!E§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§82§.length)
               {
                  this.§82§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§82§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§1j§ = this.§>o§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §'_§.§=M§.clearLevel();
         (§`!v§.getItemByName("Button_Back") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "BACK":
               §0"#§.§9"2§("Menu_Back");
               mNextState = §7!X§.§%!Q§;
               break;
            case "PREV":
               §0"#§.§9"2§("Menu_Confirm");
               if(!this.§3";§)
               {
                  --this.§9u§;
                  this.§%!&§(this.§9u§);
                  break;
               }
               break;
            case "NEXT":
               §0"#§.§9"2§("Menu_Confirm");
               if(!this.§3";§)
               {
                  ++this.§9u§;
                  this.§%!&§(this.§9u§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §0"#§.§9"2§("Menu_Confirm");
               AngryBirdsFP11.§@"7§.§>!5§();
         }
      }
      
      private function §%!&§(param1:int) : void
      {
         this.§3";§ = true;
         if(param1 > this.§6!E§.length - 1)
         {
            param1 = this.§6!E§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§9u§ = param1;
         var _loc2_:Number = -this.§6!E§[param1].x + this.§7!"§;
         var _loc3_:Number = this.§>o§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §#!4§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§ ![§ != null)
         {
            this.§ ![§.stop();
         }
         this.§ ![§ = §7I§.§[E§.§ ";§(this.§>o§,{"x":_loc2_},null,_loc4_,§7I§.§7L§);
         this.§ ![§.onComplete = this.§%!Z§;
         this.§ ![§.play();
      }
      
      private function §%!Z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§82§.length)
         {
            if(_loc1_ == this.§9u§)
            {
               this.§82§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§82§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§3";§ = false;
      }
   }
}
