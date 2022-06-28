package § !k§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §&!h§.§"[§;
   import §&!h§.§?!K§;
   import §+&§.§ R§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §6z§.§+!D§;
   import §8,§.§+_§;
   import §9#§.§2!E§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§&!G§;
   import §`M§.§,c§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §@q§
   {
      
      public static const §3F§:String = "StatePlay";
      
      public static const §"1§:int = 50;
      
      protected static const §@K§:String = "MightyEagleButtonVisible";
      
      protected static const §4,§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §7c§:String = "MightyEagleButtonHide";
       
      
      protected var §<+§:§?!K§;
      
      protected var §+!H§:§4F§;
      
      protected var §6!t§:String;
      
      protected var §9R§:Boolean;
      
      private var §7!E§:Vector.<int>;
      
      private var §9!w§:Boolean;
      
      private var §&!H§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§<+§ = new §?!K§();
         this.§7!E§ = new Vector.<int>(32);
         super(param1,param2);
         this.§7!E§[3] = 5000;
         this.§7!E§[7] = 5000;
         this.§7!E§[8] = 5000;
         this.§7!E§[9] = 5000;
         this.§7!E§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_LevelPlay[0]);
      }
      
      protected function §&e§() : void
      {
      }
      
      private function §&!3§(param1:TimerEvent) : void
      {
         (§`-§.getItemByName("TextField_METimer") as §3!@§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §6!H§.§[!W§();
         super.levelStarted();
         if(§`-§.getItemByName("Button_MightyEagle"))
         {
            §`-§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §6!H§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §`-§.getItemByName("TextField_METimer").setVisibility(false);
         §`-§.getItemByName("Container_MEScore").setVisibility(false);
         §`-§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §`-§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§<+§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§4A§.§+!$§ != null)
         {
            _loc1_ = new Bitmap(§4A§.§+!$§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§`-§.getItemByName("MovieClip_AvatarPlaceholder") as §&!G§).changeMovieClip(_loc2_);
            §`-§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§6!t§ = §@K§;
         this.§+!H§ = null;
         this.§9R§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§`-§.getItemByName("Button_MightyEagle") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`-§.getItemByName("Button_MightyEagle") as §,c§).setComponentState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§`-§.getItemByName("Button_Pause") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§+!H§ != null)
         {
            this.§+!H§.stop();
            this.§+!H§ = null;
         }
      }
      
      protected function §2&§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§9!w§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§7!E§.length)
            {
               _loc1_ += this.§7!E§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§9!w§ = true;
               §"[§.§8![§(§"[§.§9B§,LevelManager.§^!F§);
            }
         }
         if(this.§&!H§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §@!D§() : void
      {
         var _loc1_:int = § !a§.getScore();
         var _loc2_:int = this.§<+§.getValue();
         if(_loc2_ < _loc1_ && this.§9!w§)
         {
            this.§&!H§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§2!E§.isOpen)
         {
            return §+_§.STATE_STATUS_RUNNING;
         }
         if(§4!]§.§8C§.objects.mSardineCanAdded)
         {
            (§`-§.getItemByName("Container_MEScore") as §9!#§).setVisibility(true);
         }
         this.§2&§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§6!t§ == §@K§ && !§4!]§.§8C§.objects.isPigsAlive())
         {
            this.prepareHideMightyEagleButton();
         }
         if((this.§6!t§ == §@K§ || this.§6!t§ == §4,§) && §4!]§.§8C§.slingshot.mSlingShotState == § R§.§3-§)
         {
            this.hideMightyEagleButton();
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         this.§6!t§ = §4,§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§`-§.getItemByName("Button_MightyEagle") as §,c§).setComponentState(§5!a§.§-n§);
         (§`-§.getItemByName("Button_MightyEagle") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§+!H§ == null)
         {
            this.§+!H§ = §5+§.§^Z§.§=!a§(§`-§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§6!t§ = §7c§;
         this.§+!H§.onComplete = this.onHideMightyEagle;
         this.§+!H§.play();
      }
      
      protected function onHideMightyEagle() : void
      {
         this.§+!H§ = §5+§.§^Z§.§=!a§(§`-§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§+!H§.play();
         this.§6!t§ = §7c§;
      }
      
      override public function getVictoryState() : String
      {
         if(§4!]§.§8C§.objects.mMightyEagleAdded)
         {
            return §'!4§.§3F§;
         }
         return §%N§.§3F§;
      }
      
      protected function set() : String
      {
         return §%]§.§3F§;
      }
      
      override public function getLoserState() : String
      {
         return §0!e§.§3F§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §%]§.§=>§();
               mNextState = this.set();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§4!]§.§2!y§)
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
                  §%]§.§=>§();
                  mNextState = §%]§.§3F§;
                  break;
               case 54:
                  §%]§.§]!b§();
                  mNextState = §%]§.§3F§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         if(param3 is §,c§)
         {
            if(param1 == §7!"§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §+!D§.§,3§();
            }
            else if(param1 == §7!"§.LISTENER_EVENT_MOUSE_UP)
            {
               §+!D§.§&!X§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §2!E§.§]!U§();
               break;
            case "PAUSE":
               mNextState = this.§2!u§();
               break;
            case "RESTART_LEVEL":
               §%]§.§=>§();
               mNextState = §%]§.§3F§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!c§.§catch§();
         }
      }
      
      protected function §2!u§() : String
      {
         return §=!#§.§3F§;
      }
      
      protected function useMightyEagle() : void
      {
         §4!]§.§8C§.useMightyEagle();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§^!F§);
         §`-§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§9R§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§@!D§();
      }
   }
}
