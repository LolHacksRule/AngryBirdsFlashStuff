package §=!0§
{
   import §!t§.§5b§;
   import §!t§.§>B§;
   import §'!3§.§&!H§;
   import §,T§.§2`§;
   import §,T§.§[-§;
   import §,]§.Texture;
   import §-!'§.§3!1§;
   import §-!D§.§1>§;
   import §-!D§.§2@§;
   import §0=§.§>!0§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §6!L§.§#!M§;
   import §6!L§.§&u§;
   import §9!#§.§0!9§;
   import §=!1§.§"!D§;
   import §=p§.§<!L§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §?_§.§6!1§;
   import §?_§.§]D§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   import §`!8§.§?'§;
   import §`!8§.§^!0§;
   import com.rovio.assets.§[G§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class §"T§ extends StatePlay implements §6!1§
   {
      
      private static const §1x§:Number = -5 * 1000;
      
      private static const §2!!§:Number = 10 * 1000;
       
      
      private var §6!8§:int = 0;
      
      private var §8n§:Number = -5000.0;
      
      private var §%f§:int = 0;
      
      private var §9x§:Number = 0;
      
      private var §7t§:Number = 0;
      
      private var §4§:Boolean = false;
      
      private const §26§:Number = 0.4;
      
      private var §`6§:Boolean = false;
      
      private var §^x§:Boolean = false;
      
      private var §3t§:MovieClip = null;
      
      private var §>!O§:§3!1§ = null;
      
      private var static:ColorTransform;
      
      private var §2%§:§!l§ = null;
      
      private var §+!,§:Boolean = false;
      
      private var §2f§:Boolean = false;
      
      private var §8E§:Boolean = false;
      
      public function §"T§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§6!8§ = param2;
      }
      
      override protected function getGameLogicController(param1:§[-§) : §"!D§
      {
         return new §<!L§(param1);
      }
      
      override protected function levelStarted() : void
      {
         this.§+!,§ = false;
         super.levelStarted();
         §?'§.§%P§(§^!0§.§#!'§,§&u§.§ !+§);
         (§;I§.getItemByName("Button_Eagle") as §5b§).setComponentState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §;I§.getItemByName("Container_MEScore").setVisibility(false);
         §;I§.getItemByName("Container_HiscoreContainer").setVisibility(true);
         §;I§.getItemByName("Container_LevelscoreContainer").setVisibility(true);
         §0!E§.§9!B§.§+y§();
         §>!0§(§0!E§.§9!B§.§ h§).§%;§();
         this.§[!!§();
      }
      
      public function §,!C§() : Boolean
      {
         return this.§+!,§;
      }
      
      public function §2j§() : void
      {
         if(§2`§.§%!@§ && !this.§+!,§)
         {
            if(this.§2%§ == null && !this.§^x§)
            {
               this.§+!,§ = true;
               this.§2%§ = §5!&§.§@!&§.§9!4§(this.§>!O§,{"alpha":§2`§.§26§},null,§2`§.§4y§);
               this.§2%§.onComplete = this.§#z§;
               this.§2%§.play();
               this.§^x§ = true;
               this.§`6§ = false;
            }
         }
      }
      
      public function §]!E§() : void
      {
         if(§2`§.§%!@§)
         {
            if(!this.§`6§ && this.§2%§ == null)
            {
               this.§2%§ = §5!&§.§@!&§.§9!4§(this.§>!O§,{"alpha":0},null,§2`§.§ !3§);
               this.§2%§.onComplete = this.§#z§;
               this.§2%§.play();
               this.§`6§ = true;
               this.§^x§ = false;
            }
         }
      }
      
      public function §#z§() : void
      {
         this.§2%§ = null;
      }
      
      override public function init() : void
      {
         var _loc1_:Class = null;
         var _loc2_:BitmapData = null;
         var _loc3_:Texture = null;
         var _loc4_:Number = NaN;
         §@s§ = true;
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_FacebookLevelPlay[0]);
         if(§2`§.§%!@§)
         {
            _loc1_ = §[G§.§6u§("MovieClip_SlowmotionColor");
            this.§3t§ = new _loc1_();
            this.§3t§.mouseEnabled = false;
            _loc2_ = new BitmapData(50,50,true,0);
            _loc2_.draw(this.§3t§);
            _loc3_ = Texture.§2x§(null,_loc2_,false,false);
            this.§>!O§ = new §3!1§(_loc3_);
            _loc4_ = §;I§.height / AngryBirdsCustomCanvas.§4U§;
            this.§>!O§.width = §0!E§.§9!B§.§?N§.width;
            this.§>!O§.height = §0!E§.§9!B§.§?N§.height;
            this.§>!O§.color = §2`§.§0C§;
            this.§>!O§.alpha = 0;
            §0!E§.§9!B§.§?N§.addChild(this.§>!O§);
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:§#!M§ = null;
         var _loc3_:int = 0;
         super.activate();
         this.§"j§();
         if(!§0!E§.§9!B§.§ h§.mSardineCanAdded && !§0!E§.§9!B§.§ h§.mMightyEagleAdded)
         {
            _loc2_ = §&u§.§`!0§(§&u§.§ !+§);
            this.§6!8§ = AngryBirdsFP11.§5@§.§<Q§(§&u§.§ !+§);
            if(_loc2_)
            {
               _loc3_ = _loc2_.§,8§();
               if(§0!E§.§9!B§.slingshot)
               {
                  _loc3_ += §0!E§.§9!B§.slingshot.§%p§();
               }
               this.§6!8§ = Math.min(this.§6!8§,_loc3_);
            }
            if(this.§6!8§ > 0)
            {
               §;I§.getItemByName("Container_HiscoreContainer").setVisibility(true);
               §;I§.getItemByName("Container_LevelscoreContainer").y = §;I§.getItemByName("Container_HiscoreContainer").y + 27;
               (§;I§.getItemByName("TextField_HighScore") as §>B§).setText(this.§6!8§.toString());
            }
            else
            {
               §;I§.getItemByName("Container_HiscoreContainer").setVisibility(false);
               §;I§.getItemByName("Container_LevelscoreContainer").y = §;I§.getItemByName("Container_HiscoreContainer").y;
            }
         }
         var _loc1_:String = §=!<§.§@!H§(§=!<§.§+!6§);
         if(_loc1_ != null)
         {
            AngryBirdsFP11.§6x§(Boolean(int(_loc1_)));
         }
      }
      
      override public function deActivate() : void
      {
         this.§[!!§();
         super.deActivate();
         this.§[s§();
         this.§"j§();
      }
      
      private function §[s§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§8n§ > §2!!§)
         {
            _loc1_ = Math.round(1000 / this.§8n§ * this.§%f§);
            _loc2_ = §&u§.§ !+§;
            §?'§.§-!J§(_loc1_,_loc2_,§&!H§.§+_§,false);
         }
      }
      
      private function §''§(param1:Number) : void
      {
         this.§8n§ += param1;
         if(this.§8n§ > 0)
         {
            ++this.§%f§;
         }
         if(this.§9x§ != §0!E§.§ Y§() || this.§7t§ != §0!E§.§^k§())
         {
            this.§"j§();
         }
      }
      
      private function §"j§() : void
      {
         this.§8n§ = §1x§;
         this.§%f§ = 0;
         this.§9x§ = §0!E§.§ Y§();
         this.§7t§ = §0!E§.§^k§();
      }
      
      override protected function initMightyEagleButton() : void
      {
         §;I§.getItemByName("Container_MEScore").setVisibility(false);
         §;I§.getItemByName("Button_Eagle").mClip.scaleX = 1;
         §;I§.getItemByName("Button_Eagle").mClip.scaleY = 1;
      }
      
      override protected function hideMightyEagleButton() : void
      {
         (§;I§.getItemByName("Button_Eagle") as §5b§).setComponentState(§3^§.§4a§);
         (§;I§.getItemByName("Button_Eagle") as §5b§).setComponentVisualState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!§=!<§.§=o§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               this.§4§ = true;
         }
      }
      
      override protected function levelCompleted() : void
      {
         this.§[!!§();
         super.levelCompleted();
         var _loc1_:String = §&u§.§ !+§;
         var _loc2_:int = §8!0§.getScore();
         §?'§.§%P§(§^!0§.§7g§,_loc1_,_loc2_);
         §1>§.§@!&§.§?F§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         switch(param2)
         {
            case "PAUSE":
               §0!9§.§]!P§();
               break;
            case "REPLAY":
               this.§[!!§();
               §1!F§.§4W§();
               mNextState = §1!F§.§@§;
               break;
            case "ZOOM_IN":
               §8!0§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §8!0§.doUserZoom(false);
               break;
            case "ZOOM_UP":
               (§8!0§ as §<!L§).§3Z§();
               break;
            case "USE_EAGLE":
               §0!E§.§9!B§.camera.goToBirdView();
               §;I§.getItemByName("Container_HiscoreContainer").setVisibility(false);
               §;I§.getItemByName("Container_LevelscoreContainer").setVisibility(false);
               (§;I§.getItemByName("Button_Eagle") as §5b§).setComponentState(§3^§.§4a§);
               §<!=§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §@d§() : §"!D§
      {
         return §8!0§;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §8!0§.getScore();
         var _loc3_:int = §+!@§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§+!@§.getValue() + param1 * §?!4§);
            §+!@§.assign(_loc3_);
         }
         (§;I§.getItemByName("TextField_CurrentScore") as §>B§).setText(_loc3_.toString());
         if(this.§4§)
         {
            §;I§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§''§(param1);
         if(§0!E§.§9!B§.slingshot.mDragging == true)
         {
            §;I§.getItemByName("Button_ZoomIn").setEnabled(false);
            §;I§.getItemByName("Button_ZoomOut").setEnabled(false);
         }
         else if(!§;I§.getItemByName("Button_ZoomIn").mClip.mouseEnabled)
         {
            §;I§.getItemByName("Button_ZoomIn").setEnabled(true);
            §;I§.getItemByName("Button_ZoomOut").setEnabled(true);
         }
         if(mNextState.length > 0)
         {
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      private function §[!!§() : void
      {
         if(§2`§.§%!@§)
         {
            this.§>!O§.alpha = 0;
            if(this.§2%§ != null)
            {
               this.§2%§.stop();
               this.§2%§ = null;
            }
            this.§`6§ = false;
            this.§^x§ = false;
         }
      }
      
      private function §3!G§() : void
      {
         var _loc2_:Object = {};
         var _loc3_:§2@§ = new §2@§(_loc2_,§=!<§.§"R§ + "levelComplete",this,§2@§.§<$§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §]D§.§?!2§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §2@§.§-!7§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §2@§.§ I§(_loc2_.f)) != -1)
               {
                  §0!E§.resume();
                  this.§8E§ = true;
               }
               else
               {
                  this.§8E§ = false;
               }
            }
         }
      }
      
      public function §[&§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6!H§(param1:IOErrorEvent) : void
      {
      }
   }
}
