package §8;§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §%"§.§ !,§;
   import §%"§.§ do§;
   import §'R§.§!Z§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §4!6§.§%R§;
   import §4!6§.§<5§;
   import §4M§.§5!5§;
   import §4M§.§?j§;
   import §9!0§.§ §;
   import §9!0§.§15§;
   import §9c§.§,x§;
   import §9c§.§6P§;
   import §<!<§.§+!<§;
   import §<!F§.§5!+§;
   import §<!N§.§&M§;
   import §=!H§.§=<§;
   import §=!H§.§`S§;
   import §=!K§.§<E§;
   import §?!;§.§6H§;
   import §?!;§.§;!,§;
   import §@M§.Texture;
   import §]G§.§>G§;
   import §^h§.§2l§;
   import com.rovio.assets.§<x§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class §3?§ extends StatePlay implements §5!5§
   {
      
      private static const §6Z§:Number = -5 * 1000;
      
      private static const §-!8§:Number = 10 * 1000;
       
      
      private var §?!H§:int = 0;
      
      private var §3d§:Number = -5000.0;
      
      private var §!8§:int = 0;
      
      private var §'B§:Number = 0;
      
      private var §+]§:Number = 0;
      
      private var §=V§:Boolean = false;
      
      private const §@Z§:Number = 0.4;
      
      private var §import§:Boolean = false;
      
      private var §'L§:Boolean = false;
      
      private var §;B§:MovieClip = null;
      
      private var §@Y§:§&M§ = null;
      
      private var §[!L§:ColorTransform;
      
      private var §7!E§:§ !4§ = null;
      
      private var §!B§:Boolean = false;
      
      private var §?!K§:Boolean = false;
      
      private var §<!#§:Boolean = false;
      
      public function §3?§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§?!H§ = param2;
      }
      
      override protected function getGameLogicController(param1:§ do§) : §>G§
      {
         return new §<E§(param1);
      }
      
      override protected function levelStarted() : void
      {
         this.§!B§ = false;
         super.levelStarted();
         §15§.§,!1§(§ §.§+c§,§6H§.§"Q§);
         (§>2§.getItemByName("Button_Eagle") as §=<§).setComponentState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §>2§.getItemByName("Container_MEScore").setVisibility(false);
         §>2§.getItemByName("Container_HiscoreContainer").setVisibility(true);
         §>2§.getItemByName("Container_LevelscoreContainer").setVisibility(true);
         §5!+§.§6!§.§5q§();
         §!Z§(§5!+§.§6!§.§"!L§).§<Z§();
         this.§3E§();
      }
      
      public function §'5§() : Boolean
      {
         return this.§!B§;
      }
      
      public function §]!E§() : void
      {
         if(§ !,§.§+;§ && !this.§!B§)
         {
            if(this.§7!E§ == null && !this.§'L§)
            {
               this.§!B§ = true;
               this.§7!E§ = §49§.§&y§.§=!3§(this.§@Y§,{"alpha":§ !,§.§@Z§},null,§ !,§.§2§);
               this.§7!E§.onComplete = this.§;l§;
               this.§7!E§.play();
               this.§'L§ = true;
               this.§import§ = false;
            }
         }
      }
      
      public function §=o§() : void
      {
         if(§ !,§.§+;§)
         {
            if(!this.§import§ && this.§7!E§ == null)
            {
               this.§7!E§ = §49§.§&y§.§=!3§(this.§@Y§,{"alpha":0},null,§ !,§.§1!6§);
               this.§7!E§.onComplete = this.§;l§;
               this.§7!E§.play();
               this.§import§ = true;
               this.§'L§ = false;
            }
         }
      }
      
      public function §;l§() : void
      {
         this.§7!E§ = null;
      }
      
      override public function init() : void
      {
         var _loc1_:Class = null;
         var _loc2_:BitmapData = null;
         var _loc3_:Texture = null;
         var _loc4_:Number = NaN;
         §9o§ = true;
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_FacebookLevelPlay[0]);
         if(§ !,§.§+;§)
         {
            _loc1_ = §<x§.§,! §("MovieClip_SlowmotionColor");
            this.§;B§ = new _loc1_();
            this.§;B§.mouseEnabled = false;
            _loc2_ = new BitmapData(50,50,true,0);
            _loc2_.draw(this.§;B§);
            _loc3_ = Texture.§6@§(null,_loc2_,false,false);
            this.§@Y§ = new §&M§(_loc3_);
            _loc4_ = §>2§.height / AngryBirdsCustomCanvas.§>!8§;
            this.§@Y§.width = §5!+§.§6!§.§8!>§.width;
            this.§@Y§.height = §5!+§.§6!§.§8!>§.height;
            this.§@Y§.color = § !,§.§2!5§;
            this.§@Y§.alpha = 0;
            §5!+§.§6!§.§8!>§.addChild(this.§@Y§);
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:§;!,§ = null;
         var _loc3_:int = 0;
         super.activate();
         this.§!K§();
         if(!§5!+§.§6!§.§"!L§.mSardineCanAdded && !§5!+§.§6!§.§"!L§.mMightyEagleAdded)
         {
            _loc2_ = §6H§.§,!C§(§6H§.§"Q§);
            this.§?!H§ = AngryBirdsFP11.§^O§.§=%§(§6H§.§"Q§);
            if(_loc2_)
            {
               _loc3_ = _loc2_.§?§();
               if(§5!+§.§6!§.slingshot)
               {
                  _loc3_ += §5!+§.§6!§.slingshot.§;6§();
               }
               this.§?!H§ = Math.min(this.§?!H§,_loc3_);
            }
            if(this.§?!H§ > 0)
            {
               §>2§.getItemByName("Container_HiscoreContainer").setVisibility(true);
               §>2§.getItemByName("Container_LevelscoreContainer").y = §>2§.getItemByName("Container_HiscoreContainer").y + 27;
               (§>2§.getItemByName("TextField_HighScore") as §`S§).setText(this.§?!H§.toString());
            }
            else
            {
               §>2§.getItemByName("Container_HiscoreContainer").setVisibility(false);
               §>2§.getItemByName("Container_LevelscoreContainer").y = §>2§.getItemByName("Container_HiscoreContainer").y;
            }
         }
         var _loc1_:String = §#!1§.§9u§(§#!1§.§5Z§);
         if(_loc1_ != null)
         {
            AngryBirdsFP11.§`1§(Boolean(int(_loc1_)));
         }
      }
      
      override public function deActivate() : void
      {
         this.§3E§();
         super.deActivate();
         this.§'!2§();
         this.§!K§();
      }
      
      private function §'!2§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§3d§ > §-!8§)
         {
            _loc1_ = Math.round(1000 / this.§3d§ * this.§!8§);
            _loc2_ = §6H§.§"Q§;
            §15§.§8h§(_loc1_,_loc2_,§2l§.§,X§,false);
         }
      }
      
      private function §,!%§(param1:Number) : void
      {
         this.§3d§ += param1;
         if(this.§3d§ > 0)
         {
            ++this.§!8§;
         }
         if(this.§'B§ != §5!+§.§ !1§() || this.§+]§ != §5!+§.§-!&§())
         {
            this.§!K§();
         }
      }
      
      private function §!K§() : void
      {
         this.§3d§ = §6Z§;
         this.§!8§ = 0;
         this.§'B§ = §5!+§.§ !1§();
         this.§+]§ = §5!+§.§-!&§();
      }
      
      override protected function initMightyEagleButton() : void
      {
         §>2§.getItemByName("Container_MEScore").setVisibility(false);
         §>2§.getItemByName("Button_Eagle").mClip.scaleX = 1;
         §>2§.getItemByName("Button_Eagle").mClip.scaleY = 1;
      }
      
      override protected function hideMightyEagleButton() : void
      {
         (§>2§.getItemByName("Button_Eagle") as §=<§).setComponentState(§6P§.§^!<§);
         (§>2§.getItemByName("Button_Eagle") as §=<§).setComponentVisualState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!§#!1§.§7I§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               this.§=V§ = true;
         }
      }
      
      override protected function levelCompleted() : void
      {
         this.§3E§();
         super.levelCompleted();
         var _loc1_:String = §6H§.§"Q§;
         var _loc2_:int = §#!H§.getScore();
         §15§.§,!1§(§ §.§`%§,_loc1_,_loc2_);
         §<5§.§&y§.§<!L§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         switch(param2)
         {
            case "PAUSE":
               §+!<§.§;!G§();
               break;
            case "REPLAY":
               this.§3E§();
               §8^§.§1!"§();
               mNextState = §8^§.§"Z§;
               break;
            case "ZOOM_IN":
               §#!H§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §#!H§.doUserZoom(false);
               break;
            case "ZOOM_UP":
               (§#!H§ as §<E§).§!!@§();
               break;
            case "USE_EAGLE":
               §5!+§.§6!§.camera.goToBirdView();
               §>2§.getItemByName("Container_HiscoreContainer").setVisibility(false);
               §>2§.getItemByName("Container_LevelscoreContainer").setVisibility(false);
               (§>2§.getItemByName("Button_Eagle") as §=<§).setComponentState(§6P§.§^!<§);
               §>_§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §1]§() : §>G§
      {
         return §#!H§;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §#!H§.getScore();
         var _loc3_:int = §=F§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§=F§.getValue() + param1 * §3u§);
            §=F§.assign(_loc3_);
         }
         (§>2§.getItemByName("TextField_CurrentScore") as §`S§).setText(_loc3_.toString());
         if(this.§=V§)
         {
            §>2§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§,!%§(param1);
         if(§5!+§.§6!§.slingshot.mDragging == true)
         {
            §>2§.getItemByName("Button_ZoomIn").setEnabled(false);
            §>2§.getItemByName("Button_ZoomOut").setEnabled(false);
         }
         else if(!§>2§.getItemByName("Button_ZoomIn").mClip.mouseEnabled)
         {
            §>2§.getItemByName("Button_ZoomIn").setEnabled(true);
            §>2§.getItemByName("Button_ZoomOut").setEnabled(true);
         }
         if(mNextState.length > 0)
         {
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      private function §3E§() : void
      {
         if(§ !,§.§+;§)
         {
            this.§@Y§.alpha = 0;
            if(this.§7!E§ != null)
            {
               this.§7!E§.stop();
               this.§7!E§ = null;
            }
            this.§import§ = false;
            this.§'L§ = false;
         }
      }
      
      private function §4,§() : void
      {
         var _loc2_:Object = {};
         var _loc3_:§%R§ = new §%R§(_loc2_,§#!1§.§?!A§ + "levelComplete",this,§%R§.§9m§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §?j§.§%!%§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §%R§.§!!J§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §%R§.§<!7§(_loc2_.f)) != -1)
               {
                  §5!+§.resume();
                  this.§<!#§ = true;
               }
               else
               {
                  this.§<!#§ = false;
               }
            }
         }
      }
      
      public function §[!G§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function § C§(param1:IOErrorEvent) : void
      {
      }
   }
}
