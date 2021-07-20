package
{
   import § !@§.§,a§;
   import § !@§.§22§;
   import § !@§.§4`§;
   import § !@§.§5l§;
   import § !@§.§6f§;
   import § !@§.§7L§;
   import § !@§.§<!=§;
   import § !@§.§^!K§;
   import §#X§.§,!F§;
   import §+!B§.§-Q§;
   import §+!B§.§;9§;
   import §-I§.§=!B§;
   import §1!-§.§[4§;
   import §3a§.§"X§;
   import §5!L§.§=w§;
   import §6!C§.§+7§;
   import §6A§.§&>§;
   import §7g§.§'!;§;
   import §7j§.§5!N§;
   import com.rovio.assets.LoadingScreen;
   import com.rovio.assets.§]!>§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   
   public class §<!7§ extends AngryBirdsFP11
   {
      
      public static const §#!3§:String = "1.0.0.5 (r105755) beta";
      
      private static const §;V§:String = "AngryBirdsEmbedIntelSettings";
      
      private static const LOCAL_CONNECTION_1:String = "AngryBirdsIntelEmbed-1";
      
      private static const LOCAL_CONNECTION_2:String = "AngryBirdsIntelEmbed-2";
      
      protected static var §51§:Class = §3C§;
      
      protected static var §9i§:Class = §<x§;
      
      protected static var §`H§:Class = §4o§;
      
      protected static var §&,§:Class = §]!A§;
      
      public static var §4!"§:§<!7§;
       
      
      private var §4_§:String = null;
      
      private var §9j§:String = "";
      
      private var §9!$§:Boolean = false;
      
      private var §3!5§:LocalConnection;
      
      private var §>o§:String;
      
      private var §^!F§:Boolean;
      
      private var §9!D§:Sprite;
      
      private var §5G§:int = 0;
      
      private var §'v§:Number;
      
      private var §>Z§:Number;
      
      public function §<!7§(param1:§5!N§, param2:Number, param3:Number)
      {
         var canvas:§5!N§ = param1;
         var initialWidth:Number = param2;
         var initialHeight:Number = param3;
         this.§>o§ = new Date().toTimeString() + "_" + Math.round(Math.random() * 100000);
         this.§'v§ = initialWidth;
         this.§>Z§ = initialHeight;
         this.§3!5§ = new LocalConnection();
         this.§3!5§.addEventListener(StatusEvent.STATUS,this.§0!B§);
         try
         {
            this.§3!5§.connect(LOCAL_CONNECTION_1);
         }
         catch(e:Error)
         {
            try
            {
               §3!5§.connect(LOCAL_CONNECTION_2);
            }
            catch(e:Error)
            {
            }
         }
         this.§3!5§.send(LOCAL_CONNECTION_1,"onInstanceStarting",this.§>o§);
         this.§3!5§.send(LOCAL_CONNECTION_2,"onInstanceStarting",this.§>o§);
         this.§3!5§.client = {"onInstanceStarting":this.onInstanceStarting};
         super(canvas);
         §4!"§ = this;
         canvas.stage.quality = StageQuality.MEDIUM;
         §+7§.initialize(canvas.stage);
      }
      
      private function §8b§() : Boolean
      {
         var _loc2_:Stage3D = null;
         var _loc1_:int = 0;
         try
         {
            _loc2_ = canvas.stage.stage3Ds[0];
            if(_loc2_)
            {
               _loc1_ = 1;
            }
         }
         catch(e:Error)
         {
         }
         if(_loc1_ == 0)
         {
            return false;
         }
         return true;
      }
      
      private function §0!B§(param1:StatusEvent) : void
      {
      }
      
      public function onInstanceStarting(param1:String) : void
      {
         if(param1 != this.§>o§)
         {
            this.§3!5§ = null;
            this.§;!H§();
         }
      }
      
      public function §^"§(param1:String) : void
      {
         §;9§.§%p§(param1);
         navigateToURL(new URLRequest("https://apps.facebook.com/ab_in_adventure/?ref=wallPlay" + param1 + "&levelId=" + §[4§.§"!>§),"_blank");
         this.§;!H§();
      }
      
      private function §;!H§() : void
      {
         this.§^!F§ = true;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         if(this.§^!F§)
         {
            stage.frameRate = 1;
            §=w§.pause();
            this.§=Q§();
         }
         else
         {
            super.onEnterFrame(param1);
         }
      }
      
      private function §=Q§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Class = null;
         if(!this.§9!D§)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.numChildren)
            {
               stage.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
            try
            {
               _loc2_ = §]!>§.§8!@§("ThankYouForPlaying");
               this.§9!D§ = new _loc2_();
               this.§9!D§.x = 0;
               this.§9!D§.y = 0;
               stage.addChild(this.§9!D§);
               stage.addEventListener(MouseEvent.CLICK,this.§%!J§);
               this.§9!D§.useHandCursor = true;
               this.§9!D§.buttonMode = true;
               this.§4!>§();
            }
            catch(e:Error)
            {
            }
            if(§=w§.§ o§)
            {
               §=w§.§ o§.clear();
            }
         }
      }
      
      private function §%!J§(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.CLICK,this.§%!J§);
         if(this.§9!D§)
         {
            this.§9!D§.useHandCursor = false;
            this.§9!D§.buttonMode = false;
         }
         this.§^"§("ThankYou");
      }
      
      override protected function initSoundEngine() : void
      {
         §,!F§.init();
         §,!F§.enabled = false;
      }
      
      override protected function getAssetMap() : XML
      {
         return §"X§.§,@§(§51§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §"X§.§,@§(§9i§);
         this.§&z§(_loc2_,_loc1_,["Views","Components"]);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §"X§.§,@§(§&,§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§&z§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §"X§.§,@§(§`H§);
         this.§&z§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§4_§ = stage.loaderInfo.parameters.levelId;
         if(!this.§4_§)
         {
            this.§4_§ = "1-1";
         }
         this.§5G§ = parseInt("0");
         if(this.§5G§ <= 0)
         {
            this.§5G§ = 0;
         }
         §%!H§(false);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§8b§())
         {
            §=w§.§ o§ = new §&>§(stage);
         }
         else
         {
            this.§66§();
         }
      }
      
      private function §66§() : void
      {
         var _loc1_:TextField = new TextField();
         _loc1_.text = "The game doesn\'t yet run on this device";
         _loc1_.textColor = 0;
         _loc1_.selectable = false;
         _loc1_.height = 30;
         _loc1_.width = 300;
         _loc1_.autoSize = TextFieldAutoSize.CENTER;
         stage.addChild(_loc1_);
         _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
         _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
      }
      
      override protected function initUserProgress() : void
      {
         sUserProgress = new §=!B§(§,A§);
      }
      
      override protected function initStates() : void
      {
         §8Y§(new §,a§(false));
         §8Y§(new §5l§(false));
         §8Y§(new §<!=§(false,this.§5G§));
         §8Y§(new §22§(false));
         §8Y§(new §7L§(false,this.§5G§));
         §8Y§(new §6f§(false));
      }
      
      override protected function initStateLoad() : §'!;§
      {
         if(!§%Z§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §;9§.§2j§("assetsUrl");
            }
         }
         return new §4`§(true,§'!;§.§>9§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§^!F§)
         {
            return;
         }
         §,E§ = true;
         if(this.§4_§)
         {
            _loc2_ = §[4§.§![§(this.§4_§);
            if(_loc2_ != this.§4_§)
            {
               §;9§.§^'§(this.§4_§);
            }
            this.§4_§ = null;
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               §[4§.§]a§(_loc2_);
               §+N§(§^!K§.§>9§);
               return;
            }
         }
         else
         {
            this.§;!H§();
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§4!>§();
      }
      
      private function §4!>§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §&n§;
            _loc2_ = §7?§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(this.§9!D§)
         {
            this.§9!D§.x = 0;
            this.§9!D§.y = 0;
            this.§9!D§.scaleX = stage.stageWidth / this.§'v§;
            this.§9!D§.scaleY = stage.stageHeight / this.§>Z§;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§8b§())
         {
            §=w§.§8'§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§>F§(_loc1_,_loc2_);
         }
         §&n§ = _loc1_;
         §7?§ = _loc2_;
      }
      
      public function §>F§(param1:Number, param2:Number) : void
      {
         §+7§.setViewSize(param1,param2);
      }
      
      protected function §&z§(param1:XML, param2:XML, param3:Array) : void
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
         return "Client: " + §#!3§.replace("{svn_version}","local dev build") + "Server: " + §"!&§;
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §;9§.§"!A§(§-Q§.§0!4§,_loc1_.toString(),_loc1_);
         if(this.§^!F§)
         {
            return;
         }
         this.§9!$§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§9j§)
         {
            this.§9j§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§9j§ += String.fromCharCode(param1.keyCode);
         }
         this.§9j§ = this.§9j§.toLowerCase();
         if(this.§9j§.length > 15)
         {
            this.§9j§ = this.§9j§.substr(1);
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
