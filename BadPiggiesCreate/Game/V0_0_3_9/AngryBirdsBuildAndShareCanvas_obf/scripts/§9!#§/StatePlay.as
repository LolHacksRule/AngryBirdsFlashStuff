package §9!#§
{
   import §!!A§.§""5§;
   import §!!A§.§@P§;
   import §"h§.§<"+§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §6p§.§'!B§;
   import §<!I§.§&5§;
   import §<!I§.§7!N§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §=b§.§5?§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import §@!;§.§%"-§;
   import §]J§.§6!A§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §#!I§
   {
      
      public static const §8G§:String = "StatePlay";
      
      public static const §true§:int = 50;
      
      protected static const §?!M§:String = "MightyEagleButtonVisible";
      
      protected static const §1R§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §7p§:String = "MightyEagleButtonHide";
       
      
      protected var §"d§:§""5§;
      
      protected var §@!D§:§^!#§;
      
      protected var §?!L§:String;
      
      protected var §!x§:Boolean;
      
      private var §,&§:Vector.<int>;
      
      private var §="%§:Boolean;
      
      private var §!!8§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§"d§ = new §""5§();
         this.§,&§ = new Vector.<int>(32);
         super(param1,param2);
         this.§,&§[3] = 5000;
         this.§,&§[7] = 5000;
         this.§,&§[8] = 5000;
         this.§,&§[9] = 5000;
         this.§,&§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelPlay[0]);
      }
      
      protected function § !b§() : void
      {
      }
      
      private function §!"'§(param1:TimerEvent) : void
      {
         (§;i§.getItemByName("TextField_METimer") as §7!N§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§^7§();
         super.levelStarted();
         if(§;i§.getItemByName("Button_MightyEagle"))
         {
            §;i§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §'!B§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§@t§();
      }
      
      protected function §^7§() : void
      {
         §'!B§.§>T§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §,!5§() : void
      {
         §;i§.getItemByName("TextField_METimer").setVisibility(false);
         §;i§.getItemByName("Container_MEScore").setVisibility(false);
         §;i§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §;i§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §@t§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§"d§.§9!<§(0);
         this.§#!x§(0);
         this.§,!5§();
         if(§+e§.§=!i§ != null)
         {
            _loc1_ = new Bitmap(§+e§.§=!i§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§;i§.getItemByName("MovieClip_AvatarPlaceholder") as §&5§).changeMovieClip(_loc2_);
            §;i§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§?!L§ = §?!M§;
         this.§@!D§ = null;
         this.§!x§ = false;
      }
      
      public function §@!n§() : void
      {
         (§;i§.getItemByName("Button_MightyEagle") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;i§.getItemByName("Button_MightyEagle") as §="5§).setComponentState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§;i§.getItemByName("Button_Pause") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§@!n§();
         if(this.§@!D§ != null)
         {
            this.§@!D§.stop();
            this.§@!D§ = null;
         }
      }
      
      protected function §9^§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§="%§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§,&§.length)
            {
               _loc1_ += this.§,&§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§="%§ = true;
               §@P§.static(§@P§.§1I§,§1!c§.§'Z§);
            }
         }
         if(this.§!!8§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §!!m§() : void
      {
         var _loc1_:int = § !V§.getScore();
         var _loc2_:int = this.§"d§.getValue();
         if(_loc2_ < _loc1_ && this.§="%§)
         {
            this.§!!8§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§6!A§.isOpen)
         {
            return §<"+§.STATE_STATUS_RUNNING;
         }
         if(§%s§.§`!f§.objects.mSardineCanAdded)
         {
            (§;i§.getItemByName("Container_MEScore") as §>"-§).setVisibility(true);
         }
         this.§9^§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§#!x§(param1);
         if(this.§?!L§ == §?!M§ && !§%s§.§`!f§.objects.isPigsAlive())
         {
            this.§,#§();
         }
         if((this.§?!L§ == §?!M§ || this.§?!L§ == §1R§) && §%s§.§`!f§.slingshot.mSlingShotState == §5?§.§#!j§)
         {
            this.§5x§();
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      protected function §,#§() : void
      {
         this.§?!L§ = §1R§;
      }
      
      protected function §5x§() : void
      {
         (§;i§.getItemByName("Button_MightyEagle") as §="5§).setComponentState(§+!A§.§@x§);
         (§;i§.getItemByName("Button_MightyEagle") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§@!D§ == null)
         {
            this.§@!D§ = §"g§.§'!o§.§while§(§;i§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§?!L§ = §7p§;
         this.§@!D§.onComplete = this.§9"&§;
         this.§@!D§.play();
      }
      
      protected function §9"&§() : void
      {
         this.§@!D§ = §"g§.§'!o§.§while§(§;i§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§@!D§.play();
         this.§?!L§ = §7p§;
      }
      
      override public function getVictoryState() : String
      {
         if(§%s§.§`!f§.objects.mMightyEagleAdded)
         {
            return §"" §.§8G§;
         }
         return §3!+§.§8G§;
      }
      
      protected function §'!#§() : String
      {
         return §+0§.§8G§;
      }
      
      override public function getLoserState() : String
      {
         return §0!&§.§8G§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §+0§.§2!2§();
               mNextState = this.§'!#§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§%s§.§3'§)
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
                  §+0§.§2!2§();
                  mNextState = §+0§.§8G§;
                  break;
               case 54:
                  §+0§.§!i§();
                  mNextState = §+0§.§8G§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         if(param3 is §="5§)
         {
            if(param1 == §7!8§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §%"-§.§in §();
            }
            else if(param1 == §7!8§.LISTENER_EVENT_MOUSE_UP)
            {
               §%"-§.§5!Q§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §6!A§.§8F§();
               break;
            case "PAUSE":
               mNextState = this.§2`§();
               break;
            case "RESTART_LEVEL":
               §+0§.§2!2§();
               mNextState = §+0§.§8G§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?!-§.§>=§();
         }
      }
      
      protected function §2`§() : String
      {
         return §<!P§.§8G§;
      }
      
      protected function §<7§() : void
      {
         §%s§.§`!f§.§<7§();
         var _loc1_:int = AngryBirdsFP11.§5!c§.§,!z§(§1!c§.§'Z§);
         §;i§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§!x§ = true;
         this.§5x§();
      }
      
      protected function §#!x§(param1:Number) : void
      {
         this.§!!m§();
      }
   }
}
