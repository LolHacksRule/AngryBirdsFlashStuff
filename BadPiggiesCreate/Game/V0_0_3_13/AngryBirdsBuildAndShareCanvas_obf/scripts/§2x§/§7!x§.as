package §2x§
{
   import § true§.§1H§;
   import § true§.§8K§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §0s§.§=W§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import com.rovio.assets.§=#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §7!x§ extends §>!T§
   {
      
      public static const §>H§:String = "ChapterSelectionState";
      
      private static const §#!R§:Number = 0.5;
       
      
      private var §'!V§:Sprite;
      
      private var §[!&§:§1H§;
      
      private var §`!@§:Array;
      
      private var §0!Z§:Array;
      
      private var §[!_§:int = 0;
      
      private var §@!g§:Number = 0;
      
      private var §,!m§:Number = 0;
      
      private var §%"0§:Dictionary;
      
      private var §"j§:Dictionary;
      
      private var § !1§:§-!m§ = null;
      
      private var §<^§:Boolean = false;
      
      private var §#!N§:Number = 0;
      
      public function §7!x§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_ChapterSelection[0]);
         this.§#![§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§=W§ = null;
         super.activate();
         §5!U§.§,!E§.§=""§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§`!@§)
         {
            _loc3_ = §8!z§.§]!1§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§"!c§.§;y§(_loc3_) + "/" + AngryBirdsFP11.§"!c§.§1"3§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§"!c§.§^!?§(_loc3_) + "/" + AngryBirdsFP11.§"!c§.§"!_§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§"!c§.§=!B§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §#![§() : void
      {
         var _loc3_:§=W§ = null;
         var _loc4_:String = null;
         this.§[!&§ = §3?§.getItemByName("Container_ChapterSelection") as §1H§;
         this.§`!@§ = [];
         this.§0!Z§ = [];
         var _loc1_:Number = 0;
         this.§'!V§ = new Sprite();
         this.§'!V§.y = AngryBirdsFP11.§!,§ / 2;
         this.§@!g§ = AngryBirdsFP11.§`!4§ / 2;
         this.§'!V§.x = this.§@!g§;
         this.§[!&§.mClip.addChild(this.§'!V§);
         this.§"j§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §8!z§.§]!x§())
         {
            _loc3_ = §8!z§.§]!1§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§]!L§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§]!L§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§]!L§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§&!,§();
      }
      
      private function §&!,§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§%"0§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§`!@§.length)
         {
            _loc1_ = §=#§.§1v§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§[!_§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§`!4§ / 2 + _loc3_ - this.§`!@§.length * _loc2_.width / 2;
            _loc2_.y = (§3?§.getItemByName("Button_Next") as §8K§).y - _loc2_.height / 2;
            this.§[!&§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§%"0§[_loc2_] = _loc4_;
            this.§0!Z§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7!E§);
            _loc4_++;
         }
         _loc3_ = this.§`!@§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§3?§.getItemByName("Button_Next") as §8K§).x = AngryBirdsFP11.§`!4§ / 2;
         (§3?§.getItemByName("Button_Prev") as §8K§).x = AngryBirdsFP11.§`!4§ / 2;
         (§3?§.getItemByName("Button_Next") as §8K§).x = (§3?§.getItemByName("Button_Next") as §8K§).x + (_loc3_ + 10);
         (§3?§.getItemByName("Button_Prev") as §8K§).x = (§3?§.getItemByName("Button_Prev") as §8K§).x - (_loc3_ + 10);
      }
      
      private function §]!L§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§=W§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§=#§.§;?§(param1))
         {
            _loc4_ = §8!z§.§]!1§(param3);
            (_loc6_ = new (_loc5_ = §=#§.§1v§(param1))()).x = param2;
            this.§'!V§.addChild(_loc6_);
            this.§`!@§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§"j§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§ ";§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§"!c§.§^!?§(_loc4_) + "/" + AngryBirdsFP11.§"!c§.§"!_§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§"!c§.§=!B§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§"!c§.§;y§(_loc4_) + "/" + AngryBirdsFP11.§"!c§.§1"3§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §7!E§(param1:MouseEvent) : void
      {
         if(!this.§<^§)
         {
            this.§!!A§(this.§%"0§[param1.target]);
         }
      }
      
      private function § ";§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§<^§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§[!_§ != this.§"j§[_loc2_])
            {
               this.§!!A§(this.§"j§[_loc2_]);
            }
            else if(this.§"j§[_loc2_] < §8!z§.§]!x§())
            {
               §8!z§.§8"4§ = this.§"j§[_loc2_];
               mNextState = §8";§.§>H§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§@!@§();
         this.§0!X§();
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      private function §0!X§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!@§.length)
         {
            _loc2_ = this.§'!V§.x + this.§`!@§[_loc1_].x - AngryBirdsFP11.§`!4§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§`!@§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§`!@§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§`!@§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§`!@§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §@!@§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!Z§.length)
         {
            if(-this.§'!V§.x + 800 >= this.§`!@§[_loc1_].x && -this.§#!N§ < this.§`!@§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0!Z§.length)
               {
                  this.§0!Z§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0!Z§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§'!V§.x + 800 <= this.§`!@§[_loc1_].x && -this.§#!N§ > this.§`!@§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§0!Z§.length)
               {
                  this.§0!Z§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§0!Z§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§#!N§ = this.§'!V§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §5!U§.§,!E§.clearLevel();
         (§3?§.getItemByName("Button_Back") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "BACK":
               §5;§.playSound("Menu_Back");
               mNextState = §'5§.§>H§;
               break;
            case "PREV":
               §5;§.playSound("Menu_Confirm");
               if(!this.§<^§)
               {
                  --this.§[!_§;
                  this.§!!A§(this.§[!_§);
                  break;
               }
               break;
            case "NEXT":
               §5;§.playSound("Menu_Confirm");
               if(!this.§<^§)
               {
                  ++this.§[!_§;
                  this.§!!A§(this.§[!_§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §5;§.playSound("Menu_Confirm");
               AngryBirdsFP11.§2p§.§`W§();
         }
      }
      
      private function §!!A§(param1:int) : void
      {
         this.§<^§ = true;
         if(param1 > this.§`!@§.length - 1)
         {
            param1 = this.§`!@§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§[!_§ = param1;
         var _loc2_:Number = -this.§`!@§[param1].x + this.§@!g§;
         var _loc3_:Number = this.§'!V§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §#!R§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§ !1§ != null)
         {
            this.§ !1§.stop();
         }
         this.§ !1§ = §"L§.§7!?§.§4!P§(this.§'!V§,{"x":_loc2_},null,_loc4_,§"L§.§;§);
         this.§ !1§.onComplete = this.§'!d§;
         this.§ !1§.play();
      }
      
      private function §'!d§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!Z§.length)
         {
            if(_loc1_ == this.§[!_§)
            {
               this.§0!Z§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§0!Z§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§<^§ = false;
      }
   }
}
