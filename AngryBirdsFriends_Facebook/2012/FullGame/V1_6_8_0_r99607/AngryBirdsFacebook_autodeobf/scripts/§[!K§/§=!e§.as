package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§<+§;
   import §"",§.§<?§;
   import §+I§.§9!%§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§ F§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §=!e§ extends §,-§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const §="8§:Number = 0.5;
       
      
      private var §>"!§:Sprite;
      
      private var §?Z§:§<+§;
      
      private var §0!_§:Array;
      
      private var §3"'§:Array;
      
      private var §"#§:int = 0;
      
      private var § m§:Number = 0;
      
      private var §-!-§:Number = 0;
      
      private var §4o§:Dictionary;
      
      private var §`@§:Dictionary;
      
      private var §var§:§-!F§ = null;
      
      private var §6!c§:Boolean = false;
      
      private var override:Number = 0;
      
      public function §=!e§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_ChapterSelection[0]);
         this.§-"9§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§]f§ = null;
         super.activate();
         §9!%§.§!!M§.§5"!§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0!_§)
         {
            _loc3_ = LevelManager.§3"1§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§8!^§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§6!X§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§@y§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§56§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§1"$§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §-"9§() : void
      {
         var _loc3_:§]f§ = null;
         var _loc4_:String = null;
         this.§?Z§ = §2"-§.getItemByName("Container_ChapterSelection") as §<+§;
         this.§0!_§ = [];
         this.§3"'§ = [];
         var _loc1_:Number = 0;
         this.§>"!§ = new Sprite();
         this.§>"!§.y = AngryBirdsFP11.§+!e§ / 2;
         this.§ m§ = AngryBirdsFP11.§#!T§ / 2;
         this.§>"!§.x = this.§ m§;
         this.§?Z§.mClip.addChild(this.§>"!§);
         this.§`@§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§%3§())
         {
            _loc3_ = LevelManager.§3"1§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§@!q§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§@!q§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§@!q§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§'!r§();
      }
      
      private function §'!r§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§4o§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§0!_§.length)
         {
            _loc1_ = §#!J§.§1!Y§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§"#§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§#!T§ / 2 + _loc3_ - this.§0!_§.length * _loc2_.width / 2;
            _loc2_.y = (§2"-§.getItemByName("Button_Next") as §<?§).y - _loc2_.height / 2;
            this.§?Z§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§4o§[_loc2_] = _loc4_;
            this.§3"'§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]"8§);
            _loc4_++;
         }
         _loc3_ = this.§0!_§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§2"-§.getItemByName("Button_Next") as §<?§).x = AngryBirdsFP11.§#!T§ / 2;
         (§2"-§.getItemByName("Button_Prev") as §<?§).x = AngryBirdsFP11.§#!T§ / 2;
         (§2"-§.getItemByName("Button_Next") as §<?§).x = (§2"-§.getItemByName("Button_Next") as §<?§).x + (_loc3_ + 10);
         (§2"-§.getItemByName("Button_Prev") as §<?§).x = (§2"-§.getItemByName("Button_Prev") as §<?§).x - (_loc3_ + 10);
      }
      
      private function §@!q§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§]f§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§#!J§.§#"&§(param1))
         {
            _loc4_ = LevelManager.§3"1§(param3);
            (_loc6_ = new (_loc5_ = §#!J§.§1!Y§(param1))()).x = param2;
            this.§>"!§.addChild(_loc6_);
            this.§0!_§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§`@§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§"!'§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§@y§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§56§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§1"$§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§8!^§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§6!X§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §]"8§(param1:MouseEvent) : void
      {
         if(!this.§6!c§)
         {
            this.§`^§(this.§4o§[param1.target]);
         }
      }
      
      private function §"!'§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§6!c§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§"#§ != this.§`@§[_loc2_])
            {
               this.§`^§(this.§`@§[_loc2_]);
            }
            else if(this.§`@§[_loc2_] < LevelManager.§%3§())
            {
               LevelManager.§@O§ = this.§`@§[_loc2_];
               mNextState = §=B§.STATE_NAME;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§`=§();
         this.§;5§();
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      private function §;5§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!_§.length)
         {
            _loc2_ = this.§>"!§.x + this.§0!_§[_loc1_].x - AngryBirdsFP11.§#!T§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§0!_§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§0!_§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§0!_§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§0!_§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §`=§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"'§.length)
         {
            if(-this.§>"!§.x + 800 >= this.§0!_§[_loc1_].x && -this.override < this.§0!_§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§3"'§.length)
               {
                  this.§3"'§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§3"'§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§>"!§.x + 800 <= this.§0!_§[_loc1_].x && -this.override > this.§0!_§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§3"'§.length)
               {
                  this.§3"'§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§3"'§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.override = this.§>"!§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §9!%§.§!!M§.clearLevel();
         (§2"-§.getItemByName("Button_Back") as §<?§).setComponentVisualState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "BACK":
               §%4§.§>f§("Menu_Back");
               mNextState = §&!x§.STATE_NAME;
               break;
            case "PREV":
               §%4§.§>f§("Menu_Confirm");
               if(!this.§6!c§)
               {
                  --this.§"#§;
                  this.§`^§(this.§"#§);
                  break;
               }
               break;
            case "NEXT":
               §%4§.§>f§("Menu_Confirm");
               if(!this.§6!c§)
               {
                  ++this.§"#§;
                  this.§`^§(this.§"#§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §%4§.§>f§("Menu_Confirm");
               AngryBirdsFP11.§`"B§.§>!-§();
         }
      }
      
      private function §`^§(param1:int) : void
      {
         this.§6!c§ = true;
         if(param1 > this.§0!_§.length - 1)
         {
            param1 = this.§0!_§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§"#§ = param1;
         var _loc2_:Number = -this.§0!_§[param1].x + this.§ m§;
         var _loc3_:Number = this.§>"!§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §="8§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§var§ != null)
         {
            this.§var§.stop();
         }
         this.§var§ = §7!b§.§8c§.§4&§(this.§>"!§,{"x":_loc2_},null,_loc4_,§7!b§.§4"0§);
         this.§var§.onComplete = this.§1_§;
         this.§var§.play();
      }
      
      private function §1_§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"'§.length)
         {
            if(_loc1_ == this.§"#§)
            {
               this.§3"'§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§3"'§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§6!c§ = false;
      }
   }
}
