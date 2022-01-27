package
{
   import §!6§.§>D§;
   import §"^§.§9=§;
   import §#!9§.§?Z§;
   import §&[§.§<c§;
   import §,!F§.§0f§;
   import §3!%§.§-k§;
   import §4!6§.§<!1§;
   import §4!6§.§>r§;
   import §4q§.§;Q§;
   import §9"§.§;W§;
   import §<!4§.§25§;
   import §>Y§.§%!2§;
   import §>Y§.§%R§;
   import §>Y§.§%m§;
   import §>Y§.§1f§;
   import §>Y§.§6X§;
   import §>Y§.§7!#§;
   import §>Y§.§>!=§;
   import §>Y§.§@!+§;
   import §>Y§.§]!A§;
   import §>Y§.§`$§;
   import §?!=§.§5!9§;
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
   import flash.utils.getTimer;
   
   public class §#'§ extends AngryBirdsFP11
   {
      
      public static const §5#§:String = "0.0.1.0 (r98498)";
      
      protected static var §%!B§:Class = §0!<§;
      
      protected static var §79§:Class = §6!C§;
      
      protected static var §>9§:Class = §+8§;
      
      protected static var §,!§:Class = §1c§;
      
      public static const §^T§:String = "http://head.philadelphia-eagles.appspot.com/";
      
      public static const §<y§:Boolean = false;
      
      public static var §7Y§:String = !!§<y§ ? §^T§ : "../";
      
      public static const §+z§:String = "ABEagle";
      
      public static const §'c§:String = §+z§ + "_LEVEL_EAGLE_SCORE";
      
      public static const §7!<§:String = §+z§ + "_LEVEL_STARS";
      
      public static const §!!H§:String = §+z§ + "_LEVEL_SCORE";
      
      public static const §-&§:String = §+z§ + "_GAME_SOUND";
      
      public static var §20§:§#'§;
       
      
      private var § i§:String = null;
      
      private var §;A§:String = "";
      
      private var §,h§:Boolean = false;
      
      private var §^2§:int = 0;
      
      private var §<N§:Number;
      
      private var §+x§:Number;
      
      public function §#'§(param1:§?Z§, param2:Number, param3:Number)
      {
         this.§<N§ = param2;
         this.§+x§ = param3;
         super(param1);
         §20§ = this;
         param1.stage.quality = StageQuality.MEDIUM;
         §;Q§.initialize(param1.stage);
         §9=§.§1u§.visible = §<y§;
      }
      
      public static function §if §() : void
      {
         if(§25§.§'!1§("Channel_Theme") == null || !§25§.§'!1§("Channel_Theme").§#!"§())
         {
            §25§.playSound("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §,B§(param1:String, param2:*, param3:Boolean = false) : void
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         var value:* = param2;
         var hidden:Boolean = param3;
         try
         {
            mySO = SharedObject.getLocal(§+z§);
            mySO.data[key] = value;
            mySO.flush();
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §=!@§(param1:String, param2:Boolean = false) : *
      {
         var mySO:SharedObject = null;
         var key:String = param1;
         var hidden:Boolean = param2;
         try
         {
            mySO = SharedObject.getLocal(§+z§);
            return mySO.data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §6!P§(param1:String) : void
      {
         var key:String = param1;
         try
         {
            delete SharedObject.getLocal(§+z§).data[key];
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §">§() : void
      {
         var i:int = 0;
         try
         {
            i = 0;
            while(i < 16)
            {
               §#'§.§6!P§(§#'§.§'c§ + "1-" + (i + 1));
               §#'§.§6!P§(§#'§.§!!H§ + "1-" + (i + 1));
               §#'§.§6!P§(§#'§.§7!<§ + "1-" + (i + 1));
               i++;
            }
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public static function §2q§(param1:int) : Boolean
      {
         var _loc2_:int = §<c§.§ set§.§"q§();
         if(param1 + 1 > _loc2_)
         {
            return true;
         }
         if(§-k§.§7#§() == null)
         {
            return true;
         }
         return false;
      }
      
      private function §+,§() : Boolean
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
      
      public function §"!O§(param1:String) : void
      {
         §>r§.§!§(§>r§.§?!-§);
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
         §25§.init();
         §25§.enabled = true;
      }
      
      override protected function getAssetMap() : XML
      {
         return §>D§.§0M§(§%!B§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §>D§.§0M§(§79§);
         this.§&!6§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §>D§.§0M§(§,!§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         this.§&!6§(_loc2_,_loc1_,_loc3_);
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §>D§.§0M§(§>9§);
         this.§&!6§(_loc2_,_loc1_,["Backgrounds"]);
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§ i§ = stage.loaderInfo.parameters.levelId;
         if(!this.§ i§)
         {
            this.§ i§ = "1-1";
         }
         this.§^2§ = parseInt("0");
         if(this.§^2§ <= 0)
         {
            this.§^2§ = 0;
         }
         §'_§(true);
      }
      
      override protected function initLevelMain() : void
      {
         if(this.§+,§())
         {
            §9=§.§<!@§ = new §0f§(stage);
         }
         else
         {
            this.§@T§();
         }
      }
      
      private function §@T§() : void
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
         §3!?§ = new §;W§(§91§);
      }
      
      override protected function initStates() : void
      {
         §]!E§(new §>!=§(false));
         §]!E§(new §%!2§(false));
         §]!E§(new §%R§(false));
         §]!E§(new §%m§(false,this.§^2§));
         §]!E§(new §1f§(false));
         §]!E§(new §`$§(false,this.§^2§));
         §]!E§(new §6X§(false));
         §]!E§(new §]!A§(false));
         §]!E§(new §@!+§(false));
      }
      
      override protected function initStateLoad() : §5!9§
      {
         if(!§<y§)
         {
            if(!stage.loaderInfo.parameters.assetsUrl)
            {
               §>r§.§7y§("assetsUrl");
            }
         }
         return new §7!#§(true,§5!9§.§4!C§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:String = null;
         §7[§ = true;
         if(this.§ i§)
         {
            _loc2_ = §-k§.§0S§(this.§ i§);
            if(_loc2_ != this.§ i§)
            {
               §>r§.§&9§(this.§ i§);
            }
            this.§ i§ = null;
            §%`§(§%R§.§4!C§);
         }
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         this.§[!>§();
      }
      
      private function §[!>§() : void
      {
         var _loc1_:int = Math.round(stage.stageWidth);
         var _loc2_:int = Math.round(stage.stageHeight);
         if(_loc1_ < 20 || _loc2_ < 20)
         {
            _loc1_ = §1H§;
            _loc2_ = §%h§;
         }
         if(_loc1_ < 2 || _loc2_ < 2)
         {
            return;
         }
         if(_loc1_ / _loc2_ > 25 / 12)
         {
            _loc1_ = Math.round(_loc2_ * (25 / 12));
         }
         if(this.§+,§())
         {
            §9=§.§2!+§(0,0,_loc1_,_loc2_);
            setViewSize(_loc1_,_loc2_);
            this.§]@§(_loc1_,_loc2_);
         }
         §1H§ = _loc1_;
         §%h§ = _loc2_;
      }
      
      public function §]@§(param1:Number, param2:Number) : void
      {
         §;Q§.setViewSize(param1,param2);
      }
      
      protected function §&!6§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      public function §5x§() : String
      {
         return §5#§.replace("{svn_version}","local dev build");
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
         return §5#§.replace("{svn_version}","local dev build");
      }
      
      override protected function initializeGame() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §>r§.§!§(§<!1§.§3Z§,_loc1_.toString(),_loc1_);
         this.§,h§ = true;
         super.initializeGame();
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         if(!this.§;A§)
         {
            this.§;A§ = String.fromCharCode(param1.keyCode);
         }
         else
         {
            this.§;A§ += String.fromCharCode(param1.keyCode);
         }
         this.§;A§ = this.§;A§.toLowerCase();
         if(this.§;A§.length > 15)
         {
            this.§;A§ = this.§;A§.substr(1);
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
