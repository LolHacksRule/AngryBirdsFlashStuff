package §2x§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§8K§;
   import § true§.§<"-§;
   import §""§.§-"§;
   import §&W§.§1!w§;
   import §,!!§.§%!L§;
   import §,!!§.§0"!§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §8!E§.§1!6§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §?!<§
   {
      
      public static const §>H§:String = "StatePlay";
      
      public static const §+#§:int = 50;
      
      protected static const §-!a§:String = "MightyEagleButtonVisible";
      
      protected static const §?![§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §!k§:String = "MightyEagleButtonHide";
       
      
      protected var §;"§:§0"!§;
      
      protected var §2q§:§-!m§;
      
      protected var §`^§:String;
      
      protected var §<"2§:Boolean;
      
      private var §^!j§:Vector.<int>;
      
      private var §]"4§:Boolean;
      
      private var §]"3§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§;"§ = new §0"!§();
         this.§^!j§ = new Vector.<int>(32);
         super(param1,param2);
         this.§^!j§[3] = 5000;
         this.§^!j§[7] = 5000;
         this.§^!j§[8] = 5000;
         this.§^!j§[9] = 5000;
         this.§^!j§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelPlay[0]);
      }
      
      protected function §&!6§() : void
      {
      }
      
      private function §2!E§(param1:TimerEvent) : void
      {
         (§3?§.getItemByName("TextField_METimer") as §<"-§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§<!x§();
         super.levelStarted();
         if(§3?§.getItemByName("Button_MightyEagle"))
         {
            §3?§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §5;§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§++§();
      }
      
      protected function §<!x§() : void
      {
         §5;§.§8X§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §6!o§() : void
      {
         §3?§.getItemByName("TextField_METimer").setVisibility(false);
         §3?§.getItemByName("Container_MEScore").setVisibility(false);
         §3?§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §3?§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §++§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§;"§.§`S§(0);
         this.§`!9§(0);
         this.§6!o§();
         if(§'5§.§!!$§ != null)
         {
            _loc1_ = new Bitmap(§'5§.§!!$§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§3?§.getItemByName("MovieClip_AvatarPlaceholder") as §%!7§).changeMovieClip(_loc2_);
            §3?§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§`^§ = §-!a§;
         this.§2q§ = null;
         this.§<"2§ = false;
      }
      
      public function §#!!§() : void
      {
         (§3?§.getItemByName("Button_MightyEagle") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3?§.getItemByName("Button_MightyEagle") as §8K§).setComponentState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§3?§.getItemByName("Button_Pause") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§#!!§();
         if(this.§2q§ != null)
         {
            this.§2q§.stop();
            this.§2q§ = null;
         }
      }
      
      protected function §1"!§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§]"4§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§^!j§.length)
            {
               _loc1_ += this.§^!j§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§]"4§ = true;
               §%!L§.§"!@§(§%!L§.§'n§,§8!z§.§>!&§);
            }
         }
         if(this.§]"3§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function § h§() : void
      {
         var _loc1_:int = §6!f§.getScore();
         var _loc2_:int = this.§;"§.getValue();
         if(_loc2_ < _loc1_ && this.§]"4§)
         {
            this.§]"3§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§-"§.isOpen)
         {
            return §>!T§.STATE_STATUS_RUNNING;
         }
         if(§5!U§.§,!E§.objects.mSardineCanAdded)
         {
            (§3?§.getItemByName("Container_MEScore") as §1H§).setVisibility(true);
         }
         this.§1"!§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§`!9§(param1);
         if(this.§`^§ == §-!a§ && !§5!U§.§,!E§.objects.isPigsAlive())
         {
            this.§'!w§();
         }
         if((this.§`^§ == §-!a§ || this.§`^§ == §?![§) && §5!U§.§,!E§.slingshot.mSlingShotState == §1!6§.§"4§)
         {
            this.§<!R§();
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      protected function §'!w§() : void
      {
         this.§`^§ = §?![§;
      }
      
      protected function §<!R§() : void
      {
         (§3?§.getItemByName("Button_MightyEagle") as §8K§).setComponentState(§""3§.override);
         (§3?§.getItemByName("Button_MightyEagle") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§2q§ == null)
         {
            this.§2q§ = §"L§.§7!?§.§4!P§(§3?§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§`^§ = §!k§;
         this.§2q§.onComplete = this.§!!T§;
         this.§2q§.play();
      }
      
      protected function §!!T§() : void
      {
         this.§2q§ = §"L§.§7!?§.§4!P§(§3?§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§2q§.play();
         this.§`^§ = §!k§;
      }
      
      override public function getVictoryState() : String
      {
         if(§5!U§.§,!E§.objects.mMightyEagleAdded)
         {
            return §""<§.§>H§;
         }
         return §!0§.§>H§;
      }
      
      protected function §>E§() : String
      {
         return §8D§.§>H§;
      }
      
      override public function getLoserState() : String
      {
         return §40§.§>H§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §8D§.§+!u§();
               mNextState = this.§>E§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§5!U§.§1D§)
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
                  §8D§.§+!u§();
                  mNextState = §8D§.§>H§;
                  break;
               case 54:
                  §8D§.§@P§();
                  mNextState = §8D§.§>H§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         if(param3 is §8K§)
         {
            if(param1 == §0p§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §1!w§.§@I§();
            }
            else if(param1 == §0p§.LISTENER_EVENT_MOUSE_UP)
            {
               §1!w§.§9i§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §-"§.§<" §();
               break;
            case "PAUSE":
               mNextState = this.§#X§();
               break;
            case "RESTART_LEVEL":
               §8D§.§+!u§();
               mNextState = §8D§.§>H§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§2p§.§`W§();
         }
      }
      
      protected function §#X§() : String
      {
         return §-"1§.§>H§;
      }
      
      protected function §`r§() : void
      {
         §5!U§.§,!E§.§`r§();
         var _loc1_:int = AngryBirdsFP11.§"!c§.§7C§(§8!z§.§>!&§);
         §3?§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§<"2§ = true;
         this.§<!R§();
      }
      
      protected function §`!9§(param1:Number) : void
      {
         this.§ h§();
      }
   }
}
