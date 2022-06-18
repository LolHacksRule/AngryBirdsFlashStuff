package §?7§
{
   import §"V§.§true§;
   import §%J§.§-!A§;
   import §+!%§.§-C§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §2x§.§9!@§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§+;§;
   import §8B§.§6!9§;
   import §<!@§.§!P§;
   import §?!%§.§ l§;
   import §?!%§.§?!7§;
   import §[V§.§02§;
   import §[V§.§1;§;
   import §[V§.§=!'§;
   import §[V§.§`@§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import §while§.§03§;
   
   public class StatePlay extends §'[§
   {
      
      public static const §4!&§:String = "StatePlay";
      
      public static const §"W§:int = 50;
      
      protected static const §;v§:String = "MightyEagleButtonVisible";
      
      protected static const § U§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §^!,§:String = "MightyEagleButtonHide";
       
      
      protected var §`!+§:§03§;
      
      protected var §-U§:§ l§;
      
      protected var §>!&§:String;
      
      protected var §@l§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§`!+§ = new §03§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_LevelPlay[0]);
      }
      
      protected function §`u§() : void
      {
      }
      
      private function §<!B§(param1:TimerEvent) : void
      {
         (§6!$§.getItemByName("TextField_METimer") as §`@§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §;!>§.§&;§();
         super.levelStarted();
         if(§6!$§.getItemByName("Button_MightyEagle"))
         {
            §6!$§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §;!>§.§>t§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§ do§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §6!$§.getItemByName("TextField_METimer").setVisibility(false);
         §6!$§.getItemByName("Container_MEScore").setVisibility(false);
         §6!$§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §6!$§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function § do§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§`!+§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§&M§.§-^§ != null)
         {
            _loc1_ = new Bitmap(§&M§.§-^§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§6!$§.getItemByName("MovieClip_AvatarPlaceholder") as §02§).changeMovieClip(_loc2_);
            §6!$§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§>!&§ = §;v§;
         this.§-U§ = null;
         this.§@l§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§6!$§.getItemByName("Button_MightyEagle") as §1;§).setComponentVisualState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§6!$§.getItemByName("Button_MightyEagle") as §1;§).setComponentState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§6!$§.getItemByName("Button_Pause") as §1;§).setComponentVisualState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§-U§ != null)
         {
            this.§-U§.stop();
            this.§-U§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§-!A§.isOpen)
         {
            return §true§.STATE_STATUS_RUNNING;
         }
         if(§?'§.§5!§.objects.mSardineCanAdded)
         {
            (§6!$§.getItemByName("Container_MEScore") as §=!'§).setVisibility(true);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§>!&§ == §;v§ && !§?'§.§5!§.objects.isPigsAlive())
         {
            this.§@V§();
         }
         if((this.§>!&§ == §;v§ || this.§>!&§ == § U§) && §?'§.§5!§.slingshot.mSlingShotState == §-C§.§<i§)
         {
            this.hideMightyEagleButton();
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      protected function §@V§() : void
      {
         this.§>!&§ = § U§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§6!$§.getItemByName("Button_MightyEagle") as §1;§).setComponentState(§+;§.§!!#§);
         (§6!$§.getItemByName("Button_MightyEagle") as §1;§).setComponentVisualState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§-U§ == null)
         {
            this.§-U§ = §?!7§.§^7§.§^!0§(§6!$§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§>!&§ = §^!,§;
         this.§-U§.onComplete = this.§3!G§;
         this.§-U§.play();
      }
      
      protected function §3!G§() : void
      {
         this.§-U§ = §?!7§.§^7§.§^!0§(§6!$§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§-U§.play();
         this.§>!&§ = §^!,§;
      }
      
      override public function getVictoryState() : String
      {
         if(§?'§.§5!§.objects.mMightyEagleAdded)
         {
            return §[!B§.§4!&§;
         }
         return §@!-§.§4!&§;
      }
      
      protected function §+!5§() : String
      {
         return §'!6§.§4!&§;
      }
      
      override public function getLoserState() : String
      {
         return §^K§.§4!&§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §'!6§.§ !F§();
               mNextState = this.§+!5§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§?'§.§!k§)
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
                  §'!6§.§ !F§();
                  mNextState = §'!6§.§4!&§;
                  break;
               case 54:
                  §'!6§.§'X§();
                  mNextState = §'!6§.§4!&§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         if(param3 is §1;§)
         {
            if(param1 == §6!9§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §9!@§.§&=§();
            }
            else if(param1 == §6!9§.LISTENER_EVENT_MOUSE_UP)
            {
               §9!@§.§]!$§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §-!A§.§ 4§();
               break;
            case "PAUSE":
               mNextState = this.§;d§();
               break;
            case "RESTART_LEVEL":
               §'!6§.§ !F§();
               mNextState = §'!6§.§4!&§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ for§.§>§();
         }
      }
      
      protected function §;d§() : String
      {
         return §,]§.§4!&§;
      }
      
      protected function §7!$§() : void
      {
         §?'§.§5!§.§7!$§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§8!4§(§!P§.§4R§);
         §6!$§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§@l§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
      }
   }
}
