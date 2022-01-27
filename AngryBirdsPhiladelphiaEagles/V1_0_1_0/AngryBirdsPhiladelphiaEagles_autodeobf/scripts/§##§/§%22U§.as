package §##§
{
   import §"!J§.§5!'§;
   import §"I§.§7#§;
   import §"I§.set;
   import §'!N§.§%!E§;
   import §'!N§.§>p§;
   import §,!<§.§6!M§;
   import §0l§.Texture;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §2!!§.§0D§;
   import §3F§.§[e§;
   import §3H§.§`!@§;
   import §4!+§.§;!9§;
   import §4!D§.§>!4§;
   import §4!D§.§`!F§;
   import §5=§.§8G§;
   import §5=§.§^n§;
   import §5J§.§>$§;
   import §=8§.§&H§;
   import §=8§.dynamic;
   import §>2§.§!6§;
   import §>2§.§4h§;
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import §case§.§4W§;
   import §case§.§<!9§;
   import com.rovio.assets.§4D§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.geom.ColorTransform;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class §"U§ extends StatePlay implements §<!9§
   {
      
      private static const §<!@§:Number = -5 * 1000;
      
      private static const §switch§:Number = 10 * 1000;
       
      
      private var §=!4§:int = 0;
      
      private var §[!D§:Number = -5000.0;
      
      private var §>q§:int = 0;
      
      private var §<T§:Number = 0;
      
      private var §!!H§:Number = 0;
      
      private var §92§:Boolean = false;
      
      private const §&6§:Number = 0.4;
      
      private var §9]§:Boolean = false;
      
      private var §8K§:Boolean = false;
      
      private var §2J§:MovieClip = null;
      
      private var §7v§:§`!@§ = null;
      
      private var § @§:ColorTransform;
      
      private var §?!H§:§]H§ = null;
      
      private var §else§:Boolean = false;
      
      private var §7!'§:Boolean = false;
      
      private var §<-§:Boolean = false;
      
      public function §"U§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§=!4§ = param2;
      }
      
      override protected function getGameLogicController(param1:§4h§) : §5!'§
      {
         return new §;!9§(param1);
      }
      
      override protected function levelStarted() : void
      {
         this.§else§ = false;
         super.levelStarted();
         set.§>!"§(§7#§.§[!L§,§^n§.§-7§);
         (§ §.getItemByName("Button_Eagle") as dynamic).setComponentState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         § §.getItemByName("Container_MEScore").setVisibility(false);
         § §.getItemByName("Container_HiscoreContainer").setVisibility(true);
         § §.getItemByName("Container_LevelscoreContainer").setVisibility(true);
         §2G§.§7!,§.§@a§();
         §[e§(§2G§.§7!,§.§1B§).§=a§();
         this.§#!J§();
      }
      
      public function §?7§() : Boolean
      {
         return this.§else§;
      }
      
      public function §9!N§() : void
      {
         if(§!6§.§;!!§ && !this.§else§)
         {
            if(this.§?!H§ == null && !this.§8K§)
            {
               this.§else§ = true;
               this.§?!H§ = §<t§.§4J§.§#q§(this.§7v§,{"alpha":§!6§.§&6§},null,§!6§.§,e§);
               this.§?!H§.onComplete = this.§'!Q§;
               this.§?!H§.play();
               this.§8K§ = true;
               this.§9]§ = false;
            }
         }
      }
      
      public function §#I§() : void
      {
         if(§!6§.§;!!§)
         {
            if(!this.§9]§ && this.§?!H§ == null)
            {
               this.§?!H§ = §<t§.§4J§.§#q§(this.§7v§,{"alpha":0},null,§!6§.§8-§);
               this.§?!H§.onComplete = this.§'!Q§;
               this.§?!H§.play();
               this.§9]§ = true;
               this.§8K§ = false;
            }
         }
      }
      
      public function §'!Q§() : void
      {
         this.§?!H§ = null;
      }
      
      override public function init() : void
      {
         var _loc1_:Class = null;
         var _loc2_:BitmapData = null;
         var _loc3_:Texture = null;
         var _loc4_:Number = NaN;
         §8U§ = true;
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_FacebookLevelPlay[0]);
         if(§!6§.§;!!§)
         {
            _loc1_ = §4D§.§,!O§("MovieClip_SlowmotionColor");
            this.§2J§ = new _loc1_();
            this.§2J§.mouseEnabled = false;
            _loc2_ = new BitmapData(50,50,true,0);
            _loc2_.draw(this.§2J§);
            _loc3_ = Texture.§&5§(null,_loc2_,false,false);
            this.§7v§ = new §`!@§(_loc3_);
            _loc4_ = § §.height / AngryBirdsCustomCanvas.§"!§;
            this.§7v§.width = §2G§.§7!,§.§[!H§.width;
            this.§7v§.height = §2G§.§7!,§.§[!H§.height;
            this.§7v§.color = §!6§.§9R§;
            this.§7v§.alpha = 0;
            §2G§.§7!,§.§[!H§.addChild(this.§7v§);
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:§8G§ = null;
         var _loc3_:int = 0;
         super.activate();
         this.§;!&§();
         if(!§2G§.§7!,§.§1B§.mSardineCanAdded && !§2G§.§7!,§.§1B§.mMightyEagleAdded)
         {
            _loc2_ = §^n§.§5'§(§^n§.§-7§);
            this.§=!4§ = AngryBirdsFP11.§ ;§.§7g§(§^n§.§-7§);
            if(_loc2_)
            {
               _loc3_ = _loc2_.§^N§();
               if(§2G§.§7!,§.slingshot)
               {
                  _loc3_ += §2G§.§7!,§.slingshot.§6!,§();
               }
               this.§=!4§ = Math.min(this.§=!4§,_loc3_);
            }
            if(this.§=!4§ > 0)
            {
               § §.getItemByName("Container_HiscoreContainer").setVisibility(true);
               § §.getItemByName("Container_LevelscoreContainer").y = § §.getItemByName("Container_HiscoreContainer").y + 27;
               (§ §.getItemByName("TextField_HighScore") as §&H§).setText(this.§=!4§.toString());
            }
            else
            {
               § §.getItemByName("Container_HiscoreContainer").setVisibility(false);
               § §.getItemByName("Container_LevelscoreContainer").y = § §.getItemByName("Container_HiscoreContainer").y;
            }
         }
         var _loc1_:String = §#g§.§'!>§(§#g§.§ !@§);
         if(_loc1_ != null)
         {
            AngryBirdsFP11.§<!H§(Boolean(int(_loc1_)));
         }
      }
      
      override public function deActivate() : void
      {
         this.§#!J§();
         super.deActivate();
         this.§6h§();
         this.§;!&§();
      }
      
      private function §6h§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§[!D§ > §switch§)
         {
            _loc1_ = Math.round(1000 / this.§[!D§ * this.§>q§);
            _loc2_ = §^n§.§-7§;
            set.§5>§(_loc1_,_loc2_,§>$§.§<8§,false);
         }
      }
      
      private function §]!C§(param1:Number) : void
      {
         this.§[!D§ += param1;
         if(this.§[!D§ > 0)
         {
            ++this.§>q§;
         }
         if(this.§<T§ != §2G§.§%L§() || this.§!!H§ != §2G§.§2a§())
         {
            this.§;!&§();
         }
      }
      
      private function §;!&§() : void
      {
         this.§[!D§ = §<!@§;
         this.§>q§ = 0;
         this.§<T§ = §2G§.§%L§();
         this.§!!H§ = §2G§.§2a§();
      }
      
      override protected function initMightyEagleButton() : void
      {
         § §.getItemByName("Container_MEScore").setVisibility(false);
         § §.getItemByName("Button_Eagle").mClip.scaleX = 1;
         § §.getItemByName("Button_Eagle").mClip.scaleY = 1;
      }
      
      override protected function hideMightyEagleButton() : void
      {
         (§ §.getItemByName("Button_Eagle") as dynamic).setComponentState(§>p§.§3!-§);
         (§ §.getItemByName("Button_Eagle") as dynamic).setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!§#g§.§`T§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
               this.§92§ = true;
         }
      }
      
      override protected function levelCompleted() : void
      {
         this.§#!J§();
         super.levelCompleted();
         var _loc1_:String = §^n§.§-7§;
         var _loc2_:int = §^!?§.getScore();
         set.§>!"§(§7#§.§+6§,_loc1_,_loc2_);
         §>!4§.§4J§.§&§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         switch(param2)
         {
            case "PAUSE":
               §0D§.§@!3§();
               break;
            case "REPLAY":
               this.§#!J§();
               §6l§.§"w§();
               mNextState = §6l§.§=,§;
               break;
            case "ZOOM_IN":
               §^!?§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §^!?§.doUserZoom(false);
               break;
            case "ZOOM_UP":
               (§^!?§ as §;!9§).§@H§();
               break;
            case "USE_EAGLE":
               §2G§.§7!,§.camera.goToBirdView();
               § §.getItemByName("Container_HiscoreContainer").setVisibility(false);
               § §.getItemByName("Container_LevelscoreContainer").setVisibility(false);
               (§ §.getItemByName("Button_Eagle") as dynamic).setComponentState(§>p§.§3!-§);
               §5!-§();
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §?!P§() : §5!'§
      {
         return §^!?§;
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §^!?§.getScore();
         var _loc3_:int = §`!6§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§`!6§.getValue() + param1 * §^!5§);
            §`!6§.assign(_loc3_);
         }
         (§ §.getItemByName("TextField_CurrentScore") as §&H§).setText(_loc3_.toString());
         if(this.§92§)
         {
            § §.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§]!C§(param1);
         if(§2G§.§7!,§.slingshot.mDragging == true)
         {
            § §.getItemByName("Button_ZoomIn").setEnabled(false);
            § §.getItemByName("Button_ZoomOut").setEnabled(false);
         }
         else if(!§ §.getItemByName("Button_ZoomIn").mClip.mouseEnabled)
         {
            § §.getItemByName("Button_ZoomIn").setEnabled(true);
            § §.getItemByName("Button_ZoomOut").setEnabled(true);
         }
         if(mNextState.length > 0)
         {
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      private function §#!J§() : void
      {
         if(§!6§.§;!!§)
         {
            this.§7v§.alpha = 0;
            if(this.§?!H§ != null)
            {
               this.§?!H§.stop();
               this.§?!H§ = null;
            }
            this.§9]§ = false;
            this.§8K§ = false;
         }
      }
      
      private function §`#§() : void
      {
         var _loc2_:Object = {};
         var _loc3_:§`!F§ = new §`!F§(_loc2_,§#g§.§;"§ + "levelComplete",this,§`!F§.§31§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §4W§.§6!P§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §`!F§.§+>§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §`!F§.§36§(_loc2_.f)) != -1)
               {
                  §2G§.resume();
                  this.§<-§ = true;
               }
               else
               {
                  this.§<-§ = false;
               }
            }
         }
      }
      
      public function §-!1§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §!r§(param1:IOErrorEvent) : void
      {
      }
   }
}
