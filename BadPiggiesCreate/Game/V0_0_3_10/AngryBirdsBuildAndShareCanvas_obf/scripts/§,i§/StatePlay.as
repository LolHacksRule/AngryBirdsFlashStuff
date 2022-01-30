package §,i§
{
   import §&!&§.§1"7§;
   import §&!&§.§2!w§;
   import §,"$§.§5!P§;
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §0!d§.§`G§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!s§.§4^§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §7M§.§"?§;
   import §9!G§.§>!n§;
   import §<8§.§"h§;
   import §<8§.§7!n§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §^"3§
   {
      
      public static const §]"2§:String = "StatePlay";
      
      public static const §&j§:int = 50;
      
      protected static const §45§:String = "MightyEagleButtonVisible";
      
      protected static const §4G§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §&"8§:String = "MightyEagleButtonHide";
       
      
      protected var §'!A§:§1"7§;
      
      protected var §7!m§:§^F§;
      
      protected var §-d§:String;
      
      protected var §9'§:Boolean;
      
      private var §#!0§:Vector.<int>;
      
      private var §!!e§:Boolean;
      
      private var §^J§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§'!A§ = new §1"7§();
         this.§#!0§ = new Vector.<int>(32);
         super(param1,param2);
         this.§#!0§[3] = 5000;
         this.§#!0§[7] = 5000;
         this.§#!0§[8] = 5000;
         this.§#!0§[9] = 5000;
         this.§#!0§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelPlay[0]);
      }
      
      protected function §&"0§() : void
      {
      }
      
      private function §;h§(param1:TimerEvent) : void
      {
         (§'K§.getItemByName("TextField_METimer") as §`G§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§7N§();
         super.levelStarted();
         if(§'K§.getItemByName("Button_MightyEagle"))
         {
            §'K§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         § !x§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§[Z§();
      }
      
      protected function §7N§() : void
      {
         § !x§.§ X§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §9!"§() : void
      {
         §'K§.getItemByName("TextField_METimer").setVisibility(false);
         §'K§.getItemByName("Container_MEScore").setVisibility(false);
         §'K§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §'K§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §[Z§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§'!A§.§ <§(0);
         this.§,z§(0);
         this.§9!"§();
         if(§#!G§.§7!X§ != null)
         {
            _loc1_ = new Bitmap(§#!G§.§7!X§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§'K§.getItemByName("MovieClip_AvatarPlaceholder") as §%!9§).changeMovieClip(_loc2_);
            §'K§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§-d§ = §45§;
         this.§7!m§ = null;
         this.§9'§ = false;
      }
      
      public function §!C§() : void
      {
         (§'K§.getItemByName("Button_MightyEagle") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§'K§.getItemByName("Button_MightyEagle") as §8!r§).setComponentState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§'K§.getItemByName("Button_Pause") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§!C§();
         if(this.§7!m§ != null)
         {
            this.§7!m§.stop();
            this.§7!m§ = null;
         }
      }
      
      protected function §3!c§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§!!e§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§#!0§.length)
            {
               _loc1_ += this.§#!0§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§!!e§ = true;
               §2!w§.§1p§(§2!w§.§^W§,§"?§.§4M§);
            }
         }
         if(this.§^J§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §>!U§() : void
      {
         var _loc1_:int = §]c§.getScore();
         var _loc2_:int = this.§'!A§.getValue();
         if(_loc2_ < _loc1_ && this.§!!e§)
         {
            this.§^J§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§5!P§.isOpen)
         {
            return §0!K§.STATE_STATUS_RUNNING;
         }
         if(§"!V§.§!j§.objects.mSardineCanAdded)
         {
            (§'K§.getItemByName("Container_MEScore") as §7!a§).setVisibility(true);
         }
         this.§3!c§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,z§(param1);
         if(this.§-d§ == §45§ && !§"!V§.§!j§.objects.isPigsAlive())
         {
            this.§2!g§();
         }
         if((this.§-d§ == §45§ || this.§-d§ == §4G§) && §"!V§.§!j§.slingshot.mSlingShotState == §4^§.§8+§)
         {
            this.§7!F§();
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      protected function §2!g§() : void
      {
         this.§-d§ = §4G§;
      }
      
      protected function §7!F§() : void
      {
         (§'K§.getItemByName("Button_MightyEagle") as §8!r§).setComponentState(§"h§.§?L§);
         (§'K§.getItemByName("Button_MightyEagle") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§7!m§ == null)
         {
            this.§7!m§ = §<y§.§,l§.§]!C§(§'K§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§-d§ = §&"8§;
         this.§7!m§.onComplete = this.§+!i§;
         this.§7!m§.play();
      }
      
      protected function §+!i§() : void
      {
         this.§7!m§ = §<y§.§,l§.§]!C§(§'K§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§7!m§.play();
         this.§-d§ = §&"8§;
      }
      
      override public function getVictoryState() : String
      {
         if(§"!V§.§!j§.objects.mMightyEagleAdded)
         {
            return §?c§.§]"2§;
         }
         return §=B§.§]"2§;
      }
      
      protected function §'"-§() : String
      {
         return §>Y§.§]"2§;
      }
      
      override public function getLoserState() : String
      {
         return §1!K§.§]"2§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §>Y§.§"l§();
               mNextState = this.§'"-§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§"!V§.§2!_§)
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
                  §>Y§.§"l§();
                  mNextState = §>Y§.§]"2§;
                  break;
               case 54:
                  §>Y§.§;X§();
                  mNextState = §>Y§.§]"2§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         if(param3 is §8!r§)
         {
            if(param1 == §7!n§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §>!n§.§ V§();
            }
            else if(param1 == §7!n§.LISTENER_EVENT_MOUSE_UP)
            {
               §>!n§.§`!H§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §5!P§.§^X§();
               break;
            case "PAUSE":
               mNextState = this.§]t§();
               break;
            case "RESTART_LEVEL":
               §>Y§.§"l§();
               mNextState = §>Y§.§]"2§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'"0§.§[!>§();
         }
      }
      
      protected function §]t§() : String
      {
         return §9"+§.§]"2§;
      }
      
      protected function §'"2§() : void
      {
         §"!V§.§!j§.§'"2§();
         var _loc1_:int = AngryBirdsFP11.§<U§.§,[§(§"?§.§4M§);
         §'K§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§9'§ = true;
         this.§7!F§();
      }
      
      protected function §,z§(param1:Number) : void
      {
         this.§>!U§();
      }
   }
}
