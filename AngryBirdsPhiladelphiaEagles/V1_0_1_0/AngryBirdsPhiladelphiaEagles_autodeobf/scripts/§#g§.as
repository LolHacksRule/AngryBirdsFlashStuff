package
{
   import §"I§.§7#§;
   import §"I§.set;
   import §##§.§!?§;
   import §##§.§"!Q§;
   import §##§.§"U§;
   import §##§.§2X§;
   import §##§.§3!,§;
   import §##§.§;j§;
   import §##§.§?I§;
   import §##§.§[!-§;
   import §##§.§^!2§;
   import §##§.§package§;
   import §,!<§.§39§;
   import §-!5§.§5!O§;
   import §2!!§.§0D§;
   import §4!D§.§>!4§;
   import §5=§.§^n§;
   import §8>§.§2&§;
   import §<!F§.§-q§;
   import §>2§.§00§;
   import §@w§.§2G§;
   import §[N§.§9k§;
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
   
   public class §#g§ extends AngryBirdsFP11
   {
      
      public static const §9V§:String = "0.0.1.0 (r98639)";
      
      protected static var §7!O§:Class = §#h§;
      
      protected static var §`^§:Class = §1! §;
      
      protected static var §!!M§:Class = §2y§;
      
      protected static var §-!M§:Class = §^!$§;
      
      public static const §;$§:String = "http://head.philadelphia-eagles.appspot.com/";
      
      public static const §`T§:Boolean = false;
      
      public static var §;"§:String = !!§`T§ ? §;$§ : "../";
      
      public static const §8!§:String = "ABEagle";
      
      public static const §&,§:String = §8!§ + "_LEVEL_EAGLE_SCORE";
      
      public static const §3!9§:String = §8!§ + "_LEVEL_STARS";
      
      public static const §9!@§:String = §8!§ + "_LEVEL_SCORE";
      
      public static const § !@§:String = §8!§ + "_GAME_SOUND";
      
      public static var §>8§:Dictionary;
      
      public static var §^!G§:§#g§;
       
      
      private var §4&§:String = null;
      
      private var §;z§:String = "";
      
      private var §?V§:Boolean = false;
      
      private var §=!4§:int = 0;
      
      private var §,$§:Number;
      
      private var §6!-§:Number;
      
      public function §#g§(param1:§-q§, param2:Number, param3:Number)
      {
         this.§,$§ = param2;
         this.§6!-§ = param3;
         super(param1);
         §^!G§ = this;
         param1.stage.quality = StageQuality.MEDIUM;
         §0D§.initialize(param1.stage);
         §2G§.§ z§.visible = §`T§;
      }
      
      public static function §+Q§() : void
      {
         if(§9k§.§"t§("Channel_Theme") == null || !§9k§.§"t§("Channel_Theme").§]!6§())
         {
            §9k§.playSound("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §56§(param1:String, param2:*) : void
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         var value:* = param2;
         try
         {
            mySO = SharedObject.getLocal(§8!§);
            mySO.data[key] = value;
            mySO.flush();
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §'!>§(param1:String) : *
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         try
         {
            mySO = SharedObject.getLocal(§8!§);
            return mySO.data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §!!C§(param1:String) : void
      {
         var key:String = param1;
         try
         {
            delete SharedObject.getLocal(§8!§).data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §>v§() : void
      {
         var i:int = 0;
         try
         {
            i = 0;
            while(i < 16)
            {
               §#g§.§!!C§(§#g§.§&,§ + "1-" + (i + 1));
               §#g§.§!!C§(§#g§.§9!@§ + "1-" + (i + 1));
               §#g§.§!!C§(§#g§.§3!9§ + "1-" + (i + 1));
               i++;
            }
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §"!C§(param1:int) : Boolean
      {
         var _loc2_:int = §>!4§.§4J§.§36§();
         if(param1 + 1 > _loc2_)
         {
            return true;
         }
         if(§^n§.§<_§() == null)
         {
            return true;
         }
         return false;
      }
      
      public static function §%!C§(param1:int, param2:String) : void
      {
         if(§>8§ == null)
         {
            §>8§ = new Dictionary();
         }
         §>8§[param2] = param1;
      }
      
      public static function §9?§(param1:String) : int
      {
         if(§>8§ == null || §>8§[param1] == null)
         {
            return -1;
         }
         return §>8§[param1];
      }
      
      private function §7G§() : Boolean
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
      
      public function §>y§(param1:String) : void
      {
         set.§>!"§(set.§2!"§);
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
         §9k§.init();
         §9k§.enabled = true;
      }
      
      override protected function getAssetMap() : XML
      {
         return §5!O§.§0N§(§7!O§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §5!O§.§0N§(§`^§);
         this.§?0§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §5!O§.§0N§(§-!M§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§?0§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §5!O§.§0N§(§!!M§);
         this.§?0§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§4&§ = stage.loaderInfo.parameters.levelId;
         if(!this.§4&§)
         {
            this.§4&§ = "1-1";
         }
         this.§=!4§ = parseInt("0");
         if(this.§=!4§ <= 0)
         {
            this.§=!4§ = 0;
         }
         §<!H§(true);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§7G§())
         {
            §2G§.§7!,§ = new §00§(stage);
         }
         else
         {
            this.§6!A§();
         }
      }
      
      private function §6!A§() : void
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
         § ;§ = new §2&§(§!T§);
      }
      
      override protected function initStates() : void
      {
         §7N§(new §2X§(false));
         §7N§(new §[!-§(false));
         §7N§(new §package§(false));
         §7N§(new §"U§(false,this.§=!4§));
         §7N§(new §!?§(false));
         §7N§(new §;j§(false,this.§=!4§));
         §7N§(new §3!,§(false));
         §7N§(new §^!2§(false));
         §7N§(new §?I§(false));
      }
      
      override protected function initStateLoad() : §39§
      {
         if(!§`T§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               set.§!Q§("assetsUrl");
            }
         }
         return new §"!Q§(true,§39§.§=,§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §'q§ = true;
         if(this.§4&§)
         {
            _loc2_ = §^n§.§while§(this.§4&§);
            if(_loc2_ != this.§4&§)
            {
               set.§<%§(this.§4&§);
            }
            this.§4&§ = null;
            §3!;§(§package§.§=,§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§`4§();
      }
      
      private function §`4§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §1!<§;
            _loc2_ = §1!O§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§7G§())
         {
            §2G§.§3i§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§8_§(_loc1_,_loc2_);
         }
         §1!<§ = _loc1_;
         §1!O§ = _loc2_;
      }
      
      public function §8_§(param1:Number, param2:Number) : void
      {
         §0D§.setViewSize(param1,param2);
      }
      
      protected function §?0§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      public function § o§() : String
      {
         return §9V§.replace("{svn_version}","local dev build");
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
         return §9V§.replace("{svn_version}","local dev build");
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         set.§>!"§(§7#§.§8!9§,_loc1_.toString(),_loc1_);
         this.§?V§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§;z§)
         {
            this.§;z§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§;z§ += String.fromCharCode(param1.keyCode);
         }
         this.§;z§ = this.§;z§.toLowerCase();
         if(this.§;z§.length > 15)
         {
            this.§;z§ = this.§;z§.substr(1);
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
