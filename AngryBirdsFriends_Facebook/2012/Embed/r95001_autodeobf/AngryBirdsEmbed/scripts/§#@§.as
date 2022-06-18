package
{
   import § "§.§8!3§;
   import §-'§.§[g§;
   import §-'§.§in§;
   import §0m§.§,5§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §9!?§.§=X§;
   import §9H§.§`j§;
   import §>^§.§;9§;
   import §@!%§.§ &§;
   import §@!%§.§#x§;
   import §@!%§.§'!'§;
   import §@!%§.§2!"§;
   import §@!%§.§=D§;
   import §@!%§.§[c§;
   import §@!%§.§]6§;
   import §@!%§.§^c§;
   import §[!&§.§[R§;
   import §]!1§.§5! §;
   import com.rovio.assets.§ 3§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class §#@§ extends AngryBirdsFP11
   {
      
      public static const §&T§:String = "0.0.0.1 (r95001) beta";
      
      private static const §@C§:String = "AngryBirdsEmbedSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsEmbed-2";
      
      protected static var § Z§:Class = §1-§;
      
      protected static var §6!D§:Class = §"f§;
      
      protected static var §^j§:Class = §#!§;
      
      protected static var § !6§:Class = §7&§;
      
      public static var §]z§:§#@§;
       
      
      private var §7B§:String = null;
      
      private var §6d§:String = "";
      
      private var §+!7§:Boolean = false;
      
      private var §?S§:LocalConnection;
      
      private var §2&§:String;
      
      private var §,t§:Boolean;
      
      private var §"<§:Sprite;
      
      private var §^<§:int = 0;
      
      private var §%-§:Number;
      
      private var §;r§:Number;
      
      public function §#@§(param1:§[R§, param2:Number, param3:Number)
      {
         var canvas:§[R§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         this.§2&§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§%-§ = initialWidth;
         this.§;r§ = initialHeight;
         this.§?S§ = new LocalConnection();
         this.§?S§.addEventListener(StatusEvent.STATUS,this.§8c§);
         try
         {
            this.§?S§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               §?S§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§?S§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§2&§);
         this.§?S§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§2&§);
         this.§?S§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §]z§ = this;
         §[g§.§>W§(§in§.§0'§);
         canvas.stage.quality = StageQuality.MEDIUM;
         §5! §.initialize(canvas.stage);
      }
      
      private function §8c§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§2&§)
         {
            this.§?S§ = null;
            this.§4Z§();
         }
      }
      
      public function §[!2§(param1:String) : void
      {
         §[g§.§6G§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=wallPlay" + param1 + "&levelId=" + §8!3§.§-[§),"_blank");
         this.§4Z§();
      }
      
      private function §4Z§() : void
      {
         this.§,t§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§,t§)
         {
            stage.frameRate = 1;
            §#!4§.pause();
            this.§%!D§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §%!D§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§"<§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = § 3§.§+i§("ThankYouForPlaying");
               this.§"<§ = new _loc2_();
               this.§"<§.x = stage.stageWidth - this.§"<§.width >> 1;
               this.§"<§.y = stage.stageHeight - this.§"<§.height >> 1;
               stage.addChild(this.§"<§);
               stage.addEventListener(MouseEvent.CLICK,this.§41§);
               this.§"<§.useHandCursor = true;
               this.§"<§.buttonMode = true;
               this.§;!D§();
            }
            catch(e:Error)
            {
            }
            if(§#!4§.§^Y§)
            {
               §#!4§.§^Y§.clear();
            }
         }
      }
      
      private function §41§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§41§);
         if(this.§"<§)
         {
            this.§"<§.useHandCursor = false;
            this.§"<§.buttonMode = false;
         }
         this.§[!2§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §7_§.init();
         §7_§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §`j§.§]!#§(§ Z§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §`j§.§]!#§(§6!D§);
         this.§^!@§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §`j§.§]!#§(§ !6§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§^!@§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §`j§.§]!#§(§^j§);
         this.§^!@§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§7B§ = stage.loaderInfo.parameters.levelId;
         if(!this.§7B§)
         {
            this.§7B§ = "1-1";
         }
         this.§^<§ = parseInt("0");
         if(this.§^<§ <= 0)
         {
            this.§^<§ = 0;
         }
         §@d§(false);
      }
      
      override protected function initLevelMain() : void
      {
         §#!4§.§^Y§ = new §=X§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §;9§(§'B§);
      }
      
      override protected function initStates() : void
      {
         §!a§(new § &§(false));
         §!a§(new §#x§(false));
         §!a§(new §[c§(false,this.§^<§));
         §!a§(new §'!'§(false));
         §!a§(new §^c§(false,this.§^<§));
         §!a§(new §]6§(false));
      }
      
      override protected function initStateLoad() : §,5§
      {
         if(!§,!%§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §[g§.§^+§("assetsUrl");
            }
         }
         return new §=D§(true,§,5§.§5%§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§,t§)
         {
            return;
         }
         §#!E§ = true;
         if(this.§7B§)
         {
            _loc2_ = §8!3§.§,9§(this.§7B§);
            if(_loc2_ != this.§7B§)
            {
               §[g§.§&!B§(this.§7B§);
            }
            this.§7B§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §8!3§.§+f§(_loc2_);
               §case§(§2!"§.§5%§);
               return;
            }
         }
         else
         {
            this.§4Z§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§;!D§();
      }
      
      private function §;!D§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §#!8§;
            _loc2_ = §3p§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§"<§)
         {
            this.§"<§.x = this.§%-§ - this.§"<§.width / this.§"<§.scaleX >> 1;
            this.§"<§.y = this.§;r§ - this.§"<§.height / this.§"<§.scaleY >> 1;
            this.§"<§.scaleX = stage.stageWidth / this.§%-§;
            this.§"<§.scaleY = stage.stageHeight / this.§;r§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         §#!4§.§=h§(0,0,_loc1_,_loc2_);
         setViewSize(_loc1_,_loc2_);
         this.§5p§(_loc1_,_loc2_);
         §#!8§ = _loc1_;
         §3p§ = _loc2_;
      }
      
      public function §5p§(param1:Number, param2:Number) : void
      {
         §5! §.setViewSize(param1,param2);
      }
      
      protected function §^!@§(param1:XML, param2:XML, param3:Array) : void
      {
         var _loc4_:String = null;
         var _loc5_:XML = null;
         for each(_loc4_ in param3)
         {
            for each(_loc5_ in param1[_loc4_].§*§)
            {
               param2[_loc4_].appendChild(_loc5_);
            }
         }
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §&T§.replace("{svn_version}","local dev build") + "Server: " + §-,§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §[g§.§>W§(§in§.§+-§,_loc1_.toString(),_loc1_);
         if(this.§,t§)
         {
            return;
         }
         this.§+!7§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§6d§)
         {
            this.§6d§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§6d§ += String.fromCharCode(param1.keyCode);
         }
         this.§6d§ = this.§6d§.toLowerCase();
         if(this.§6d§.length > 15)
         {
            this.§6d§ = this.§6d§.substr(1);
         }
      }
      
      override public function externalPause() : void
      {
      }
      
      override public function externalResume() : void
      {
      }
   }
}
