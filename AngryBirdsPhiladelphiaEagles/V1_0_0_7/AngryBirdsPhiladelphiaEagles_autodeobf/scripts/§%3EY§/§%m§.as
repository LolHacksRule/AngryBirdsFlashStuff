package §>Y§
{
   import §"^§.§9=§;
   import §"`§.Texture;
   import §&[§.§"W§;
   import §&[§.§<c§;
   import §+=§.§%!H§;
   import §,!F§.§#§;
   import §,!F§.§1J§;
   import §3!%§.§#!K§;
   import §3!%§.§-k§;
   import §4!6§.§<!1§;
   import §4!6§.§>r§;
   import §4G§.§`l§;
   import §4q§.§;Q§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import §7I§.§+U§;
   import §7I§.§?Q§;
   import §8x§.§4A§;
   import §=u§.§1r§;
   import §=u§.§2"§;
   import §>w§.;
   import §?!=§.§<!>§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import §?5§.§`C§;
   import com.rovio.assets.§@h§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class §%m§ extends StatePlay implements §+U§
   {
      
      private static const §?!J§:Number = -5 * 1000;
      
      private static const §-;§:Number = 10 * 1000;
       
      
      private var §^2§:int = 0;
      
      private var §0H§:Number = -5000.0;
      
      private var §>,§:int = 0;
      
      private var §-!$§:Number = 0;
      
      private var §5§:Number = 0;
      
      private var §7!?§:Boolean = false;
      
      private const §1!E§:Number = 0.4;
      
      private var §^!8§:Boolean = false;
      
      private var §=!6§:Boolean = false;
      
      private var §!k§:MovieClip = null;
      
      private var §!!!§:§`l§ = null;
      
      private var §?R§:ColorTransform;
      
      private var §0!J§:§6q§ = null;
      
      private var §9!M§:Boolean = false;
      
      private var §'l§:Boolean = false;
      
      private var §>`§:Boolean = false;
      
      public function §%m§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§^2§ = param2;
      }
      
      override protected function getGameLogicController(param1:§#§) : §%!H§
      {
         return new §`C§(param1);
      }
      
      override protected function levelStarted() : void
      {
         this.§9!M§ = false;
         super.levelStarted();
         §>r§.§!§(§<!1§.§'m§,§-k§.§%D§);
         (§3g§.getItemByName("Button_Eagle") as §1r§).setComponentState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §3g§.getItemByName("Container_MEScore").setVisibility(false);
         §3g§.getItemByName("Container_HiscoreContainer").setVisibility(true);
         §3g§.getItemByName("Container_LevelscoreContainer").setVisibility(true);
         §9=§.§<!@§.§9!&§();
         §4A§(§9=§.§<!@§.§+_§).§&v§();
         this.§^z§();
      }
      
      public function §'M§() : Boolean
      {
         return this.§9!M§;
      }
      
      public function §8!9§() : void
      {
         if(§1J§.§4!L§ && !this.§9!M§)
         {
            if(this.§0!J§ == null && !this.§=!6§)
            {
               this.§9!M§ = true;
               this.§0!J§ = §[!-§.§ set§.§6B§(this.§!!!§,{"alpha":§1J§.§1!E§},null,§1J§.§>x§);
               this.§0!J§.onComplete = this.§1x§;
               this.§0!J§.play();
               this.§=!6§ = true;
               this.§^!8§ = false;
            }
         }
      }
      
      public function §+R§() : void
      {
         if(§1J§.§4!L§)
         {
            if(!this.§^!8§ && this.§0!J§ == null)
            {
               this.§0!J§ = §[!-§.§ set§.§6B§(this.§!!!§,{"alpha":0},null,§1J§.§`!?§);
               this.§0!J§.onComplete = this.§1x§;
               this.§0!J§.play();
               this.§^!8§ = true;
               this.§=!6§ = false;
            }
         }
      }
      
      public function §1x§() : void
      {
         this.§0!J§ = null;
      }
      
      override public function init() : void
      {
         var _loc1_:Class = null;
         var _loc2_:BitmapData = null;
         var _loc3_:Texture = null;
         var _loc4_:Number = NaN;
         §0!2§ = true;
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_FacebookLevelPlay[0]);
         if(§1J§.§4!L§)
         {
            _loc1_ = §@h§.§[@§("MovieClip_SlowmotionColor");
            this.§!k§ = new _loc1_();
            this.§!k§.mouseEnabled = false;
            _loc2_ = new BitmapData(50,50,true,0);
            _loc2_.draw(this.§!k§);
            _loc3_ = Texture.§ !C§(null,_loc2_,false,false);
            this.§!!!§ = new §`l§(_loc3_);
            _loc4_ = §3g§.height / AngryBirdsCustomCanvas.§"#§;
            this.§!!!§.width = §9=§.§<!@§.§#7§.width;
            this.§!!!§.height = §9=§.§<!@§.§#7§.height;
            this.§!!!§.color = §1J§.§,!>§;
            this.§!!!§.alpha = 0;
            §9=§.§<!@§.§#7§.addChild(this.§!!!§);
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:§#!K§ = null;
         var _loc3_:int = 0;
         super.activate();
         this.§+!;§();
         if(!§9=§.§<!@§.§+_§.mSardineCanAdded && !§9=§.§<!@§.§+_§.mMightyEagleAdded)
         {
            _loc2_ = §-k§.§>!5§(§-k§.§%D§);
            this.§^2§ = AngryBirdsFP11.§3!?§.§@%§(§-k§.§%D§);
            if(_loc2_)
            {
               _loc3_ = _loc2_.§%!P§();
               if(§9=§.§<!@§.slingshot)
               {
                  _loc3_ += §9=§.§<!@§.slingshot.§>h§();
               }
               this.§^2§ = Math.min(this.§^2§,_loc3_);
            }
            if(this.§^2§ > 0)
            {
               §3g§.getItemByName("Container_HiscoreContainer").setVisibility(true);
               §3g§.getItemByName("Container_LevelscoreContainer").y = §3g§.getItemByName("Container_HiscoreContainer").y + 27;
               (§3g§.getItemByName("TextField_HighScore") as §2"§).setText(this.§^2§.toString());
            }
            else
            {
               §3g§.getItemByName("Container_HiscoreContainer").setVisibility(false);
               §3g§.getItemByName("Container_LevelscoreContainer").y = §3g§.getItemByName("Container_HiscoreContainer").y;
            }
         }
         var _loc1_:String = §#'§.§=!@§(§#'§.§-&§);
         if(_loc1_ != null)
         {
            AngryBirdsFP11.§'_§(Boolean(int(_loc1_)));
         }
      }
      
      override public function deActivate() : void
      {
         this.§^z§();
         super.deActivate();
         this.§5!D§();
         this.§+!;§();
      }
      
      private function §5!D§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§0H§ > §-;§)
         {
            _loc1_ = Math.round(1000 / this.§0H§ * this.§>,§);
            _loc2_ = §-k§.§%D§;
            §>r§.§&<§(_loc1_,_loc2_,§#0§.§3!<§,false);
         }
      }
      
      private function §-!N§(param1:Number) : void
      {
         this.§0H§ += param1;
         if(this.§0H§ > 0)
         {
            ++this.§>,§;
         }
         if(this.§-!$§ != §9=§.§@!$§() || this.§5§ != §9=§.§3c§())
         {
            this.§+!;§();
         }
      }
      
      private function §+!;§() : void
      {
         this.§0H§ = §?!J§;
         this.§>,§ = 0;
         this.§-!$§ = §9=§.§@!$§();
         this.§5§ = §9=§.§3c§();
      }
      
      override protected function initMightyEagleButton() : void
      {
         §3g§.getItemByName("Container_MEScore").setVisibility(false);
         §3g§.getItemByName("Button_Eagle").mClip.scaleX = 1;
         §3g§.getItemByName("Button_Eagle").mClip.scaleY = 1;
      }
      
      override protected function hideMightyEagleButton() : void
      {
         (§3g§.getItemByName("Button_Eagle") as §1r§).setComponentState(§=;§.§+!0§);
         (§3g§.getItemByName("Button_Eagle") as §1r§).setComponentVisualState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!§#'§.§<y§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               this.§7!?§ = true;
         }
      }
      
      override protected function levelCompleted() : void
      {
         this.§^z§();
         super.levelCompleted();
         var _loc1_:String = §-k§.§%D§;
         var _loc2_:int = §@<§.getScore();
         §>r§.§!§(§<!1§.§=§,_loc1_,_loc2_);
         §<c§.§ set§.§'7§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         switch(param2)
         {
            case "PAUSE":
               §;Q§.§#^§();
               break;
            case "REPLAY":
               this.§^z§();
               §;O§.§%e§();
               mNextState = §;O§.§4!C§;
               break;
            case "ZOOM_IN":
               §@<§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §@<§.doUserZoom(false);
               break;
            case "ZOOM_UP":
               (§@<§ as §`C§).§8<§();
               break;
            case "USE_EAGLE":
               §9=§.§<!@§.camera.goToBirdView();
               §3g§.getItemByName("Container_HiscoreContainer").setVisibility(false);
               §3g§.getItemByName("Container_LevelscoreContainer").setVisibility(false);
               (§3g§.getItemByName("Button_Eagle") as §1r§).setComponentState(§=;§.§+!0§);
               §0!9§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §4b§() : §%!H§
      {
         return §@<§;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §@<§.getScore();
         var _loc3_:int = §6!@§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§6!@§.getValue() + param1 * §0@§);
            §6!@§.assign(_loc3_);
         }
         (§3g§.getItemByName("TextField_CurrentScore") as §2"§).setText(_loc3_.toString());
         if(this.§7!?§)
         {
            §3g§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§-!N§(param1);
         if(§9=§.§<!@§.slingshot.mDragging == true)
         {
            §3g§.getItemByName("Button_ZoomIn").setEnabled(false);
            §3g§.getItemByName("Button_ZoomOut").setEnabled(false);
         }
         else if(!§3g§.getItemByName("Button_ZoomIn").mClip.mouseEnabled)
         {
            §3g§.getItemByName("Button_ZoomIn").setEnabled(true);
            §3g§.getItemByName("Button_ZoomOut").setEnabled(true);
         }
         if(mNextState.length > 0)
         {
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      private function §^z§() : void
      {
         if(§1J§.§4!L§)
         {
            this.§!!!§.alpha = 0;
            if(this.§0!J§ != null)
            {
               this.§0!J§.stop();
               this.§0!J§ = null;
            }
            this.§^!8§ = false;
            this.§=!6§ = false;
         }
      }
      
      private function §;!6§() : void
      {
         var _loc2_:Object = {};
         var _loc3_:§"W§ = new §"W§(_loc2_,§#'§.§7Y§ + "levelComplete",this,§"W§.§,"§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §?Q§.§7L§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §"W§.§2G§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §"W§.§"q§(_loc2_.f)) != -1)
               {
                  §9=§.resume();
                  this.§>`§ = true;
               }
               else
               {
                  this.§>`§ = false;
               }
            }
         }
      }
      
      public function §+!?§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0w§(param1:IOErrorEvent) : void
      {
      }
   }
}
