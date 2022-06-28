package §;m§
{
   import §#h§.§ !H§;
   import §%!6§.§'[§;
   import §%!6§.§;!$§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §2?§.§&h§;
   import §3G§.§3X§;
   import §4C§.§"m§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §>K§.§7R§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §6!C§
   {
      
      public static const §-!A§:String = "StatePlay";
      
      public static const §>!A§:int = 50;
      
      protected static const §`!6§:String = "MightyEagleButtonVisible";
      
      protected static const § r§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §6!H§:String = "MightyEagleButtonHide";
       
      
      protected var §6?§:§'[§;
      
      protected var §`!5§:§3_§;
      
      protected var §9!#§:String;
      
      protected var §'z§:Boolean;
      
      private var §=!7§:Vector.<int>;
      
      private var §#"§:Boolean;
      
      private var §%!?§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§6?§ = new §'[§();
         this.§=!7§ = new Vector.<int>(32);
         super(param1,param2);
         this.§=!7§[3] = 5000;
         this.§=!7§[7] = 5000;
         this.§=!7§[8] = 5000;
         this.§=!7§[9] = 5000;
         this.§=!7§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_LevelPlay[0]);
      }
      
      protected function §2w§() : void
      {
      }
      
      private function §-!#§(param1:TimerEvent) : void
      {
         (§-f§.getItemByName("TextField_METimer") as §<k§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         § !H§.§[!<§();
         super.levelStarted();
         if(§-f§.getItemByName("Button_MightyEagle"))
         {
            §-f§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         § !H§.§ !%§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§@=§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §-f§.getItemByName("TextField_METimer").setVisibility(false);
         §-f§.getItemByName("Container_MEScore").setVisibility(false);
         §-f§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §-f§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §@=§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§6?§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§1!§.§'a§ != null)
         {
            _loc1_ = new Bitmap(§1!§.§'a§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§-f§.getItemByName("MovieClip_AvatarPlaceholder") as §"m§).changeMovieClip(_loc2_);
            §-f§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§9!#§ = §`!6§;
         this.§`!5§ = null;
         this.§'z§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§-f§.getItemByName("Button_MightyEagle") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§-f§.getItemByName("Button_MightyEagle") as §6<§).setComponentState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§-f§.getItemByName("Button_Pause") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§`!5§ != null)
         {
            this.§`!5§.stop();
            this.§`!5§ = null;
         }
      }
      
      protected function §]!5§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§#"§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§=!7§.length)
            {
               _loc1_ += this.§=!7§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§#"§ = true;
               §;!$§.§]c§(§;!$§.§2F§,§59§.§%j§);
            }
         }
         if(this.§%!?§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §<s§() : void
      {
         var _loc1_:int = §^R§.getScore();
         var _loc2_:int = this.§6?§.getValue();
         if(_loc2_ < _loc1_ && this.§#"§)
         {
            this.§%!?§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§&h§.isOpen)
         {
            return §>3§.STATE_STATUS_RUNNING;
         }
         if(§"h§.§1C§.objects.mSardineCanAdded)
         {
            (§-f§.getItemByName("Container_MEScore") as §1!=§).setVisibility(true);
         }
         this.§]!5§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§9!#§ == §`!6§ && !§"h§.§1C§.objects.isPigsAlive())
         {
            this.§=!'§();
         }
         if((this.§9!#§ == §`!6§ || this.§9!#§ == § r§) && §"h§.§1C§.slingshot.mSlingShotState == §3X§.§%g§)
         {
            this.hideMightyEagleButton();
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      protected function §=!'§() : void
      {
         this.§9!#§ = § r§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§-f§.getItemByName("Button_MightyEagle") as §6<§).setComponentState(§[4§.§?[§);
         (§-f§.getItemByName("Button_MightyEagle") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§`!5§ == null)
         {
            this.§`!5§ = §,!G§.§@j§.§47§(§-f§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§9!#§ = §6!H§;
         this.§`!5§.onComplete = this.§0!0§;
         this.§`!5§.play();
      }
      
      protected function §0!0§() : void
      {
         this.§`!5§ = §,!G§.§@j§.§47§(§-f§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§`!5§.play();
         this.§9!#§ = §6!H§;
      }
      
      override public function getVictoryState() : String
      {
         if(§"h§.§1C§.objects.mMightyEagleAdded)
         {
            return §`!%§.§-!A§;
         }
         return § !F§.§-!A§;
      }
      
      protected function §2J§() : String
      {
         return §3'§.§-!A§;
      }
      
      override public function getLoserState() : String
      {
         return §2i§.§-!A§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §3'§.§;3§();
               mNextState = this.§2J§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§"h§.§0b§)
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
                  §3'§.§;3§();
                  mNextState = §3'§.§-!A§;
                  break;
               case 54:
                  §3'§.§+^§();
                  mNextState = §3'§.§-!A§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         if(param3 is §6<§)
         {
            if(param1 == §"?§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §7R§.§05§();
            }
            else if(param1 == §"?§.LISTENER_EVENT_MOUSE_UP)
            {
               §7R§.§8h§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §&h§.§`a§();
               break;
            case "PAUSE":
               mNextState = this.§"'§();
               break;
            case "RESTART_LEVEL":
               §3'§.§;3§();
               mNextState = §3'§.§-!A§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§0P§.§<h§();
         }
      }
      
      protected function §"'§() : String
      {
         return §6e§.§-!A§;
      }
      
      protected function §4A§() : void
      {
         §"h§.§1C§.§4A§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§4a§(§59§.§%j§);
         §-f§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§'z§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§<s§();
      }
   }
}
