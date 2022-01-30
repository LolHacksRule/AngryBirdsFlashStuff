package §-P§
{
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §!D§.§3!6§;
   import §!D§.§<!5§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §%h§.§=$§;
   import §'!O§.§[!m§;
   import §,E§.§ t§;
   import §,E§.§0!g§;
   import §-D§.§2!w§;
   import §4u§.§9<§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9!7§.§6"0§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §+!>§
   {
      
      public static const §#!w§:String = "StatePlay";
      
      public static const §3!'§:int = 50;
      
      protected static const §@!V§:String = "MightyEagleButtonVisible";
      
      protected static const §#!a§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §5!§:String = "MightyEagleButtonHide";
       
      
      protected var §]!w§:§ t§;
      
      protected var §5H§:§;!5§;
      
      protected var §1!-§:String;
      
      protected var §"!'§:Boolean;
      
      private var §8r§:Vector.<int>;
      
      private var §7!Q§:Boolean;
      
      private var §8!`§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§]!w§ = new § t§();
         this.§8r§ = new Vector.<int>(32);
         super(param1,param2);
         this.§8r§[3] = 5000;
         this.§8r§[7] = 5000;
         this.§8r§[8] = 5000;
         this.§8r§[9] = 5000;
         this.§8r§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelPlay[0]);
      }
      
      protected function §@'§() : void
      {
      }
      
      private function §#!2§(param1:TimerEvent) : void
      {
         (§1!j§.getItemByName("TextField_METimer") as §%c§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§1!$§();
         super.levelStarted();
         if(§1!j§.getItemByName("Button_MightyEagle"))
         {
            §1!j§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §?!7§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§5!;§();
      }
      
      protected function §1!$§() : void
      {
         §?!7§.§@"!§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §"Q§() : void
      {
         §1!j§.getItemByName("TextField_METimer").setVisibility(false);
         §1!j§.getItemByName("Container_MEScore").setVisibility(false);
         §1!j§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §1!j§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §5!;§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§]!w§.§,V§(0);
         this.§[!z§(0);
         this.§"Q§();
         if(§3" §.§3e§ != null)
         {
            _loc1_ = new Bitmap(§3" §.§3e§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§1!j§.getItemByName("MovieClip_AvatarPlaceholder") as §<!5§).changeMovieClip(_loc2_);
            §1!j§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§1!-§ = §@!V§;
         this.§5H§ = null;
         this.§"!'§ = false;
      }
      
      public function §]a§() : void
      {
         (§1!j§.getItemByName("Button_MightyEagle") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§1!j§.getItemByName("Button_MightyEagle") as §3!6§).setComponentState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§1!j§.getItemByName("Button_Pause") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§]a§();
         if(this.§5H§ != null)
         {
            this.§5H§.stop();
            this.§5H§ = null;
         }
      }
      
      protected function §#g§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§7!Q§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§8r§.length)
            {
               _loc1_ += this.§8r§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§7!Q§ = true;
               §0!g§.§8"0§(§0!g§.§&o§,§[!m§.§<!D§);
            }
         }
         if(this.§8!`§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §2!4§() : void
      {
         var _loc1_:int = §8",§.getScore();
         var _loc2_:int = this.§]!w§.getValue();
         if(_loc2_ < _loc1_ && this.§7!Q§)
         {
            this.§8!`§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§2!w§.isOpen)
         {
            return §4E§.STATE_STATUS_RUNNING;
         }
         if(§8!0§.§?2§.objects.mSardineCanAdded)
         {
            (§1!j§.getItemByName("Container_MEScore") as § use§).setVisibility(true);
         }
         this.§#g§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§[!z§(param1);
         if(this.§1!-§ == §@!V§ && !§8!0§.§?2§.objects.isPigsAlive())
         {
            this.§-r§();
         }
         if((this.§1!-§ == §@!V§ || this.§1!-§ == §#!a§) && §8!0§.§?2§.slingshot.mSlingShotState == §=$§.§3!_§)
         {
            this.§-#§();
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      protected function §-r§() : void
      {
         this.§1!-§ = §#!a§;
      }
      
      protected function §-#§() : void
      {
         (§1!j§.getItemByName("Button_MightyEagle") as §3!6§).setComponentState(§6"0§.§<>§);
         (§1!j§.getItemByName("Button_MightyEagle") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§5H§ == null)
         {
            this.§5H§ = §"!5§.§9j§.§4!p§(§1!j§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§1!-§ = §5!§;
         this.§5H§.onComplete = this.§>]§;
         this.§5H§.play();
      }
      
      protected function §>]§() : void
      {
         this.§5H§ = §"!5§.§9j§.§4!p§(§1!j§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§5H§.play();
         this.§1!-§ = §5!§;
      }
      
      override public function getVictoryState() : String
      {
         if(§8!0§.§?2§.objects.mMightyEagleAdded)
         {
            return §-!H§.§#!w§;
         }
         return §?!B§.§#!w§;
      }
      
      protected function §@!x§() : String
      {
         return §[!E§.§#!w§;
      }
      
      override public function getLoserState() : String
      {
         return §9!,§.§#!w§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §[!E§.§%!,§();
               mNextState = this.§@!x§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§8!0§.§`"&§)
         {
            switch(param1.keyCode)
            {
               case 49:
                  break;
               case 50:
                  break;
               case 51:
                  break;
               case 52:
               case 53:
                  §[!E§.§%!,§();
                  mNextState = §[!E§.§#!w§;
                  break;
               case 54:
                  §[!E§.§ !E§();
                  mNextState = §[!E§.§#!w§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         if(param3 is §3!6§)
         {
            if(param1 == §#p§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §9<§.§0!d§();
            }
            else if(param1 == §#p§.LISTENER_EVENT_MOUSE_UP)
            {
               §9<§.§,w§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §2!w§.§-x§();
               break;
            case "PAUSE":
               mNextState = this.§@]§();
               break;
            case "RESTART_LEVEL":
               §[!E§.§%!,§();
               mNextState = §[!E§.§#!w§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!U§.§2!Z§();
         }
      }
      
      protected function §@]§() : String
      {
         return §%p§.§#!w§;
      }
      
      protected function §=^§() : void
      {
         §8!0§.§?2§.§=^§();
         var _loc1_:int = AngryBirdsFP11.§8!v§.§7!$§(§[!m§.§<!D§);
         §1!j§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§"!'§ = true;
         this.§-#§();
      }
      
      protected function §[!z§(param1:Number) : void
      {
         this.§2!4§();
      }
   }
}
