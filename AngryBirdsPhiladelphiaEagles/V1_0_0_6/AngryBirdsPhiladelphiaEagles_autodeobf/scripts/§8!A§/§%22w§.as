package §8!A§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §&b§.§[F§;
   import §-A§.§+q§;
   import §-A§.§,G§;
   import §16§.§#w§;
   import §16§.§;v§;
   import §1E§.§2h§;
   import §1E§.§5T§;
   import §3?§.§6+§;
   import §4!-§.§%o§;
   import §4!-§.§,2§;
   import §4!6§.§"N§;
   import §4M§.;
   import §4M§.§^'§;
   import §86§.§?5§;
   import §8]§.§-u§;
   import §8]§.§?N§;
   import §;!!§.§0H§;
   import §;!B§.§1"§;
   import §;!B§.§14§;
   import §>Y§.§-]§;
   import §@<§.§`N§;
   import §@g§.§4!@§;
   import §[!A§.Texture;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import com.rovio.assets.§^3§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class §"w§ extends StatePlay implements §,G§
   {
      
      private static const §@!0§:Number = -5 * 1000;
      
      private static const §8W§:Number = 10 * 1000;
       
      
      private var §<!E§:int = 0;
      
      private var §1[§:Number = -5000.0;
      
      private var §&!5§:int = 0;
      
      private var §9!&§:Number = 0;
      
      private var §4!&§:Number = 0;
      
      private var §7!9§:Boolean = false;
      
      private const §88§:Number = 0.4;
      
      private var §1!A§:Boolean = false;
      
      private var §[!K§:Boolean = false;
      
      private var §3!G§:MovieClip = null;
      
      private var §,!;§:§?5§ = null;
      
      private var §#5§:ColorTransform;
      
      private var §^$§:§<Q§ = null;
      
      private var §[!"§:Boolean = false;
      
      private var §0[§:Boolean = false;
      
      private var §70§:Boolean = false;
      
      public function §"w§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§<!E§ = param2;
      }
      
      override protected function getGameLogicController(param1:§%o§) : §6+§
      {
         return new §"N§(param1);
      }
      
      override protected function levelStarted() : void
      {
         this.§[!"§ = false;
         super.levelStarted();
         §14§.§`!O§(§1"§.§'2§,§2h§.§,!P§);
         (§<A§.getItemByName("Button_Eagle") as §-u§).setComponentState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §<A§.getItemByName("Container_MEScore").setVisibility(false);
         §<A§.getItemByName("Container_HiscoreContainer").setVisibility(true);
         §<A§.getItemByName("Container_LevelscoreContainer").setVisibility(true);
         §[F§.§9u§.§"A§();
         §-]§(§[F§.§9u§.§ z§).§%v§();
         this.§<L§();
      }
      
      public function §0N§() : Boolean
      {
         return this.§[!"§;
      }
      
      public function §-N§() : void
      {
         if(§,2§.§^X§ && !this.§[!"§)
         {
            if(this.§^$§ == null && !this.§[!K§)
            {
               this.§[!"§ = true;
               this.§^$§ = §5^§.§<"§.§^g§(this.§,!;§,{"alpha":§,2§.§88§},null,§,2§.§5+§);
               this.§^$§.onComplete = this.§0!1§;
               this.§^$§.play();
               this.§[!K§ = true;
               this.§1!A§ = false;
            }
         }
      }
      
      public function §%J§() : void
      {
         if(§,2§.§^X§)
         {
            if(!this.§1!A§ && this.§^$§ == null)
            {
               this.§^$§ = §5^§.§<"§.§^g§(this.§,!;§,{"alpha":0},null,§,2§.§1X§);
               this.§^$§.onComplete = this.§0!1§;
               this.§^$§.play();
               this.§1!A§ = true;
               this.§[!K§ = false;
            }
         }
      }
      
      public function §0!1§() : void
      {
         this.§^$§ = null;
      }
      
      override public function init() : void
      {
         var _loc1_:Class = null;
         var _loc2_:BitmapData = null;
         var _loc3_:Texture = null;
         var _loc4_:Number = NaN;
         §34§ = true;
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_FacebookLevelPlay[0]);
         if(§,2§.§^X§)
         {
            _loc1_ = §^3§.§+_§("MovieClip_SlowmotionColor");
            this.§3!G§ = new _loc1_();
            this.§3!G§.mouseEnabled = false;
            _loc2_ = new BitmapData(50,50,true,0);
            _loc2_.draw(this.§3!G§);
            _loc3_ = Texture.§+!5§(null,_loc2_,false,false);
            this.§,!;§ = new §?5§(_loc3_);
            _loc4_ = §<A§.height / AngryBirdsCustomCanvas.§87§;
            this.§,!;§.width = §[F§.§9u§.§43§.width;
            this.§,!;§.height = §[F§.§9u§.§43§.height;
            this.§,!;§.color = §,2§.§;!$§;
            this.§,!;§.alpha = 0;
            §[F§.§9u§.§43§.addChild(this.§,!;§);
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:§5T§ = null;
         var _loc3_:int = 0;
         super.activate();
         this.§#3§();
         if(!§[F§.§9u§.§ z§.mSardineCanAdded && !§[F§.§9u§.§ z§.mMightyEagleAdded)
         {
            _loc2_ = §2h§.§?J§(§2h§.§,!P§);
            this.§<!E§ = AngryBirdsFP11.§ !-§.§&[§(§2h§.§,!P§);
            if(_loc2_)
            {
               _loc3_ = _loc2_.§"z§();
               if(§[F§.§9u§.slingshot)
               {
                  _loc3_ += §[F§.§9u§.slingshot.§1M§();
               }
               this.§<!E§ = Math.min(this.§<!E§,_loc3_);
            }
            if(this.§<!E§ > 0)
            {
               §<A§.getItemByName("Container_HiscoreContainer").setVisibility(true);
               §<A§.getItemByName("Container_LevelscoreContainer").y = §<A§.getItemByName("Container_HiscoreContainer").y + 27;
               (§<A§.getItemByName("TextField_HighScore") as §?N§).setText(this.§<!E§.toString());
            }
            else
            {
               §<A§.getItemByName("Container_HiscoreContainer").setVisibility(false);
               §<A§.getItemByName("Container_LevelscoreContainer").y = §<A§.getItemByName("Container_HiscoreContainer").y;
            }
         }
         var _loc1_:String = §>!?§.§5!5§(§>!?§.§%§);
         if(_loc1_ != null)
         {
            AngryBirdsFP11.§0!E§(Boolean(int(_loc1_)));
         }
      }
      
      override public function deActivate() : void
      {
         this.§<L§();
         super.deActivate();
         this.§3w§();
         this.§#3§();
      }
      
      private function §3w§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§1[§ > §8W§)
         {
            _loc1_ = Math.round(1000 / this.§1[§ * this.§&!5§);
            _loc2_ = §2h§.§,!P§;
            §14§.§+!I§(_loc1_,_loc2_,§4!@§.§@m§,false);
         }
      }
      
      private function §3]§(param1:Number) : void
      {
         this.§1[§ += param1;
         if(this.§1[§ > 0)
         {
            ++this.§&!5§;
         }
         if(this.§9!&§ != §[F§.§`A§() || this.§4!&§ != §[F§.§;'§())
         {
            this.§#3§();
         }
      }
      
      private function §#3§() : void
      {
         this.§1[§ = §@!0§;
         this.§&!5§ = 0;
         this.§9!&§ = §[F§.§`A§();
         this.§4!&§ = §[F§.§;'§();
      }
      
      override protected function initMightyEagleButton() : void
      {
         §<A§.getItemByName("Container_MEScore").setVisibility(false);
         §<A§.getItemByName("Button_Eagle").mClip.scaleX = 1;
         §<A§.getItemByName("Button_Eagle").mClip.scaleY = 1;
      }
      
      override protected function hideMightyEagleButton() : void
      {
         (§<A§.getItemByName("Button_Eagle") as §-u§).setComponentState(§2§.§1u§);
         (§<A§.getItemByName("Button_Eagle") as §-u§).setComponentVisualState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!§>!?§.§9!-§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               this.§7!9§ = true;
         }
      }
      
      override protected function levelCompleted() : void
      {
         this.§<L§();
         super.levelCompleted();
         var _loc1_:String = §2h§.§,!P§;
         var _loc2_:int = §;!M§.getScore();
         §14§.§`!O§(§1"§.§@r§,_loc1_,_loc2_);
         §;v§.§<"§.§+!J§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         switch(param2)
         {
            case "PAUSE":
               §`N§.§@c§();
               break;
            case "REPLAY":
               this.§<L§();
               §#u§.§<q§();
               mNextState = §#u§.§2`§;
               break;
            case "ZOOM_IN":
               §;!M§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §;!M§.doUserZoom(false);
               break;
            case "ZOOM_UP":
               (§;!M§ as §"N§).§<S§();
               break;
            case "USE_EAGLE":
               §<A§.getItemByName("Container_HiscoreContainer").setVisibility(false);
               §<A§.getItemByName("Container_LevelscoreContainer").setVisibility(false);
               (§<A§.getItemByName("Button_Eagle") as §-u§).setComponentState(§2§.§1u§);
               §4!§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §"!=§() : §6+§
      {
         return §;!M§;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §;!M§.getScore();
         var _loc3_:int = §>=§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§>=§.getValue() + param1 * §^!-§);
            §>=§.assign(_loc3_);
         }
         (§<A§.getItemByName("TextField_CurrentScore") as §?N§).setText(_loc3_.toString());
         if(this.§7!9§)
         {
            §<A§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§3]§(param1);
         if(§[F§.§9u§.slingshot.mDragging == true)
         {
            §<A§.getItemByName("Button_ZoomIn").setEnabled(false);
            §<A§.getItemByName("Button_ZoomOut").setEnabled(false);
         }
         else if(!§<A§.getItemByName("Button_ZoomIn").mClip.mouseEnabled)
         {
            §<A§.getItemByName("Button_ZoomIn").setEnabled(true);
            §<A§.getItemByName("Button_ZoomOut").setEnabled(true);
         }
         if(mNextState.length > 0)
         {
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      private function §<L§() : void
      {
         if(§,2§.§^X§)
         {
            this.§,!;§.alpha = 0;
            if(this.§^$§ != null)
            {
               this.§^$§.stop();
               this.§^$§ = null;
            }
            this.§1!A§ = false;
            this.§[!K§ = false;
         }
      }
      
      private function §!!5§() : void
      {
         var _loc2_:Object = {};
         var _loc3_:§#w§ = new §#w§(_loc2_,§>!?§.§'@§ + "levelComplete",this,§#w§.§=!'§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §+q§.§4d§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §#w§.§&2§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §#w§.§%0§(_loc2_.f)) != -1)
               {
                  §[F§.resume();
                  this.§70§ = true;
               }
               else
               {
                  this.§70§ = false;
               }
            }
         }
      }
      
      public function §>4§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §?!3§(param1:IOErrorEvent) : void
      {
      }
   }
}
