package
{
   import §!=§.§[!F§;
   import §%!;§.§31§;
   import §%"§.§"!-§;
   import §+y§.§3V§;
   import §3!G§.§>y§;
   import §4!6§.§<5§;
   import §4M§.§9M§;
   import §8;§.§#!3§;
   import §8;§.§%!,§;
   import §8;§.§&G§;
   import §8;§.§+!%§;
   import §8;§.§3?§;
   import §8;§.§4!0§;
   import §8;§.§41§;
   import §8;§.§4N§;
   import §8;§.§;!F§;
   import §8;§.§;G§;
   import §9!0§.§ §;
   import §9!0§.§15§;
   import §<!<§.§+!<§;
   import §<!F§.§5!+§;
   import §?!;§.§6H§;
   import §@V§.§2!2§;
   import §]!L§.§!!G§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §#!1§ extends AngryBirdsFP11
   {
      
      public static const §+!#§:String = "0.0.1.0 (r98698)";
      
      protected static var §`g§:Class = §`4§;
      
      protected static var §?Q§:Class = §0X§;
      
      protected static var §3f§:Class = §`X§;
      
      protected static var §&6§:Class = §;M§;
      
      public static const §<!-§:String = "http://philadelphia-eagles.appspot.com/";
      
      public static const §7I§:Boolean = false;
      
      public static var §?!A§:String = !!§7I§ ? §<!-§ : "../";
      
      public static const §0'§:String = "ABEagle";
      
      public static const §6<§:String = §0'§ + "_LEVEL_EAGLE_SCORE";
      
      public static const §8-§:String = §0'§ + "_LEVEL_STARS";
      
      public static const §5!;§:String = §0'§ + "_LEVEL_SCORE";
      
      public static const §5Z§:String = §0'§ + "_GAME_SOUND";
      
      public static var §1%§:Dictionary;
      
      public static var §@F§:§#!1§;
      
      private static var §6!5§:String = "";
       
      
      private var §^_§:String = null;
      
      private var §;t§:String = "";
      
      private var §5J§:Boolean = false;
      
      private var §?!H§:int = 0;
      
      private var §3-§:Number;
      
      private var §&!I§:Number;
      
      public function §#!1§(param1:§>y§, param2:Number, param3:Number)
      {
         this.§3-§ = param2;
         this.§&!I§ = param3;
         super(param1);
         §@F§ = this;
         param1.stage.quality = StageQuality.MEDIUM;
         §+!<§.initialize(param1.stage);
         §5!+§.§"!I§.visible = §7I§;
         var _loc4_:String;
         if((_loc4_ = §[!F§.§;!&§("window.navigator.userAgent.toString")).indexOf("Safari") != -1)
         {
            §6!5§ = "Safari";
         }
         if(_loc4_.indexOf("Firefox") != -1)
         {
            §6!5§ = "Firefox";
         }
         if(_loc4_.indexOf("Chrome") != -1)
         {
            §6!5§ = "Chrome";
         }
         if(_loc4_.indexOf("MSIE") != -1)
         {
            §6!5§ = "Internet Explorer";
         }
         if(_loc4_.indexOf("Opera") != -1)
         {
            §6!5§ = "Opera";
         }
      }
      
      public static function §6r§() : void
      {
         if(§3V§.§6q§("Channel_Theme") == null || !§3V§.§6q§("Channel_Theme").§6-§())
         {
            §3V§.playSound("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §`U§(param1:String, param2:*) : void
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         var value:* = param2;
         try
         {
            if(§6!5§ == "Opera" || §6!5§ == "Firefox" || §6!5§ == "Safari")
            {
               mySO = SharedObject.getLocal(§0'§);
               mySO.data[key] = value;
               mySO.flush();
            }
            else
            {
               §9M§.§9n§(key,value);
               §9M§.flush();
            }
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §9u§(param1:String) : *
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         try
         {
            if(§6!5§ == "Opera" || §6!5§ == "Firefox" || §6!5§ == "Safari")
            {
               mySO = SharedObject.getLocal(§0'§);
               return mySO.data[key];
            }
            return §9M§.getValue(key);
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §3%§(param1:String) : void
      {
         var key:String = param1;
         try
         {
            delete SharedObject.getLocal(§0'§).data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §`!?§() : void
      {
         var i:int = 0;
         try
         {
            i = 0;
            while(i < 16)
            {
               §#!1§.§3%§(§#!1§.§6<§ + "1-" + (i + 1));
               §#!1§.§3%§(§#!1§.§5!;§ + "1-" + (i + 1));
               §#!1§.§3%§(§#!1§.§8-§ + "1-" + (i + 1));
               i++;
            }
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §8!H§(param1:int) : Boolean
      {
         var _loc2_:int = §<5§.§&y§.§<!7§();
         if(param1 + 1 > _loc2_)
         {
            return true;
         }
         if(§6H§.§ O§() == null)
         {
            return true;
         }
         return false;
      }
      
      public static function §?%§(param1:int, param2:String) : void
      {
         if(§1%§ == null)
         {
            §1%§ = new Dictionary();
         }
         §1%§[param2] = param1;
      }
      
      public static function §]%§(param1:String) : int
      {
         if(§1%§ == null || §1%§[param1] == null)
         {
            return -1;
         }
         return §1%§[param1];
      }
      
      private function §>!3§() : Boolean
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
      
      public function §]H§(param1:String) : void
      {
         §15§.§,!1§(§15§.§^Y§);
         navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=" + param1),"_blank");
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         super.onEnterFrame(param1);
      }
      
      override protected function initSoundEngine() : void
      {
         §3V§.init();
         §3V§.enabled = true;
      }
      
      override protected function getAssetMap() : XML
      {
         return §2!2§.§7!I§(§`g§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §2!2§.§7!I§(§?Q§);
         this.§#b§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §2!2§.§7!I§(§&6§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§#b§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §2!2§.§7!I§(§3f§);
         this.§#b§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§^_§ = stage.loaderInfo.parameters.levelId;
         if(!this.§^_§)
         {
            this.§^_§ = "1-1";
         }
         this.§?!H§ = parseInt("0");
         if(this.§?!H§ <= 0)
         {
            this.§?!H§ = 0;
         }
         §`1§(true);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§>!3§())
         {
            §5!+§.§6!§ = new §"!-§(stage);
         }
         else
         {
            this.§8!E§();
         }
      }
      
      private function §8!E§() : void
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
         §^O§ = new §!!G§(§+!C§);
      }
      
      override protected function initStates() : void
      {
         §@!!§(new §&G§(false));
         §@!!§(new §#!3§(false));
         §@!!§(new §+!%§(false));
         §@!!§(new §3?§(false,this.§?!H§));
         §@!!§(new §;G§(false));
         §@!!§(new §4N§(false,this.§?!H§));
         §@!!§(new §41§(false));
         §@!!§(new §4!0§(false));
         §@!!§(new §%!,§(false));
      }
      
      override protected function initStateLoad() : §31§
      {
         if(!§7I§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §15§.§>!J§("assetsUrl");
            }
         }
         return new §;!F§(true,§31§.§"Z§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §58§ = true;
         if(this.§^_§)
         {
            _loc2_ = §6H§.§4!+§(this.§^_§);
            if(_loc2_ != this.§^_§)
            {
               §15§.§^&§(this.§^_§);
            }
            this.§^_§ = null;
            §super§(§+!%§.§"Z§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§ 3§();
      }
      
      private function § 3§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §7E§;
            _loc2_ = §&!A§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§>!3§())
         {
            §5!+§.§<!C§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§;!J§(_loc1_,_loc2_);
         }
         §7E§ = _loc1_;
         §&!A§ = _loc2_;
      }
      
      public function §;!J§(param1:Number, param2:Number) : void
      {
         §+!<§.setViewSize(param1,param2);
      }
      
      protected function §#b§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            for each(_loc6_ in param1[_loc5_].§*§)
            {
               if(param4)
               {
                  delete param2[_loc5_][_loc6_.name()];
               }
               param2[_loc5_].appendChild(_loc6_);
            }
         }
      }
      
      public function §];§() : String
      {
         return §+!#§.replace("{svn_version}","local dev build");
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(stage != null)
         {
            _loc1_ = stage.loaderInfo.parameters.buildNumber;
            if(_loc1_ != null && _loc1_.length > 0)
            {
               _loc2_ = _loc1_.indexOf(".");
               if(_loc2_ > 0)
               {
                  _loc1_ = _loc1_.substr(0,_loc2_);
               }
               _loc3_ = 0;
               while(_loc3_ < 5)
               {
                  _loc1_ = _loc1_.replace("-",".");
                  _loc3_++;
               }
               return _loc1_;
            }
         }
         return §+!#§.replace("{svn_version}","local dev build");
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §15§.§,!1§(§ §.§]8§,_loc1_.toString(),_loc1_);
         this.§5J§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§;t§)
         {
            this.§;t§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§;t§ += String.fromCharCode(param1.keyCode);
         }
         this.§;t§ = this.§;t§.toLowerCase();
         if(this.§;t§.length > 15)
         {
            this.§;t§ = this.§;t§.substr(1);
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
