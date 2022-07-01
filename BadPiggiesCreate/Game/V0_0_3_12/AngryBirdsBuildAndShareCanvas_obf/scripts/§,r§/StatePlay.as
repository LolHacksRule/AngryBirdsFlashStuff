package §,r§
{
   import §"p§.§`!y§;
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §-!@§.§5!@§;
   import §-!^§.§-y§;
   import §-!^§.§<s§;
   import §0E§.§-!F§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §7"1§.§%W§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §[B§.§^W§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §,!3§
   {
      
      public static const §8n§:String = "StatePlay";
      
      public static const §5!N§:int = 50;
      
      protected static const §76§:String = "MightyEagleButtonVisible";
      
      protected static const §5a§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §,<§:String = "MightyEagleButtonHide";
       
      
      protected var §0!H§:§<s§;
      
      protected var §#"!§:§+I§;
      
      protected var §9!t§:String;
      
      protected var §<!<§:Boolean;
      
      private var §-",§:Vector.<int>;
      
      private var §-1§:Boolean;
      
      private var §7b§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§0!H§ = new §<s§();
         this.§-",§ = new Vector.<int>(32);
         super(param1,param2);
         this.§-",§[3] = 5000;
         this.§-",§[7] = 5000;
         this.§-",§[8] = 5000;
         this.§-",§[9] = 5000;
         this.§-",§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelPlay[0]);
      }
      
      protected function §6!7§() : void
      {
      }
      
      private function §;"3§(param1:TimerEvent) : void
      {
         (§?F§.getItemByName("TextField_METimer") as §6m§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§4`§();
         super.levelStarted();
         if(§?F§.getItemByName("Button_MightyEagle"))
         {
            §?F§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §^k§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§5!Y§();
      }
      
      protected function §4`§() : void
      {
         §^k§.§3,§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §8!b§() : void
      {
         §?F§.getItemByName("TextField_METimer").setVisibility(false);
         §?F§.getItemByName("Container_MEScore").setVisibility(false);
         §?F§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §?F§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §5!Y§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§0!H§.§8>§(0);
         this.§3"9§(0);
         this.§8!b§();
         if(§^u§.§>R§ != null)
         {
            _loc1_ = new Bitmap(§^u§.§>R§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§?F§.getItemByName("MovieClip_AvatarPlaceholder") as §;!P§).changeMovieClip(_loc2_);
            §?F§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§9!t§ = §76§;
         this.§#"!§ = null;
         this.§<!<§ = false;
      }
      
      public function §]!y§() : void
      {
         (§?F§.getItemByName("Button_MightyEagle") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?F§.getItemByName("Button_MightyEagle") as §;!Z§).setComponentState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§?F§.getItemByName("Button_Pause") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§]!y§();
         if(this.§#"!§ != null)
         {
            this.§#"!§.stop();
            this.§#"!§ = null;
         }
      }
      
      protected function §<!`§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§-1§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§-",§.length)
            {
               _loc1_ += this.§-",§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§-1§ = true;
               §-y§.§+"=§(§-y§.§%"-§,§-!F§.§"!L§);
            }
         }
         if(this.§7b§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §9!Q§() : void
      {
         var _loc1_:int = §<!#§.getScore();
         var _loc2_:int = this.§0!H§.getValue();
         if(_loc2_ < _loc1_ && this.§-1§)
         {
            this.§7b§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§5!@§.isOpen)
         {
            return §,v§.STATE_STATUS_RUNNING;
         }
         if(§%W§.§5"8§.objects.mSardineCanAdded)
         {
            (§?F§.getItemByName("Container_MEScore") as §+!?§).setVisibility(true);
         }
         this.§<!`§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§3"9§(param1);
         if(this.§9!t§ == §76§ && !§%W§.§5"8§.objects.isPigsAlive())
         {
            this.§9!M§();
         }
         if((this.§9!t§ == §76§ || this.§9!t§ == §5a§) && §%W§.§5"8§.slingshot.mSlingShotState == §^W§.§;!Q§)
         {
            this.§7L§();
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      protected function §9!M§() : void
      {
         this.§9!t§ = §5a§;
      }
      
      protected function §7L§() : void
      {
         (§?F§.getItemByName("Button_MightyEagle") as §;!Z§).setComponentState(§;_§.§<!v§);
         (§?F§.getItemByName("Button_MightyEagle") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§#"!§ == null)
         {
            this.§#"!§ = §-!M§.§ "!§.§+d§(§?F§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§9!t§ = §,<§;
         this.§#"!§.onComplete = this.§1!R§;
         this.§#"!§.play();
      }
      
      protected function §1!R§() : void
      {
         this.§#"!§ = §-!M§.§ "!§.§+d§(§?F§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§#"!§.play();
         this.§9!t§ = §,<§;
      }
      
      override public function getVictoryState() : String
      {
         if(§%W§.§5"8§.objects.mMightyEagleAdded)
         {
            return §]#§.§8n§;
         }
         return §]!S§.§8n§;
      }
      
      protected function §=d§() : String
      {
         return §'!O§.§8n§;
      }
      
      override public function getLoserState() : String
      {
         return §3!?§.§8n§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §'!O§.§8U§();
               mNextState = this.§=d§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§%W§.§;[§)
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
                  §'!O§.§8U§();
                  mNextState = §'!O§.§8n§;
                  break;
               case 54:
                  §'!O§.§7!-§();
                  mNextState = §'!O§.§8n§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         if(param3 is §;!Z§)
         {
            if(param1 == §<!w§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §`!y§.§%0§();
            }
            else if(param1 == §<!w§.LISTENER_EVENT_MOUSE_UP)
            {
               §`!y§.§6>§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §5!@§.§=!§();
               break;
            case "PAUSE":
               mNextState = this.§ l§();
               break;
            case "RESTART_LEVEL":
               §'!O§.§8U§();
               mNextState = §'!O§.§8n§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!V§.§=!C§();
         }
      }
      
      protected function § l§() : String
      {
         return §8!%§.§8n§;
      }
      
      protected function §6c§() : void
      {
         §%W§.§5"8§.§6c§();
         var _loc1_:int = AngryBirdsFP11.§`!j§.§<!q§(§-!F§.§"!L§);
         §?F§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§<!<§ = true;
         this.§7L§();
      }
      
      protected function §3"9§(param1:Number) : void
      {
         this.§9!Q§();
      }
   }
}
