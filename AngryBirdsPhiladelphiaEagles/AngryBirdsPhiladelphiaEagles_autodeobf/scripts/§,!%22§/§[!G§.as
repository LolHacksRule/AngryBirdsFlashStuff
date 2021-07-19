package §,!"§
{
   import § N§.§1!A§;
   import §"U§.§@4§;
   import §"U§.§^'§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §'o§.§3K§;
   import §-!&§.§[J§;
   import §0!E§.§-<§;
   import §0!E§.§3"§;
   import §5Z§.§[Z§;
   import §6g§.§&N§;
   import §6g§.§[!@§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §8z§.Texture;
   import §9T§.§1r§;
   import §9T§.§6O§;
   import §<M§.§?!6§;
   import §?#§.§+7§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §]p§.§9!,§;
   import §]p§.§^s§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   import com.rovio.assets.§[!D§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class §[!G§ extends StatePlay implements §&N§
   {
      
      private static const §&!B§:Number = -5 * 1000;
      
      private static const §?&§:Number = 10 * 1000;
       
      
      private var §8§:int = 0;
      
      private var §!r§:Number = -5000.0;
      
      private var §9!H§:int = 0;
      
      private var §8#§:Number = 0;
      
      private var §&d§:Number = 0;
      
      private var §6!!§:Boolean = false;
      
      private const §>2§:Number = 0.4;
      
      private var §+n§:Boolean = false;
      
      private var §0!?§:Boolean = false;
      
      private var §&!?§:MovieClip = null;
      
      private var §1[§:§1!A§ = null;
      
      private var §0!%§:ColorTransform;
      
      private var §!!H§:§[!9§ = null;
      
      private var §,r§:Boolean = false;
      
      private var §5!2§:Boolean = false;
      
      private var §"'§:Boolean = false;
      
      public function §[!G§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§8§ = param2;
      }
      
      override protected function getGameLogicController(param1:§1r§) : §+7§
      {
         return new §3K§(param1);
      }
      
      override protected function levelStarted() : void
      {
         this.§,r§ = false;
         super.levelStarted();
         §-<§.§>v§(§3"§.§0a§,§`!K§.§5g§);
         (§0q§.getItemByName("Button_Eagle") as §^'§).setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §0q§.getItemByName("Container_MEScore").setVisibility(false);
         §0q§.getItemByName("Container_HiscoreContainer").setVisibility(true);
         §0q§.getItemByName("Container_LevelscoreContainer").setVisibility(true);
         §#! §.§`'§.§4-§();
         §[J§(§#! §.§`'§.§6#§).§>i§();
         this.§=;§();
      }
      
      public function §#!H§() : Boolean
      {
         return this.§,r§;
      }
      
      public function §4L§() : void
      {
         if(§6O§.§0"§ && !this.§,r§)
         {
            if(this.§!!H§ == null && !this.§0!?§)
            {
               this.§,r§ = true;
               this.§!!H§ = §3C§.§>o§.§<t§(this.§1[§,{"alpha":§6O§.§>2§},null,§6O§.§9!1§);
               this.§!!H§.onComplete = this.§9t§;
               this.§!!H§.play();
               this.§0!?§ = true;
               this.§+n§ = false;
            }
         }
      }
      
      public function §1Y§() : void
      {
         if(§6O§.§0"§)
         {
            if(!this.§+n§ && this.§!!H§ == null)
            {
               this.§!!H§ = §3C§.§>o§.§<t§(this.§1[§,{"alpha":0},null,§6O§.§7H§);
               this.§!!H§.onComplete = this.§9t§;
               this.§!!H§.play();
               this.§+n§ = true;
               this.§0!?§ = false;
            }
         }
      }
      
      public function §9t§() : void
      {
         this.§!!H§ = null;
      }
      
      override public function init() : void
      {
         var _loc1_:Class = null;
         var _loc2_:BitmapData = null;
         var _loc3_:Texture = null;
         var _loc4_:Number = NaN;
         §&K§ = true;
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_FacebookLevelPlay[0]);
         if(§6O§.§0"§)
         {
            _loc1_ = §[!D§.§8!N§("MovieClip_SlowmotionColor");
            this.§&!?§ = new _loc1_();
            this.§&!?§.mouseEnabled = false;
            _loc2_ = new BitmapData(50,50,true,0);
            _loc2_.draw(this.§&!?§);
            _loc3_ = Texture.§@"§(null,_loc2_,false,false);
            this.§1[§ = new §1!A§(_loc3_);
            _loc4_ = §0q§.height / AngryBirdsCustomCanvas.§5!9§;
            this.§1[§.width = §#! §.§`'§.§,?§.width;
            this.§1[§.height = §#! §.§`'§.§,?§.height;
            this.§1[§.color = §6O§.§5M§;
            this.§1[§.alpha = 0;
            §#! §.§`'§.§,?§.addChild(this.§1[§);
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:§[z§ = null;
         var _loc3_:int = 0;
         super.activate();
         this.§2!5§();
         if(!§#! §.§`'§.§6#§.mSardineCanAdded && !§#! §.§`'§.§6#§.mMightyEagleAdded)
         {
            _loc2_ = §`!K§.§!I§(§`!K§.§5g§);
            this.§8§ = AngryBirdsFP11.§`I§.§[u§(§`!K§.§5g§);
            if(_loc2_)
            {
               _loc3_ = _loc2_.§,u§();
               if(§#! §.§`'§.slingshot)
               {
                  _loc3_ += §#! §.§`'§.slingshot.§5!,§();
               }
               this.§8§ = Math.min(this.§8§,_loc3_);
            }
            if(this.§8§ > 0)
            {
               §0q§.getItemByName("Container_HiscoreContainer").setVisibility(true);
               §0q§.getItemByName("Container_LevelscoreContainer").y = §0q§.getItemByName("Container_HiscoreContainer").y + 27;
               (§0q§.getItemByName("TextField_HighScore") as §@4§).setText(this.§8§.toString());
            }
            else
            {
               §0q§.getItemByName("Container_HiscoreContainer").setVisibility(false);
               §0q§.getItemByName("Container_LevelscoreContainer").y = §0q§.getItemByName("Container_HiscoreContainer").y;
            }
         }
         var _loc1_:String = §!D§.§;2§(§!D§.§8T§);
         if(_loc1_ != null)
         {
            AngryBirdsFP11.§6r§(Boolean(int(_loc1_)));
         }
      }
      
      override public function deActivate() : void
      {
         this.§=;§();
         super.deActivate();
         this.§7!C§();
         this.§2!5§();
      }
      
      private function §7!C§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§!r§ > §?&§)
         {
            _loc1_ = Math.round(1000 / this.§!r§ * this.§9!H§);
            _loc2_ = §`!K§.§5g§;
            §-<§.§`q§(_loc1_,_loc2_,§[Z§.§-D§,false);
         }
      }
      
      private function §,!'§(param1:Number) : void
      {
         this.§!r§ += param1;
         if(this.§!r§ > 0)
         {
            ++this.§9!H§;
         }
         if(this.§8#§ != §#! §.§,!F§() || this.§&d§ != §#! §.§ v§())
         {
            this.§2!5§();
         }
      }
      
      private function §2!5§() : void
      {
         this.§!r§ = §&!B§;
         this.§9!H§ = 0;
         this.§8#§ = §#! §.§,!F§();
         this.§&d§ = §#! §.§ v§();
      }
      
      override protected function initMightyEagleButton() : void
      {
         §0q§.getItemByName("Container_MEScore").setVisibility(false);
         §0q§.getItemByName("Button_Eagle").mClip.scaleX = 1;
         §0q§.getItemByName("Button_Eagle").mClip.scaleY = 1;
      }
      
      override protected function hideMightyEagleButton() : void
      {
         (§0q§.getItemByName("Button_Eagle") as §^'§).setComponentState(§@V§.§!%§);
         (§0q§.getItemByName("Button_Eagle") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!§!D§.§^!E§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               this.§6!!§ = true;
         }
      }
      
      override protected function levelCompleted() : void
      {
         this.§=;§();
         super.levelCompleted();
         var _loc1_:String = §`!K§.§5g§;
         var _loc2_:int = §0!=§.getScore();
         §-<§.§>v§(§3"§.§,!M§,_loc1_,_loc2_);
         §9!,§.§>o§.§>!9§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         switch(param2)
         {
            case "PAUSE":
               §?!6§.§1%§();
               break;
            case "REPLAY":
               this.§=;§();
               §-O§.§8!5§();
               mNextState = §-O§.§-A§;
               break;
            case "ZOOM_IN":
               §0!=§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §0!=§.doUserZoom(false);
               break;
            case "ZOOM_UP":
               (§0!=§ as §3K§).§0T§();
               break;
            case "USE_EAGLE":
               §#! §.§`'§.camera.goToBirdView();
               §0q§.getItemByName("Container_HiscoreContainer").setVisibility(false);
               §0q§.getItemByName("Container_LevelscoreContainer").setVisibility(false);
               (§0q§.getItemByName("Button_Eagle") as §^'§).setComponentState(§@V§.§!%§);
               §`r§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §4v§() : §+7§
      {
         return §0!=§;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §0!=§.getScore();
         var _loc3_:int = §#q§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§#q§.getValue() + param1 * §@!D§);
            §#q§.assign(_loc3_);
         }
         (§0q§.getItemByName("TextField_CurrentScore") as §@4§).setText(_loc3_.toString());
         if(this.§6!!§)
         {
            §0q§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§,!'§(param1);
         if(§#! §.§`'§.slingshot.mDragging == true)
         {
            §0q§.getItemByName("Button_ZoomIn").setEnabled(false);
            §0q§.getItemByName("Button_ZoomOut").setEnabled(false);
         }
         else if(!§0q§.getItemByName("Button_ZoomIn").mClip.mouseEnabled)
         {
            §0q§.getItemByName("Button_ZoomIn").setEnabled(true);
            §0q§.getItemByName("Button_ZoomOut").setEnabled(true);
         }
         if(mNextState.length > 0)
         {
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      private function §=;§() : void
      {
         if(§6O§.§0"§)
         {
            this.§1[§.alpha = 0;
            if(this.§!!H§ != null)
            {
               this.§!!H§.stop();
               this.§!!H§ = null;
            }
            this.§+n§ = false;
            this.§0!?§ = false;
         }
      }
      
      private function §8?§() : void
      {
         var _loc2_:Object = {};
         var _loc3_:§^s§ = new §^s§(_loc2_,§!D§.§1P§ + "levelComplete",this,§^s§.§<r§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §[!@§.§'!N§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §^s§.§?0§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §^s§.§+d§(_loc2_.f)) != -1)
               {
                  §#! §.resume();
                  this.§"'§ = true;
               }
               else
               {
                  this.§"'§ = false;
               }
            }
         }
      }
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'r§(param1:IOErrorEvent) : void
      {
      }
   }
}
