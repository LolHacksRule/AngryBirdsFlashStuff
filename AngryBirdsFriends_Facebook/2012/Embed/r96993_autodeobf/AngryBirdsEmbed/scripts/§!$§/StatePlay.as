package §!$§
{
   import §!^§.§"%§;
   import §!^§.§+!5§;
   import §'N§.§^]§;
   import §-!'§.§&!H§;
   import §-!'§.§;f§;
   import §-!'§.§@D§;
   import §-!'§.§in §;
   import §-!C§.§#!G§;
   import §3v§.§5G§;
   import §4!'§.§#,§;
   import §4!'§.§4R§;
   import §6[§.§;q§;
   import §6[§.§`!-§;
   import §;U§.§1!5§;
   import §>%§.§]3§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import §`i§.§while§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §+M§
   {
      
      public static const §9"§:String = "StatePlay";
      
      public static const §,f§:int = 50;
      
      protected static const §1"§:String = "MightyEagleButtonVisible";
      
      protected static const §;d§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §3g§:String = "MightyEagleButtonHide";
       
      
      protected var §3Z§:§#,§;
      
      protected var §5!3§:§`!-§;
      
      protected var §2Y§:String;
      
      protected var §-9§:Boolean;
      
      private var §]!A§:Vector.<int>;
      
      private var §?!1§:Boolean;
      
      private var §32§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§3Z§ = new §#,§();
         this.§]!A§ = new Vector.<int>(32);
         super(param1,param2);
         this.§]!A§[3] = 5000;
         this.§]!A§[7] = 5000;
         this.§]!A§[8] = 5000;
         this.§]!A§[9] = 5000;
         this.§]!A§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_LevelPlay[0]);
      }
      
      protected function §-H§() : void
      {
      }
      
      private function §!!8§(param1:TimerEvent) : void
      {
         (§+!2§.getItemByName("TextField_METimer") as §&!H§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §^]§.§@n§();
         super.levelStarted();
         if(§+!2§.getItemByName("Button_MightyEagle"))
         {
            §+!2§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §^]§.§1g§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§>g§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §+!2§.getItemByName("TextField_METimer").setVisibility(false);
         §+!2§.getItemByName("Container_MEScore").setVisibility(false);
         §+!2§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §+!2§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §>g§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§3Z§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§ &§.§<X§ != null)
         {
            _loc1_ = new Bitmap(§ &§.§<X§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§+!2§.getItemByName("MovieClip_AvatarPlaceholder") as §@D§).changeMovieClip(_loc2_);
            §+!2§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§2Y§ = §1"§;
         this.§5!3§ = null;
         this.§-9§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§+!2§.getItemByName("Button_MightyEagle") as §;f§).setComponentVisualState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§+!2§.getItemByName("Button_MightyEagle") as §;f§).setComponentState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§+!2§.getItemByName("Button_Pause") as §;f§).setComponentVisualState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§5!3§ != null)
         {
            this.§5!3§.stop();
            this.§5!3§ = null;
         }
      }
      
      protected function §[%§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§?!1§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§]!A§.length)
            {
               _loc1_ += this.§]!A§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§?!1§ = true;
               §4R§.§>J§(§4R§.§54§,§#!G§.§9C§);
            }
         }
         if(this.§32§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §=V§() : void
      {
         var _loc1_:int = §-!0§.getScore();
         var _loc2_:int = this.§3Z§.getValue();
         if(_loc2_ < _loc1_ && this.§?!1§)
         {
            this.§32§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§1!5§.isOpen)
         {
            return §3!'§.STATE_STATUS_RUNNING;
         }
         if(§]3§.§;v§.objects.mSardineCanAdded)
         {
            (§+!2§.getItemByName("Container_MEScore") as §in §).setVisibility(true);
         }
         this.§[%§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§2Y§ == §1"§ && !§]3§.§;v§.objects.isPigsAlive())
         {
            this.§<L§();
         }
         if((this.§2Y§ == §1"§ || this.§2Y§ == §;d§) && §]3§.§;v§.slingshot.mSlingShotState == §while§.§^K§)
         {
            this.hideMightyEagleButton();
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      protected function §<L§() : void
      {
         this.§2Y§ = §;d§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§+!2§.getItemByName("Button_MightyEagle") as §;f§).setComponentState(§+!5§.§ !G§);
         (§+!2§.getItemByName("Button_MightyEagle") as §;f§).setComponentVisualState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§5!3§ == null)
         {
            this.§5!3§ = §;q§.§9r§.§%!#§(§+!2§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§2Y§ = §3g§;
         this.§5!3§.onComplete = this.§]w§;
         this.§5!3§.play();
      }
      
      protected function §]w§() : void
      {
         this.§5!3§ = §;q§.§9r§.§%!#§(§+!2§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§5!3§.play();
         this.§2Y§ = §3g§;
      }
      
      override public function getVictoryState() : String
      {
         if(§]3§.§;v§.objects.mMightyEagleAdded)
         {
            return §,J§.§9"§;
         }
         return §&!5§.§9"§;
      }
      
      protected function §]!0§() : String
      {
         return § W§.§9"§;
      }
      
      override public function getLoserState() : String
      {
         return §%!$§.§9"§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               § W§.§ =§();
               mNextState = this.§]!0§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§]3§.§;!9§)
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
                  § W§.§ =§();
                  mNextState = § W§.§9"§;
                  break;
               case 54:
                  § W§.§<m§();
                  mNextState = § W§.§9"§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         if(param3 is §;f§)
         {
            if(param1 == §"%§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §5G§.§ u§();
            }
            else if(param1 == §"%§.LISTENER_EVENT_MOUSE_UP)
            {
               §5G§.§'_§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §1!5§.final();
               break;
            case "PAUSE":
               mNextState = this.§2!<§();
               break;
            case "RESTART_LEVEL":
               § W§.§ =§();
               mNextState = § W§.§9"§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"h§.§>B§();
         }
      }
      
      protected function §2!<§() : String
      {
         return §[q§.§9"§;
      }
      
      protected function §"@§() : void
      {
         §]3§.§;v§.§"@§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§4f§(§#!G§.§9C§);
         §+!2§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§-9§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§=V§();
      }
   }
}
