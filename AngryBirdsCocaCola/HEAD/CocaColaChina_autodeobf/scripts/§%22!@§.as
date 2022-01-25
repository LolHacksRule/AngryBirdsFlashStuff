package
{
   import § !$§.§3!K§;
   import § C§.§#S§;
   import §#%§.§0!K§;
   import §#-§.§4!K§;
   import §%n§.§3v§;
   import §%n§.§4-§;
   import §%n§.§8!_§;
   import §%n§.§@t§;
   import §%n§.StateCutScene;
   import §%n§.StatePlay;
   import §%n§.§[5§;
   import §%n§.§[s§;
   import §%n§.§]!>§;
   import §%n§.§^%§;
   import §%n§.§^3§;
   import §&,§.§3F§;
   import §'!G§.§1C§;
   import §'!G§.§4!§;
   import §'!G§.§42§;
   import §-v§.§,!1§;
   import §2"§.§#!P§;
   import §6!@§.§ !!§;
   import §6!@§.§[!8§;
   import §7I§.§<!0§;
   import §86§.§!!d§;
   import §8B§.§?7§;
   import §;m§.§&`§;
   import §;m§.§?I§;
   import §="§.§67§;
   import §=1§.§[!'§;
   import §=J§.§^<§;
   import §>9§.§9!V§;
   import §>9§.§;!?§;
   import §^p§.§[!P§;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.system.Capabilities;
   import flash.system.IME;
   import flash.system.IMEConversionMode;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §"!@§ extends §[!'§
   {
      
      private static var §`?§:Class = § l§;
      
      public static const VERSION:String = "1.0.0.14";
      
      public static const §9<§:int = 760;
      
      public static const §9!;§:int = 220;
      
      public static const §7e§:int = 570;
      
      public static const §&g§:Boolean = false;
      
      public static const §4s§:int = 3000;
      
      public static const § !d§:String = "ABChinaCola";
      
      public static const §4w§:String = !!§&g§ ? "http://head.angrybirds-cokecn.appspot.com/" : "../";
      
      private static var §;!'§:String = §3v§.§^6§;
      
      private static var §6!b§:SharedObject;
      
      private static var §%!"§:Boolean = false;
      
      private static var §&T§:Class = §'!6§;
      
      private static var §+R§:Class = §@O§;
      
      private static var §0!Y§:Class = §7;§;
      
      private static var §6!-§:Class = §7A§;
      
      public static var §-5§:§;!?§ = null;
      
      public static var §5!8§:Boolean = true;
      
      public static var §!!_§:§"!@§ = null;
      
      public static var §0!?§:Sprite = null;
       
      
      private var §1,§:§?7§;
      
      private var §%!9§:§#S§;
      
      public function §"!@§(param1:CocaColaChinaAngryBirdsCanvas)
      {
         var _loc5_:SharedObject = null;
         this.§1,§ = new §?7§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §%!"§ = true;
         }
         this.§%!9§ = new §#S§();
         try
         {
            IME.enabled = true;
            IME.conversionMode = IMEConversionMode.ALPHANUMERIC_HALF;
         }
         catch(error:Error)
         {
         }
         Security.allowDomain("http://angrybirds-cokecn.appspot.com");
         §?I§.enabled = true;
         §&`§.§"!G§(§?I§.§0!B§);
         §[q§ = §9<§ + §9!;§;
         §#!^§ = §7e§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§4!§.§[!a§(§&T§),§4!§.§[!a§(§+R§));
         §3F§.§@!c§.init(§0!K§.§7!5§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§1,§,this.§80§);
         §!!_§ = this;
         §#!P§.§1!b§(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §,!1§.init(this,§9<§,§7e§);
         §,!1§.§2T§ = new §3!K§(stage);
         §,!1§.§2O§.visible = §&g§;
         §7!E§(new §^3§(false));
         §7!E§(new §4-§(false));
         §7!E§(new §@t§(false));
         §7!E§(new §[s§(false));
         §7!E§(new §3v§(false));
         §7!E§(new StatePlay(false));
         §7!E§(new §^%§(false));
         §7!E§(new §]!>§(false));
         §7!E§(new StateCutScene(false));
         §7!E§(new §8!_§(false));
         §1C§.§`r§(§4!?§);
         §1C§.§2!W§(true);
         var _loc3_:XMLList = §4!§.§[!a§(§`?§).children();
         §67§.init(_loc3_);
         stage.showDefaultContextMenu = false;
         var _loc4_:Boolean = true;
         try
         {
            if((_loc5_ = SharedObject.getLocal(§ !d§)).data.useSounds == undefined)
            {
               _loc5_.data.useSounds = true;
            }
            _loc4_ = _loc5_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §8!I§(_loc4_);
         §<!0§.§"!#§("CHANNEL_THEME",1,1);
         §<!0§.§"!#§("CHANNEL_AMBIENT",1,1);
         §-5§ = new §;!?§("");
         §9!V§.§%!§ = new §^<§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§#5§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§ v§);
         stage.addEventListener(Event.RESIZE,this.§,!=§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§<! §);
         if(stage.stageWidth != §9<§ || stage.stageHeight != §7e§)
         {
            this.§,!=§(null);
         }
      }
      
      public static function §8!I§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         §5!8§ = value;
         §<!0§.§1!F§(§5!8§);
         try
         {
            mySO = SharedObject.getLocal(§ !d§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §6t§() : Boolean
      {
         return §5!8§;
      }
      
      public static function §>!$§() : void
      {
         if(§<!0§.§9x§("Channel_Theme") == null || !§<!0§.§9x§("Channel_Theme").§0M§())
         {
            §<!0§.playSound("Coke_Theme","Channel_Theme",100);
         }
      }
      
      public static function §9!L§() : void
      {
         §<!0§.§-w§("Channel_Theme");
      }
      
      public static function get §2_§() : String
      {
         return §;!'§;
      }
      
      public static function set §2_§(param1:String) : void
      {
         §;!'§ = param1;
      }
      
      public static function get §];§() : Boolean
      {
         return §%!"§;
      }
      
      public static function get §^b§() : SharedObject
      {
         return §6!b§;
      }
      
      public static function set §^b§(param1:SharedObject) : void
      {
         §6!b§ = param1;
      }
      
      override protected function initStateLoad() : §[!8§
      {
         return new §[5§(true,§[!8§.§^6§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §80§(param1:ByteArray) : void
      {
      }
      
      private function §#5§(param1:Event) : void
      {
         §42§.§5V§();
      }
      
      private function § v§(param1:MouseEvent) : void
      {
         §42§.§5!O§();
      }
      
      private function §,!=§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §9<§;
         var _loc3_:Number = stage.stageHeight / §7e§;
         if(_loc2_ < _loc3_)
         {
            §4!?§.scaleX = §4!?§.scaleY = _loc2_;
            §,!1§.§]!#§(§4!?§.x,§4!?§.y,stage.stageWidth,stage.stageWidth * (§7e§ / §9<§));
         }
         else
         {
            §4!?§.scaleX = §4!?§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§9<§ / §7e§);
            _loc5_ = stage.stageHeight;
            §,!1§.§]!#§(§4!?§.x,§4!?§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §<! §(param1:FullScreenEvent) : void
      {
         this.§,!=§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §3F§.§@!c§.§2!7§();
         §!!d§.§?9§(§4!K§.§ !R§(this.§1,§.getFileAsString("Chapters.json")));
         this.§<!;§();
      }
      
      private function §<!;§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §&`§.§"!G§(§?I§.§<!#§,_loc1_.toString(),_loc1_);
         §,!1§.§>,§(§4!§.§[!a§(§0!Y§),§4!§.§[!a§(§6!-§));
         §,!1§.§&f§(this.§1,§.§5!D§,§[!P§.§#r§(),this.§"J§);
      }
      
      private function §"J§(param1:Event) : void
      {
         §3!9§(§^3§.§^6§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§,!1§.§2O§ != null)
         {
            §,!1§.§2O§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§&!Y§().isGenericState())
         {
            if(_loc2_ == § !!§.STATE_STATUS_COMPLETED)
            {
               §1C§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §&!Y§().mName + " New State = " + §&!Y§().mNextState);
               §3!9§(§&!Y§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §4s§;
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
         return VERSION.replace("{svn_version}","local dev build");
      }
      
      public function get §@!Y§() : §#S§
      {
         return this.§%!9§;
      }
   }
}
