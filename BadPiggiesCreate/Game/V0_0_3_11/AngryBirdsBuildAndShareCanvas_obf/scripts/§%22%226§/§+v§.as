package §""6§
{
   import §'x§.§?z§;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §+%§.§+"%§;
   import §+%§.§=^§;
   import §2!O§.§,w§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §?!k§.§0!t§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import com.rovio.assets.§]!S§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §+v§ extends §,w§
   {
      
      public static const §^z§:String = "ChapterSelectionState";
      
      private static const §8!§:Number = 0.5;
       
      
      private var §?2§:Sprite;
      
      private var §3"'§:§;!u§;
      
      private var §4!C§:Array;
      
      private var §2§:Array;
      
      private var §;!q§:int = 0;
      
      private var §8!q§:Number = 0;
      
      private var §4!T§:Number = 0;
      
      private var §7Y§:Dictionary;
      
      private var §58§:Dictionary;
      
      private var §@!`§:§8!K§ = null;
      
      private var §2O§:Boolean = false;
      
      private var §<!P§:Number = 0;
      
      public function §+v§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_ChapterSelection[0]);
         this.§73§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§=^§ = null;
         super.activate();
         §?z§.§=7§.§,L§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4!C§)
         {
            _loc3_ = §+"%§.§%!Y§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§8!I§.§-v§(_loc3_) + "/" + AngryBirdsFP11.§8!I§.§3y§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§8!I§.§^?§(_loc3_) + "/" + AngryBirdsFP11.§8!I§.§0"+§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§8!I§.§+!O§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §73§() : void
      {
         var _loc3_:§=^§ = null;
         var _loc4_:String = null;
         this.§3"'§ = §%""§.getItemByName("Container_ChapterSelection") as §;!u§;
         this.§4!C§ = [];
         this.§2§ = [];
         var _loc1_:Number = 0;
         this.§?2§ = new Sprite();
         this.§?2§.y = AngryBirdsFP11.§!7§ / 2;
         this.§8!q§ = AngryBirdsFP11.§#k§ / 2;
         this.§?2§.x = this.§8!q§;
         this.§3"'§.mClip.addChild(this.§?2§);
         this.§58§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §+"%§.§<g§())
         {
            _loc3_ = §+"%§.§%!Y§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§8!D§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§8!D§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§8!D§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§'t§();
      }
      
      private function §'t§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§7Y§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§4!C§.length)
         {
            _loc1_ = §]!S§.§?! §("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§;!q§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§#k§ / 2 + _loc3_ - this.§4!C§.length * _loc2_.width / 2;
            _loc2_.y = (§%""§.getItemByName("Button_Next") as §2v§).y - _loc2_.height / 2;
            this.§3"'§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§7Y§[_loc2_] = _loc4_;
            this.§2§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7y§);
            _loc4_++;
         }
         _loc3_ = this.§4!C§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§%""§.getItemByName("Button_Next") as §2v§).x = AngryBirdsFP11.§#k§ / 2;
         (§%""§.getItemByName("Button_Prev") as §2v§).x = AngryBirdsFP11.§#k§ / 2;
         (§%""§.getItemByName("Button_Next") as §2v§).x = (§%""§.getItemByName("Button_Next") as §2v§).x + (_loc3_ + 10);
         (§%""§.getItemByName("Button_Prev") as §2v§).x = (§%""§.getItemByName("Button_Prev") as §2v§).x - (_loc3_ + 10);
      }
      
      private function §8!D§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§=^§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§]!S§.§5!X§(param1))
         {
            _loc4_ = §+"%§.§%!Y§(param3);
            (_loc6_ = new (_loc5_ = §]!S§.§?! §(param1))()).x = param2;
            this.§?2§.addChild(_loc6_);
            this.§4!C§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§58§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§9x§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§8!I§.§^?§(_loc4_) + "/" + AngryBirdsFP11.§8!I§.§0"+§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§8!I§.§+!O§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§8!I§.§-v§(_loc4_) + "/" + AngryBirdsFP11.§8!I§.§3y§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §7y§(param1:MouseEvent) : void
      {
         if(!this.§2O§)
         {
            this.§-!2§(this.§7Y§[param1.target]);
         }
      }
      
      private function §9x§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§2O§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§;!q§ != this.§58§[_loc2_])
            {
               this.§-!2§(this.§58§[_loc2_]);
            }
            else if(this.§58§[_loc2_] < §+"%§.§<g§())
            {
               §+"%§.§-!F§ = this.§58§[_loc2_];
               mNextState = §`!%§.§^z§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,O§();
         this.§`!r§();
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      private function §`!r§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4!C§.length)
         {
            _loc2_ = this.§?2§.x + this.§4!C§[_loc1_].x - AngryBirdsFP11.§#k§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§4!C§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§4!C§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§4!C§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§4!C§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §,O§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2§.length)
         {
            if(-this.§?2§.x + 800 >= this.§4!C§[_loc1_].x && -this.§<!P§ < this.§4!C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2§.length)
               {
                  this.§2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§?2§.x + 800 <= this.§4!C§[_loc1_].x && -this.§<!P§ > this.§4!C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2§.length)
               {
                  this.§2§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§<!P§ = this.§?2§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §?z§.§=7§.clearLevel();
         (§%""§.getItemByName("Button_Back") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "BACK":
               §0!t§.playSound("Menu_Back");
               mNextState = §;!U§.§^z§;
               break;
            case "PREV":
               §0!t§.playSound("Menu_Confirm");
               if(!this.§2O§)
               {
                  --this.§;!q§;
                  this.§-!2§(this.§;!q§);
                  break;
               }
               break;
            case "NEXT":
               §0!t§.playSound("Menu_Confirm");
               if(!this.§2O§)
               {
                  ++this.§;!q§;
                  this.§-!2§(this.§;!q§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §0!t§.playSound("Menu_Confirm");
               AngryBirdsFP11.§@!N§.§2!1§();
         }
      }
      
      private function §-!2§(param1:int) : void
      {
         this.§2O§ = true;
         if(param1 > this.§4!C§.length - 1)
         {
            param1 = this.§4!C§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§;!q§ = param1;
         var _loc2_:Number = -this.§4!C§[param1].x + this.§8!q§;
         var _loc3_:Number = this.§?2§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §8!§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§@!`§ != null)
         {
            this.§@!`§.stop();
         }
         this.§@!`§ = §%!Z§.§if §.§"<§(this.§?2§,{"x":_loc2_},null,_loc4_,§%!Z§.§&e§);
         this.§@!`§.onComplete = this.§=P§;
         this.§@!`§.play();
      }
      
      private function §=P§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2§.length)
         {
            if(_loc1_ == this.§;!q§)
            {
               this.§2§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§2§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§2O§ = false;
      }
   }
}
