package §^U§
{
   import §#";§.§0"#§;
   import §%!0§.§3"!§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §6]§.§8!W§;
   import §;<§.§'B§;
   import §<!1§.§&%§;
   import §<!1§.§9!=§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §?!'§.§3$§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §%"3§
   {
      
      public static const §%!Q§:String = "StatePlay";
      
      public static const §&5§:int = 50;
      
      protected static const §=0§:String = "MightyEagleButtonVisible";
      
      protected static const §!"&§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §^6§:String = "MightyEagleButtonHide";
       
      
      protected var §-"9§:§9!=§;
      
      protected var §2"4§:§=!r§;
      
      protected var §@!x§:String;
      
      protected var §9"%§:Boolean;
      
      private var §]!D§:Vector.<int>;
      
      private var §6'§:Boolean;
      
      private var §&!1§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§-"9§ = new §9!=§();
         this.§]!D§ = new Vector.<int>(32);
         super(param1,param2);
         this.§]!D§[3] = 5000;
         this.§]!D§[7] = 5000;
         this.§]!D§[8] = 5000;
         this.§]!D§[9] = 5000;
         this.§]!D§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelPlay[0]);
      }
      
      protected function § "<§() : void
      {
      }
      
      private function §[7§(param1:TimerEvent) : void
      {
         (§`!v§.getItemByName("TextField_METimer") as §!!]§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§4!!§();
         super.levelStarted();
         if(§`!v§.getItemByName("Button_MightyEagle"))
         {
            §`!v§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §0"#§.§9"2§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§2N§();
      }
      
      protected function §4!!§() : void
      {
         §0"#§.§4"#§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §`!f§() : void
      {
         §`!v§.getItemByName("TextField_METimer").setVisibility(false);
         §`!v§.getItemByName("Container_MEScore").setVisibility(false);
         §`!v§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §`!v§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §2N§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§-"9§.§2">§(0);
         this.§^!`§(0);
         this.§`!f§();
         if(§7!X§.§[p§ != null)
         {
            _loc1_ = new Bitmap(§7!X§.§[p§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§`!v§.getItemByName("MovieClip_AvatarPlaceholder") as §@u§).changeMovieClip(_loc2_);
            §`!v§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§@!x§ = §=0§;
         this.§2"4§ = null;
         this.§9"%§ = false;
      }
      
      public function §@!T§() : void
      {
         (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§`!v§.getItemByName("Button_Pause") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§@!T§();
         if(this.§2"4§ != null)
         {
            this.§2"4§.stop();
            this.§2"4§ = null;
         }
      }
      
      protected function §;!+§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§6'§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§]!D§.length)
            {
               _loc1_ += this.§]!D§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§6'§ = true;
               §&%§.§#W§(§&%§.§[!-§,§`!r§.§0B§);
            }
         }
         if(this.§&!1§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function § o§() : void
      {
         var _loc1_:int = §%!x§.getScore();
         var _loc2_:int = this.§-"9§.getValue();
         if(_loc2_ < _loc1_ && this.§6'§)
         {
            this.§&!1§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§3$§.isOpen)
         {
            return §'B§.STATE_STATUS_RUNNING;
         }
         if(§'_§.§=M§.objects.mSardineCanAdded)
         {
            (§`!v§.getItemByName("Container_MEScore") as §6W§).setVisibility(true);
         }
         this.§;!+§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§^!`§(param1);
         if(this.§@!x§ == §=0§ && !§'_§.§=M§.objects.isPigsAlive())
         {
            this.§ C§();
         }
         if((this.§@!x§ == §=0§ || this.§@!x§ == §!"&§) && §'_§.§=M§.slingshot.mSlingShotState == §3"!§.§`!s§)
         {
            this.§%]§();
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      protected function § C§() : void
      {
         this.§@!x§ = §!"&§;
      }
      
      protected function §%]§() : void
      {
         (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setComponentState(§>!D§.§&!j§);
         (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§2"4§ == null)
         {
            this.§2"4§ = §7I§.§[E§.§ ";§(§`!v§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§@!x§ = §^6§;
         this.§2"4§.onComplete = this.§%![§;
         this.§2"4§.play();
      }
      
      protected function §%![§() : void
      {
         this.§2"4§ = §7I§.§[E§.§ ";§(§`!v§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§2"4§.play();
         this.§@!x§ = §^6§;
      }
      
      override public function getVictoryState() : String
      {
         if(§'_§.§=M§.objects.mMightyEagleAdded)
         {
            return §+"!§.§%!Q§;
         }
         return §7A§.§%!Q§;
      }
      
      protected function §"!0§() : String
      {
         return §`!;§.§%!Q§;
      }
      
      override public function getLoserState() : String
      {
         return §9k§.§%!Q§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §`!;§.§%P§();
               mNextState = this.§"!0§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§'_§.§^q§)
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
                  §`!;§.§%P§();
                  mNextState = §`!;§.§%!Q§;
                  break;
               case 54:
                  §`!;§.§;c§();
                  mNextState = §`!;§.§%!Q§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         if(param3 is §9"8§)
         {
            if(param1 == §0=§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §8!W§.§for§();
            }
            else if(param1 == §0=§.LISTENER_EVENT_MOUSE_UP)
            {
               §8!W§.§^!R§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §3$§.§4!W§();
               break;
            case "PAUSE":
               mNextState = this.§;!j§();
               break;
            case "RESTART_LEVEL":
               §`!;§.§%P§();
               mNextState = §`!;§.§%!Q§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@"7§.§>!5§();
         }
      }
      
      protected function §;!j§() : String
      {
         return §@!y§.§%!Q§;
      }
      
      protected function §7!_§() : void
      {
         §'_§.§=M§.§7!_§();
         var _loc1_:int = AngryBirdsFP11.§>!7§.§6!G§(§`!r§.§0B§);
         §`!v§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§9"%§ = true;
         this.§%]§();
      }
      
      protected function §^!`§(param1:Number) : void
      {
         this.§ o§();
      }
   }
}
