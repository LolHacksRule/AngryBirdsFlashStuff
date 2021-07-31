package §>!A§
{
   import §"!&§.§#!,§;
   import §+!"§.§@P§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §4!H§.§?_§;
   import §4!H§.§[v§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §;!B§.§#f§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §?b§.§4K§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§`!6§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §^e§
   {
      
      public static const §?x§:String = "StatePlay";
      
      public static const §!!?§:int = 50;
      
      protected static const §?m§:String = "MightyEagleButtonVisible";
      
      protected static const §>!§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §<!9§:String = "MightyEagleButtonHide";
       
      
      protected var §>a§:§?_§;
      
      protected var §,!0§:§?!3§;
      
      protected var §=!'§:String;
      
      protected var §3!A§:Boolean;
      
      private var §5!#§:Vector.<int>;
      
      private var §!!&§:Boolean;
      
      private var §&$§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§>a§ = new §?_§();
         this.§5!#§ = new Vector.<int>(32);
         super(param1,param2);
         this.§5!#§[3] = 5000;
         this.§5!#§[7] = 5000;
         this.§5!#§[8] = 5000;
         this.§5!#§[9] = 5000;
         this.§5!#§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_LevelPlay[0]);
      }
      
      protected function §@S§() : void
      {
      }
      
      private function §<v§(param1:TimerEvent) : void
      {
         (§[=§.getItemByName("TextField_METimer") as §3D§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §6I§.§%,§();
         super.levelStarted();
         if(§[=§.getItemByName("Button_MightyEagle"))
         {
            §[=§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §6I§.§ ;§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§,I§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §[=§.getItemByName("TextField_METimer").setVisibility(false);
         §[=§.getItemByName("Container_MEScore").setVisibility(false);
         §[=§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §[=§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §,I§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§>a§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§!!=§.§]2§ != null)
         {
            _loc1_ = new Bitmap(§!!=§.§]2§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§[=§.getItemByName("MovieClip_AvatarPlaceholder") as §`!6§).changeMovieClip(_loc2_);
            §[=§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§=!'§ = §?m§;
         this.§,!0§ = null;
         this.§3!A§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§[=§.getItemByName("Button_MightyEagle") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§[=§.getItemByName("Button_MightyEagle") as §?q§).setComponentState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§[=§.getItemByName("Button_Pause") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§,!0§ != null)
         {
            this.§,!0§.stop();
            this.§,!0§ = null;
         }
      }
      
      protected function §5p§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§!!&§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§5!#§.length)
            {
               _loc1_ += this.§5!#§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§!!&§ = true;
               §[v§.§,9§(§[v§.§!l§,§5j§.§%V§);
            }
         }
         if(this.§&$§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §9! §() : void
      {
         var _loc1_:int = §7!9§.getScore();
         var _loc2_:int = this.§>a§.getValue();
         if(_loc2_ < _loc1_ && this.§!!&§)
         {
            this.§&$§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§#f§.isOpen)
         {
            return §#!,§.STATE_STATUS_RUNNING;
         }
         if(§[k§.§&@§.objects.mSardineCanAdded)
         {
            (§[=§.getItemByName("Container_MEScore") as §3C§).setVisibility(true);
         }
         this.§5p§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§=!'§ == §?m§ && !§[k§.§&@§.objects.isPigsAlive())
         {
            this.§=;§();
         }
         if((this.§=!'§ == §?m§ || this.§=!'§ == §>!§) && §[k§.§&@§.slingshot.mSlingShotState == §4K§.§9"§)
         {
            this.hideMightyEagleButton();
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      protected function §=;§() : void
      {
         this.§=!'§ = §>!§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§[=§.getItemByName("Button_MightyEagle") as §?q§).setComponentState(§`!&§.§9I§);
         (§[=§.getItemByName("Button_MightyEagle") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§,!0§ == null)
         {
            this.§,!0§ = §,B§.§^n§.§2E§(§[=§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§=!'§ = §<!9§;
         this.§,!0§.onComplete = this.§"3§;
         this.§,!0§.play();
      }
      
      protected function §"3§() : void
      {
         this.§,!0§ = §,B§.§^n§.§2E§(§[=§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§,!0§.play();
         this.§=!'§ = §<!9§;
      }
      
      override public function getVictoryState() : String
      {
         if(§[k§.§&@§.objects.mMightyEagleAdded)
         {
            return §"8§.§?x§;
         }
         return §"'§.§?x§;
      }
      
      protected function §#! §() : String
      {
         return §,w§.§?x§;
      }
      
      override public function getLoserState() : String
      {
         return §>8§.§?x§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §,w§.§9!D§();
               mNextState = this.§#! §();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§[k§.§,#§)
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
                  §,w§.§9!D§();
                  mNextState = §,w§.§?x§;
                  break;
               case 54:
                  §,w§.§^^§();
                  mNextState = §,w§.§?x§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         if(param3 is §?q§)
         {
            if(param1 == §^h§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §@P§.§@1§();
            }
            else if(param1 == §^h§.LISTENER_EVENT_MOUSE_UP)
            {
               §@P§.§-§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §#f§.§!h§();
               break;
            case "PAUSE":
               mNextState = this.§!!G§();
               break;
            case "RESTART_LEVEL":
               §,w§.§9!D§();
               mNextState = §,w§.§?x§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§,s§.§8!1§();
         }
      }
      
      protected function §!!G§() : String
      {
         return §?K§.§?x§;
      }
      
      protected function §7!;§() : void
      {
         §[k§.§&@§.§7!;§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§ !&§(§5j§.§%V§);
         §[=§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§3!A§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§9! §();
      }
   }
}
