package §##§
{
   import §"I§.§,&§;
   import §"I§.§7#§;
   import §'!N§.§%!E§;
   import §'!N§.§>p§;
   import §,!<§.§6!M§;
   import §-!5§.§1`§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §2!!§.§0p§;
   import §5=§.§^n§;
   import §=8§.§&H§;
   import §=8§.§'^§;
   import §=8§.§,!%§;
   import §=8§.dynamic;
   import §>2§.§+!E§;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §<D§
   {
      
      public static const §=,§:String = "StatePlay";
      
      public static const §^!5§:int = 50;
      
      protected static const §5w§:String = "MightyEagleButtonVisible";
      
      protected static const §0,§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §@G§:String = "MightyEagleButtonHide";
       
      
      protected var §`!6§:§,&§;
      
      protected var §=!7§:§]H§;
      
      protected var §5!#§:String;
      
      protected var §=!B§:Boolean;
      
      private var §2h§:Vector.<int>;
      
      private var §2W§:Boolean;
      
      private var §=f§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§`!6§ = new §,&§();
         this.§2h§ = new Vector.<int>(32);
         super(param1,param2);
         this.§2h§[3] = 5000;
         this.§2h§[7] = 5000;
         this.§2h§[8] = 5000;
         this.§2h§[9] = 5000;
         this.§2h§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_LevelPlay[0]);
      }
      
      protected function §#! §() : void
      {
      }
      
      private function §"!F§(param1:TimerEvent) : void
      {
         (§ §.getItemByName("TextField_METimer") as §&H§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§2U§();
         super.levelStarted();
         if(§ §.getItemByName("Button_MightyEagle"))
         {
            § §.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §9k§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§>b§();
      }
      
      protected function §2U§() : void
      {
         §9k§.§return§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         § §.getItemByName("TextField_METimer").setVisibility(false);
         § §.getItemByName("Container_MEScore").setVisibility(false);
         § §.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         § §.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §>b§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§`!6§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§,r§.§?!D§ != null)
         {
            _loc1_ = new Bitmap(§,r§.§?!D§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§ §.getItemByName("MovieClip_AvatarPlaceholder") as §,!%§).changeMovieClip(_loc2_);
            § §.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§5!#§ = §5w§;
         this.§=!7§ = null;
         this.§=!B§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§ §.getItemByName("Button_MightyEagle") as dynamic).setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§ §.getItemByName("Button_MightyEagle") as dynamic).setComponentState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§ §.getItemByName("Button_Pause") as dynamic).setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§=!7§ != null)
         {
            this.§=!7§.stop();
            this.§=!7§ = null;
         }
      }
      
      protected function §2!=§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§2W§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§2h§.length)
            {
               _loc1_ += this.§2h§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§2W§ = true;
               §7#§.§>!"§(§7#§.§,X§,§^n§.§-7§);
            }
         }
         if(this.§=f§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §@?§() : void
      {
         var _loc1_:int = §^!?§.getScore();
         var _loc2_:int = this.§`!6§.getValue();
         if(_loc2_ < _loc1_ && this.§2W§)
         {
            this.§=f§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§0p§.isOpen)
         {
            return §6!M§.STATE_STATUS_RUNNING;
         }
         if(§2G§.§7!,§.objects.mSardineCanAdded)
         {
            (§ §.getItemByName("Container_MEScore") as §'^§).setVisibility(true);
         }
         this.§2!=§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§5!#§ == §5w§ && !§2G§.§7!,§.objects.isPigsAlive())
         {
            this.§]e§();
         }
         if((this.§5!#§ == §5w§ || this.§5!#§ == §0,§) && §2G§.§7!,§.slingshot.mSlingShotState == §+!E§.§9!§)
         {
            this.hideMightyEagleButton();
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      protected function §]e§() : void
      {
         this.§5!#§ = §0,§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§ §.getItemByName("Button_MightyEagle") as dynamic).setComponentState(§>p§.§3!-§);
         (§ §.getItemByName("Button_MightyEagle") as dynamic).setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§=!7§ == null)
         {
            this.§=!7§ = §<t§.§4J§.§#q§(§ §.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§5!#§ = §@G§;
         this.§=!7§.onComplete = this.§7!=§;
         this.§=!7§.play();
      }
      
      protected function §7!=§() : void
      {
         this.§=!7§ = §<t§.§4J§.§#q§(§ §.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§=!7§.play();
         this.§5!#§ = §@G§;
      }
      
      override public function getVictoryState() : String
      {
         if(§2G§.§7!,§.objects.mMightyEagleAdded)
         {
            return § !E§.§=,§;
         }
         return §8!A§.§=,§;
      }
      
      protected function §2!>§() : String
      {
         return §6l§.§=,§;
      }
      
      override public function getLoserState() : String
      {
         return §="§.§=,§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §6l§.§"w§();
               mNextState = this.§2!>§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§2G§.§`T§)
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
                  §6l§.§"w§();
                  mNextState = §6l§.§=,§;
                  break;
               case 54:
                  §6l§.§'! §();
                  mNextState = §6l§.§=,§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         if(param3 is dynamic)
         {
            if(param1 == §%!E§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §1`§.§2s§();
            }
            else if(param1 == §%!E§.LISTENER_EVENT_MOUSE_UP)
            {
               §1`§.§8@§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §0p§.§#x§();
               break;
            case "PAUSE":
               mNextState = this.§9!6§();
               break;
            case "RESTART_LEVEL":
               §6l§.§"w§();
               mNextState = §6l§.§=,§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§<2§.§ !J§();
         }
      }
      
      protected function §9!6§() : String
      {
         return §[R§.§=,§;
      }
      
      protected function §5!-§() : void
      {
         §2G§.§7!,§.§5!-§();
         var _loc1_:int = AngryBirdsFP11.§ ;§.§4m§(§^n§.§-7§);
         § §.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§=!B§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§@?§();
      }
   }
}
