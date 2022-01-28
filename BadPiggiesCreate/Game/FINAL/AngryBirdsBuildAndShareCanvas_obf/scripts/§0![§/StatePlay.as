package §0![§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'@§.§4!n§;
   import §'@§.§^J§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §+h§.§5h§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5!V§.§[!6§;
   import §5"-§.§5y§;
   import §=!M§.§"o§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §6l§
   {
      
      public static const §'=§:String = "StatePlay";
      
      public static const §#!q§:int = 50;
      
      protected static const §6!`§:String = "MightyEagleButtonVisible";
      
      protected static const §'A§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §]"§:String = "MightyEagleButtonHide";
       
      
      protected var §&"$§:§^J§;
      
      protected var §6@§:§3^§;
      
      protected var §?!h§:String;
      
      protected var §=;§:Boolean;
      
      private var §2L§:Vector.<int>;
      
      private var §<!%§:Boolean;
      
      private var §0!n§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§&"$§ = new §^J§();
         this.§2L§ = new Vector.<int>(32);
         super(param1,param2);
         this.§2L§[3] = 5000;
         this.§2L§[7] = 5000;
         this.§2L§[8] = 5000;
         this.§2L§[9] = 5000;
         this.§2L§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelPlay[0]);
      }
      
      protected function §1!'§() : void
      {
      }
      
      private function §%t§(param1:TimerEvent) : void
      {
         (§?E§.getItemByName("TextField_METimer") as §`!<§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§^3§();
         super.levelStarted();
         if(§?E§.getItemByName("Button_MightyEagle"))
         {
            §?E§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §5!U§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§7g§();
      }
      
      protected function §^3§() : void
      {
         §5!U§.§9&§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §&!M§() : void
      {
         §?E§.getItemByName("TextField_METimer").setVisibility(false);
         §?E§.getItemByName("Container_MEScore").setVisibility(false);
         §?E§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §?E§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §7g§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§&"$§.§&!Y§(0);
         this.§9!+§(0);
         this.§&!M§();
         if(§]x§.§<1§ != null)
         {
            _loc1_ = new Bitmap(§]x§.§<1§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§?E§.getItemByName("MovieClip_AvatarPlaceholder") as §%+§).changeMovieClip(_loc2_);
            §?E§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§?!h§ = §6!`§;
         this.§6@§ = null;
         this.§=;§ = false;
      }
      
      public function §5!n§() : void
      {
         (§?E§.getItemByName("Button_MightyEagle") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?E§.getItemByName("Button_MightyEagle") as §="#§).setComponentState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§?E§.getItemByName("Button_Pause") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§5!n§();
         if(this.§6@§ != null)
         {
            this.§6@§.stop();
            this.§6@§ = null;
         }
      }
      
      protected function §^!-§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§<!%§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§2L§.length)
            {
               _loc1_ += this.§2L§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§<!%§ = true;
               §4!n§.§@!Q§(§4!n§.§6C§,§3!w§.§%n§);
            }
         }
         if(this.§0!n§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §#!n§() : void
      {
         var _loc1_:int = §-!K§.getScore();
         var _loc2_:int = this.§&"$§.getValue();
         if(_loc2_ < _loc1_ && this.§<!%§)
         {
            this.§0!n§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§5h§.isOpen)
         {
            return §5y§.STATE_STATUS_RUNNING;
         }
         if(§=!X§.§!'§.objects.mSardineCanAdded)
         {
            (§?E§.getItemByName("Container_MEScore") as §`!T§).setVisibility(true);
         }
         this.§^!-§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§9!+§(param1);
         if(this.§?!h§ == §6!`§ && !§=!X§.§!'§.objects.isPigsAlive())
         {
            this.§0R§();
         }
         if((this.§?!h§ == §6!`§ || this.§?!h§ == §'A§) && §=!X§.§!'§.slingshot.mSlingShotState == §[!6§.§ L§)
         {
            this.§!!J§();
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      protected function §0R§() : void
      {
         this.§?!h§ = §'A§;
      }
      
      protected function §!!J§() : void
      {
         (§?E§.getItemByName("Button_MightyEagle") as §="#§).setComponentState(§9!!§.§%!§);
         (§?E§.getItemByName("Button_MightyEagle") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§6@§ == null)
         {
            this.§6@§ = §7!E§.§2=§.§<!C§(§?E§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§?!h§ = §]"§;
         this.§6@§.onComplete = this.§10§;
         this.§6@§.play();
      }
      
      protected function §10§() : void
      {
         this.§6@§ = §7!E§.§2=§.§<!C§(§?E§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§6@§.play();
         this.§?!h§ = §]"§;
      }
      
      override public function getVictoryState() : String
      {
         if(§=!X§.§!'§.objects.mMightyEagleAdded)
         {
            return §@!m§.§'=§;
         }
         return §`t§.§'=§;
      }
      
      protected function §]!W§() : String
      {
         return §0!v§.§'=§;
      }
      
      override public function getLoserState() : String
      {
         return §%!F§.§'=§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §0!v§.§4[§();
               mNextState = this.§]!W§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§=!X§.§>3§)
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
                  §0!v§.§4[§();
                  mNextState = §0!v§.§'=§;
                  break;
               case 54:
                  §0!v§.§`" §();
                  mNextState = §0!v§.§'=§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         if(param3 is §="#§)
         {
            if(param1 == §-!S§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §"o§.§2!a§();
            }
            else if(param1 == §-!S§.LISTENER_EVENT_MOUSE_UP)
            {
               §"o§.§[!?§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §5h§.§7h§();
               break;
            case "PAUSE":
               mNextState = this.§5!E§();
               break;
            case "RESTART_LEVEL":
               §0!v§.§4[§();
               mNextState = §0!v§.§'=§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§%d§.§9+§();
         }
      }
      
      protected function §5!E§() : String
      {
         return §4g§.§'=§;
      }
      
      protected function §1!@§() : void
      {
         §=!X§.§!'§.§1!@§();
         var _loc1_:int = AngryBirdsFP11.§>" §.§2?§(§3!w§.§%n§);
         §?E§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§=;§ = true;
         this.§!!J§();
      }
      
      protected function §9!+§(param1:Number) : void
      {
         this.§#!n§();
      }
   }
}
