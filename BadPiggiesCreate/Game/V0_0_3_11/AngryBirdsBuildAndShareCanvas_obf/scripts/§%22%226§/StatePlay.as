package §""6§
{
   import §&!!§.§3j§;
   import §'x§.§?z§;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §+%§.§+"%§;
   import §1!v§.§>"!§;
   import §2!O§.§,w§;
   import §2i§.§%!+§;
   import §2i§.§=Q§;
   import §;!A§.§ !F§;
   import §;!A§.§%!`§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §;X§.§ "2§;
   import §?!k§.§0!t§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §4V§
   {
      
      public static const §^z§:String = "StatePlay";
      
      public static const §<!v§:int = 50;
      
      protected static const §"2§:String = "MightyEagleButtonVisible";
      
      protected static const §>l§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §#3§:String = "MightyEagleButtonHide";
       
      
      protected var §-!Q§:§%!+§;
      
      protected var §;!R§:§8!K§;
      
      protected var §'!M§:String;
      
      protected var §9C§:Boolean;
      
      private var §%r§:Vector.<int>;
      
      private var §#"7§:Boolean;
      
      private var §4!6§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§-!Q§ = new §%!+§();
         this.§%r§ = new Vector.<int>(32);
         super(param1,param2);
         this.§%r§[3] = 5000;
         this.§%r§[7] = 5000;
         this.§%r§[8] = 5000;
         this.§%r§[9] = 5000;
         this.§%r§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelPlay[0]);
      }
      
      protected function §1!s§() : void
      {
      }
      
      private function §!!L§(param1:TimerEvent) : void
      {
         (§%""§.getItemByName("TextField_METimer") as § !F§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§'!x§();
         super.levelStarted();
         if(§%""§.getItemByName("Button_MightyEagle"))
         {
            §%""§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §0!t§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§=!@§();
      }
      
      protected function §'!x§() : void
      {
         §0!t§.§,!S§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §!!J§() : void
      {
         §%""§.getItemByName("TextField_METimer").setVisibility(false);
         §%""§.getItemByName("Container_MEScore").setVisibility(false);
         §%""§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §%""§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §=!@§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§-!Q§.§`H§(0);
         this.§#!h§(0);
         this.§!!J§();
         if(§;!U§.§6s§ != null)
         {
            _loc1_ = new Bitmap(§;!U§.§6s§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§%""§.getItemByName("MovieClip_AvatarPlaceholder") as §%!`§).changeMovieClip(_loc2_);
            §%""§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§'!M§ = §"2§;
         this.§;!R§ = null;
         this.§9C§ = false;
      }
      
      public function §;!;§() : void
      {
         (§%""§.getItemByName("Button_MightyEagle") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§%""§.getItemByName("Button_MightyEagle") as §2v§).setComponentState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§%""§.getItemByName("Button_Pause") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§;!;§();
         if(this.§;!R§ != null)
         {
            this.§;!R§.stop();
            this.§;!R§ = null;
         }
      }
      
      protected function §,i§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§#"7§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§%r§.length)
            {
               _loc1_ += this.§%r§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§#"7§ = true;
               §=Q§.§<Q§(§=Q§.§2+§,§+"%§.§9!'§);
            }
         }
         if(this.§4!6§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §&!'§() : void
      {
         var _loc1_:int = §`"5§.getScore();
         var _loc2_:int = this.§-!Q§.getValue();
         if(_loc2_ < _loc1_ && this.§#"7§)
         {
            this.§4!6§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§3j§.isOpen)
         {
            return §,w§.STATE_STATUS_RUNNING;
         }
         if(§?z§.§=7§.objects.mSardineCanAdded)
         {
            (§%""§.getItemByName("Container_MEScore") as §;!u§).setVisibility(true);
         }
         this.§,i§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§#!h§(param1);
         if(this.§'!M§ == §"2§ && !§?z§.§=7§.objects.isPigsAlive())
         {
            this.§>!N§();
         }
         if((this.§'!M§ == §"2§ || this.§'!M§ == §>l§) && §?z§.§=7§.slingshot.mSlingShotState == §>"!§.§5#§)
         {
            this.§=!4§();
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      protected function §>!N§() : void
      {
         this.§'!M§ = §>l§;
      }
      
      protected function §=!4§() : void
      {
         (§%""§.getItemByName("Button_MightyEagle") as §2v§).setComponentState(§"r§.§=!Z§);
         (§%""§.getItemByName("Button_MightyEagle") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§;!R§ == null)
         {
            this.§;!R§ = §%!Z§.§if §.§"<§(§%""§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§'!M§ = §#3§;
         this.§;!R§.onComplete = this.§`_§;
         this.§;!R§.play();
      }
      
      protected function §`_§() : void
      {
         this.§;!R§ = §%!Z§.§if §.§"<§(§%""§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§;!R§.play();
         this.§'!M§ = §#3§;
      }
      
      override public function getVictoryState() : String
      {
         if(§?z§.§=7§.objects.mMightyEagleAdded)
         {
            return §[O§.§^z§;
         }
         return §7"#§.§^z§;
      }
      
      protected function §2!v§() : String
      {
         return §!Z§.§^z§;
      }
      
      override public function getLoserState() : String
      {
         return §4!l§.§^z§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §!Z§.§0!f§();
               mNextState = this.§2!v§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§?z§.§8&§)
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
                  §!Z§.§0!f§();
                  mNextState = §!Z§.§^z§;
                  break;
               case 54:
                  §!Z§.§0""§();
                  mNextState = §!Z§.§^z§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         if(param3 is §2v§)
         {
            if(param1 == §6=§.LISTENER_EVENT_MOUSE_DOWN)
            {
               § "2§.§=i§();
            }
            else if(param1 == §6=§.LISTENER_EVENT_MOUSE_UP)
            {
               § "2§.§'9§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §3j§.§<,§();
               break;
            case "PAUSE":
               mNextState = this.§5!j§();
               break;
            case "RESTART_LEVEL":
               §!Z§.§0!f§();
               mNextState = §!Z§.§^z§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@!N§.§2!1§();
         }
      }
      
      protected function §5!j§() : String
      {
         return §7h§.§^z§;
      }
      
      protected function §%!j§() : void
      {
         §?z§.§=7§.§%!j§();
         var _loc1_:int = AngryBirdsFP11.§8!I§.§>"&§(§+"%§.§9!'§);
         §%""§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§9C§ = true;
         this.§=!4§();
      }
      
      protected function §#!h§(param1:Number) : void
      {
         this.§&!'§();
      }
   }
}
