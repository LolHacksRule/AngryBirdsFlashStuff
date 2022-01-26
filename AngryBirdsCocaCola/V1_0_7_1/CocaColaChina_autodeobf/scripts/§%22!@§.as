package
{
   import §#-§.§4!K§;
   import §#m§.§3T§;
   import §%!X§.§=,§;
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
   import §&L§.§5!&§;
   import §'4§.§0!D§;
   import §+o§.§!o§;
   import §,!0§.§-4§;
   import §,§.§?!G§;
   import §-X§.§2&§;
   import §-v§.§,!1§;
   import §6!@§.§ !!§;
   import §6!@§.§[!8§;
   import §7m§.§7I§;
   import §87§.§+Q§;
   import §9I§.§"!G§;
   import §9I§.§]!^§;
   import §?@§.§ !,§;
   import §?@§.§"]§;
   import §?@§.§^!M§;
   import §[O§.§@!I§;
   import §^!5§.§+^§;
   import §^!5§.§>9§;
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
   
   public class §"!@§ extends §?!G§
   {
      
      public static const VERSION:String = "1.0.0.14";
      
      public static const §`?§:int = 760;
      
      public static const §9<§:int = 220;
      
      public static const §9!;§:int = 570;
      
      public static const §7e§:Boolean = false;
      
      public static const §&g§:int = 3000;
      
      public static const §4s§:String = "ABChinaCola";
      
      public static const § !d§:String = !!§7e§ ? "http://head.angrybirds-cokecn.appspot.com/" : "../";
      
      private static var §4w§:String = §3v§.§^6§;
      
      private static var §;!'§:SharedObject;
      
      private static var §6!b§:Boolean = false;
      
      private static var §%!"§:Class = § l§;
      
      private static var §&T§:Class = §7A§;
      
      private static var §+R§:Class = §'!6§;
      
      private static var §0!Y§:Class = §^b§;
      
      public static var §6!-§:§>9§ = null;
      
      public static var §-5§:Boolean = true;
      
      public static var §5!8§:§"!@§ = null;
      
      public static var §!!_§:Sprite = null;
       
      
      private var §1,§:§!o§;
      
      private var §%!9§:§+Q§;
      
      public function §"!@§(param1:CocaColaChinaAngryBirdsCanvas)
      {
         var _loc4_:SharedObject = null;
         this.§1,§ = new §!o§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §6!b§ = true;
         }
         this.§%!9§ = new §+Q§();
         try
         {
            IME.enabled = true;
            IME.conversionMode = IMEConversionMode.ALPHANUMERIC_HALF;
         }
         catch(error:Error)
         {
         }
         Security.allowDomain("http://angrybirds-cokecn.appspot.com");
         §]!^§.enabled = true;
         §"!G§.§,U§(§]!^§.§>!;§);
         §=1§ = §`?§ + §9<§;
         §&H§ = §9!;§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§^!M§.§2!^§(§%!"§),§^!M§.§2!^§(§&T§));
         §5!&§.§'!C§.init(§-4§.§=!§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§1,§,this.§80§);
         §5!8§ = this;
         §0!D§.§1!b§(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §,!1§.init(this,§`?§,§9!;§);
         §,!1§.§2T§ = new §@!I§(stage);
         §,!1§.§2O§.visible = §7e§;
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
         §"]§.§51§(§;!Y§);
         §"]§.§4!M§(true);
         stage.showDefaultContextMenu = false;
         var _loc3_:Boolean = true;
         try
         {
            if((_loc4_ = SharedObject.getLocal(§4s§)).data.useSounds == undefined)
            {
               _loc4_.data.useSounds = true;
            }
            _loc3_ = _loc4_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §0!?§(_loc3_);
         §7I§.§<!P§("CHANNEL_THEME",1,1);
         §7I§.§<!P§("CHANNEL_AMBIENT",1,1);
         §6!-§ = new §>9§("");
         §+^§.§@U§ = new §=,§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§#5§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§ v§);
         stage.addEventListener(Event.RESIZE,this.§,!=§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§<! §);
         if(stage.stageWidth != §`?§ || stage.stageHeight != §9!;§)
         {
            this.§,!=§(null);
         }
      }
      
      public static function §0!?§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         §-5§ = value;
         §7I§.§9x§(§-5§);
         try
         {
            mySO = SharedObject.getLocal(§4s§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §8!I§() : Boolean
      {
         return §-5§;
      }
      
      public static function §6t§() : void
      {
         if(§7I§.§"!#§("Channel_Theme") == null || !§7I§.§"!#§("Channel_Theme").§0M§())
         {
            §7I§.playSound("Coke_Theme","Channel_Theme",100);
         }
      }
      
      public static function §>!$§() : void
      {
         §7I§.§[p§("Channel_Theme");
      }
      
      public static function get §9!L§() : String
      {
         return §4w§;
      }
      
      public static function set §9!L§(param1:String) : void
      {
         §4w§ = param1;
      }
      
      public static function get §2_§() : Boolean
      {
         return §6!b§;
      }
      
      public static function get §];§() : SharedObject
      {
         return §;!'§;
      }
      
      public static function set §];§(param1:SharedObject) : void
      {
         §;!'§ = param1;
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
         § !,§.§9N§();
      }
      
      private function § v§(param1:MouseEvent) : void
      {
         § !,§.§>!I§();
      }
      
      private function §,!=§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §`?§;
         var _loc3_:Number = stage.stageHeight / §9!;§;
         if(_loc2_ < _loc3_)
         {
            §;!Y§.scaleX = §;!Y§.scaleY = _loc2_;
            §,!1§.§]!#§(§;!Y§.x,§;!Y§.y,stage.stageWidth,stage.stageWidth * (§9!;§ / §`?§));
         }
         else
         {
            §;!Y§.scaleX = §;!Y§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§`?§ / §9!;§);
            _loc5_ = stage.stageHeight;
            §,!1§.§]!#§(§;!Y§.x,§;!Y§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §<! §(param1:FullScreenEvent) : void
      {
         this.§,!=§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §5!&§.§'!C§.§>O§();
         §2&§.§>1§(§4!K§.§ !7§(this.§1,§.getFileAsString("Chapters.json")));
         this.§<!;§();
      }
      
      private function §<!;§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §"!G§.§,U§(§]!^§.§'"§,_loc1_.toString(),_loc1_);
         §,!1§.§>,§(§^!M§.§2!^§(§+R§),§^!M§.§2!^§(§0!Y§));
         §,!1§.§&f§(this.§1,§.§4!2§,§3T§.§^p§(),this.§"J§);
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
               §"]§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §&!Y§().mName + " New State = " + §&!Y§().mNextState);
               §3!9§(§&!Y§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §&g§;
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
      
      public function get §@!Y§() : §+Q§
      {
         return this.§%!9§;
      }
   }
}
