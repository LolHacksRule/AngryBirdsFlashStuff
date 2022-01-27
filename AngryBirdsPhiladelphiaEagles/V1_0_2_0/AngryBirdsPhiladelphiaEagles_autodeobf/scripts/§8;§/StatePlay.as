package §8;§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §%"§.§7?§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §9!0§.§ §;
   import §9!0§.§3!2§;
   import §9c§.§,x§;
   import §9c§.§6P§;
   import §<!<§.§ H§;
   import §<!F§.§5!+§;
   import §=!H§.§9V§;
   import §=!H§.§=<§;
   import §=!H§.§[R§;
   import §=!H§.§`S§;
   import §?!;§.§6H§;
   import §@V§.§-'§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §0L§
   {
      
      public static const §"Z§:String = "StatePlay";
      
      public static const §3u§:int = 50;
      
      protected static const §!!0§:String = "MightyEagleButtonVisible";
      
      protected static const §,_§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §!w§:String = "MightyEagleButtonHide";
       
      
      protected var §=F§:§3!2§;
      
      protected var §!]§:§ !4§;
      
      protected var §%!L§:String;
      
      protected var §2p§:Boolean;
      
      private var §]=§:Vector.<int>;
      
      private var §9!%§:Boolean;
      
      private var §9!!§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§=F§ = new §3!2§();
         this.§]=§ = new Vector.<int>(32);
         super(param1,param2);
         this.§]=§[3] = 5000;
         this.§]=§[7] = 5000;
         this.§]=§[8] = 5000;
         this.§]=§[9] = 5000;
         this.§]=§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_LevelPlay[0]);
      }
      
      protected function §=!%§() : void
      {
      }
      
      private function §+Q§(param1:TimerEvent) : void
      {
         (§>2§.getItemByName("TextField_METimer") as §`S§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§!Q§();
         super.levelStarted();
         if(§>2§.getItemByName("Button_MightyEagle"))
         {
            §>2§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §3V§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§>!&§();
      }
      
      protected function §!Q§() : void
      {
         §3V§.§0x§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §>2§.getItemByName("TextField_METimer").setVisibility(false);
         §>2§.getItemByName("Container_MEScore").setVisibility(false);
         §>2§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §>2§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §>!&§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§=F§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§6!F§.§5!3§ != null)
         {
            _loc1_ = new Bitmap(§6!F§.§5!3§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§>2§.getItemByName("MovieClip_AvatarPlaceholder") as §[R§).changeMovieClip(_loc2_);
            §>2§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§%!L§ = §!!0§;
         this.§!]§ = null;
         this.§2p§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§>2§.getItemByName("Button_MightyEagle") as §=<§).setComponentVisualState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§>2§.getItemByName("Button_MightyEagle") as §=<§).setComponentState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§>2§.getItemByName("Button_Pause") as §=<§).setComponentVisualState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§!]§ != null)
         {
            this.§!]§.stop();
            this.§!]§ = null;
         }
      }
      
      protected function §^!G§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§9!%§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§]=§.length)
            {
               _loc1_ += this.§]=§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§9!%§ = true;
               § §.§,!1§(§ §.§63§,§6H§.§"Q§);
            }
         }
         if(this.§9!!§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §-#§() : void
      {
         var _loc1_:int = §#!H§.getScore();
         var _loc2_:int = this.§=F§.getValue();
         if(_loc2_ < _loc1_ && this.§9!%§)
         {
            this.§9!!§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§ H§.isOpen)
         {
            return §!L§.STATE_STATUS_RUNNING;
         }
         if(§5!+§.§6!§.objects.mSardineCanAdded)
         {
            (§>2§.getItemByName("Container_MEScore") as §9V§).setVisibility(true);
         }
         this.§^!G§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§%!L§ == §!!0§ && !§5!+§.§6!§.objects.isPigsAlive())
         {
            this.§?d§();
         }
         if((this.§%!L§ == §!!0§ || this.§%!L§ == §,_§) && §5!+§.§6!§.slingshot.mSlingShotState == §7?§.§for §)
         {
            this.hideMightyEagleButton();
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      protected function §?d§() : void
      {
         this.§%!L§ = §,_§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§>2§.getItemByName("Button_MightyEagle") as §=<§).setComponentState(§6P§.§^!<§);
         (§>2§.getItemByName("Button_MightyEagle") as §=<§).setComponentVisualState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§!]§ == null)
         {
            this.§!]§ = §49§.§&y§.§=!3§(§>2§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§%!L§ = §!w§;
         this.§!]§.onComplete = this.§2!<§;
         this.§!]§.play();
      }
      
      protected function §2!<§() : void
      {
         this.§!]§ = §49§.§&y§.§=!3§(§>2§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§!]§.play();
         this.§%!L§ = §!w§;
      }
      
      override public function getVictoryState() : String
      {
         if(§5!+§.§6!§.objects.mMightyEagleAdded)
         {
            return § $§.§"Z§;
         }
         return §9h§.§"Z§;
      }
      
      protected function §,<§() : String
      {
         return §8^§.§"Z§;
      }
      
      override public function getLoserState() : String
      {
         return §!u§.§"Z§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §8^§.§1!"§();
               mNextState = this.§,<§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§5!+§.§7I§)
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
                  §8^§.§1!"§();
                  mNextState = §8^§.§"Z§;
                  break;
               case 54:
                  §8^§.§&!O§();
                  mNextState = §8^§.§"Z§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         if(param3 is §=<§)
         {
            if(param1 == §,x§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §-'§.§'j§();
            }
            else if(param1 == §,x§.LISTENER_EVENT_MOUSE_UP)
            {
               §-'§.§`!&§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               § H§.§^m§();
               break;
            case "PAUSE":
               mNextState = this.§1g§();
               break;
            case "RESTART_LEVEL":
               §8^§.§1!"§();
               mNextState = §8^§.§"Z§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"Y§.§4%§();
         }
      }
      
      protected function §1g§() : String
      {
         return §3!8§.§"Z§;
      }
      
      protected function §>_§() : void
      {
         §5!+§.§6!§.§>_§();
         var _loc1_:int = AngryBirdsFP11.§^O§.§#!@§(§6H§.§"Q§);
         §>2§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§2p§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§-#§();
      }
   }
}
