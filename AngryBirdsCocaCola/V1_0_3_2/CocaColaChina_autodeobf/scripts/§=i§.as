package
{
   import § !9§.§'!U§;
   import §!!L§.§&!R§;
   import §!!L§.§9F§;
   import §!!a§.§9G§;
   import §+!Z§.§=!2§;
   import §-!9§.§4K§;
   import §1Q§.§`![§;
   import §5!"§.§+!2§;
   import §5!b§.§,!E§;
   import §6!Q§.§,![§;
   import §6!Q§.§7!7§;
   import §6!Q§.§;!I§;
   import §7'§.§"E§;
   import §;C§.§+!M§;
   import §=F§.§"n§;
   import §>P§.§"N§;
   import §>P§.§+!%§;
   import §@!2§.§%!W§;
   import §@!P§.§!7§;
   import §@!P§.§!x§;
   import §@!P§.§&m§;
   import §@!P§.§'!-§;
   import §@!P§.§2>§;
   import §@!P§.§7!<§;
   import §@!P§.§7&§;
   import §@!P§.§;"§;
   import §@!P§.§?z§;
   import §@!P§.StateCutScene;
   import §@!P§.StatePlay;
   import §[o§.§4L§;
   import §]!>§.§6m§;
   import §`!7§.§[5§;
   import §`!7§.§^!,§;
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
   
   public class §=i§ extends §6m§
   {
      
      private static var §default§:Class = §8U§;
      
      public static const VERSION:String = "1.0.0.14";
      
      public static const §'0§:int = 760;
      
      public static const §6P§:int = 220;
      
      public static const §8-§:int = 570;
      
      public static const §2!@§:Boolean = false;
      
      public static const §9!D§:int = 3000;
      
      public static const §@l§:String = "ABChinaCola";
      
      public static const §'<§:String = !!§2!@§ ? "http://qa-1-0-0-7.angrybirds-cokecn.appspot.com/" : "../";
      
      private static var §1#§:String = §;"§.§'2§;
      
      private static var §!!&§:SharedObject;
      
      private static var §8!5§:Boolean = false;
      
      private static var §&!H§:Class = §'P§;
      
      private static var §#!J§:Class = §!#§;
      
      private static var §7I§:Class = §10§;
      
      private static var §`!0§:Class = §;I§;
      
      public static var §2S§:§^!,§ = null;
      
      public static var §#!b§:Boolean = true;
      
      public static var §5!D§:§=i§ = null;
      
      public static var § !B§:Sprite = null;
       
      
      private var §'q§:§`![§;
      
      public function §=i§(param1:CocaColaChinaAngryBirdsCanvas)
      {
         var _loc5_:SharedObject = null;
         this.§'q§ = new §`![§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §8!5§ = true;
         }
         try
         {
            IME.enabled = true;
            IME.conversionMode = IMEConversionMode.ALPHANUMERIC_HALF;
         }
         catch(error:Error)
         {
         }
         Security.allowDomain("http://angrybirds-cokecn.appspot.com");
         §+!%§.enabled = true;
         §"N§.§0o§(§+!%§.§'!V§);
         § !6§ = §'0§ + §6P§;
         §!!-§ = §8-§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§,![§.§6b§(§&!H§),§,![§.§6b§(§#!J§));
         §"E§.§`G§.init(§=!2§.§2i§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§'q§,this.§&!`§);
         §5!D§ = this;
         §+!M§.§4"§(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §"n§.init(this,§'0§,§8-§);
         §"n§.§[b§ = new §,!E§(stage);
         §"n§.§ !7§.visible = §2!@§;
         §'!K§(new §7!<§(false));
         §'!K§(new §'!-§(false));
         §'!K§(new §2>§(false));
         §'!K§(new §!7§(false));
         §'!K§(new §;"§(false));
         §'!K§(new StatePlay(false));
         §'!K§(new §!x§(false));
         §'!K§(new §?z§(false));
         §'!K§(new StateCutScene(false));
         §'!K§(new §&m§(false));
         §7!7§.§7#§(§#R§);
         §7!7§.§]C§(true);
         var _loc3_:XMLList = §,![§.§6b§(§default§).children();
         §4K§.init(_loc3_);
         stage.showDefaultContextMenu = false;
         var _loc4_:Boolean = true;
         try
         {
            if((_loc5_ = SharedObject.getLocal(§@l§)).data.useSounds == undefined)
            {
               _loc5_.data.useSounds = true;
            }
            _loc4_ = _loc5_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §<!?§(_loc4_);
         §'!U§.§,m§("CHANNEL_THEME",1,1);
         §'!U§.§,m§("CHANNEL_AMBIENT",1,1);
         §2S§ = new §^!,§("");
         §[5§.§0c§ = new §%!W§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§&B§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6!F§);
         stage.addEventListener(Event.RESIZE,this.§do §);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§1v§);
         if(stage.stageWidth != §'0§ || stage.stageHeight != §8-§)
         {
            this.§do §(null);
         }
      }
      
      public static function §<!?§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         §#!b§ = value;
         §'!U§.§3>§(§#!b§);
         try
         {
            mySO = SharedObject.getLocal(§@l§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §&!c§() : Boolean
      {
         return §#!b§;
      }
      
      public static function § !A§() : void
      {
         if(§'!U§.§`4§("Channel_Theme") == null || !§'!U§.§`4§("Channel_Theme").§?+§())
         {
            §'!U§.playSound("Coke_Theme","Channel_Theme",100);
         }
      }
      
      public static function §<7§() : void
      {
         §'!U§.§;&§("Channel_Theme");
      }
      
      public static function get §0!U§() : String
      {
         return §1#§;
      }
      
      public static function set §0!U§(param1:String) : void
      {
         §1#§ = param1;
      }
      
      public static function get §1w§() : Boolean
      {
         return §8!5§;
      }
      
      public static function get §0§() : SharedObject
      {
         return §!!&§;
      }
      
      public static function set §0§(param1:SharedObject) : void
      {
         §!!&§ = param1;
      }
      
      override protected function initStateLoad() : §9F§
      {
         return new §7&§(true,§9F§.§'2§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §&!`§(param1:ByteArray) : void
      {
      }
      
      private function §&B§(param1:Event) : void
      {
         §;!I§.§0!§();
      }
      
      private function §6!F§(param1:MouseEvent) : void
      {
         §;!I§.§3!c§();
      }
      
      private function §do §(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §'0§;
         var _loc3_:Number = stage.stageHeight / §8-§;
         if(_loc2_ < _loc3_)
         {
            §#R§.scaleX = §#R§.scaleY = _loc2_;
            §"n§.§;'§(§#R§.x,§#R§.y,stage.stageWidth,stage.stageWidth * (§8-§ / §'0§));
         }
         else
         {
            §#R§.scaleX = §#R§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§'0§ / §8-§);
            _loc5_ = stage.stageHeight;
            §"n§.§;'§(§#R§.x,§#R§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §1v§(param1:FullScreenEvent) : void
      {
         this.§do §(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §"E§.§`G§.§@!8§();
         §9G§.§[Y§(§+!2§.§<!,§(this.§'q§.getFileAsString("Chapters.json")));
         this.§;n§();
      }
      
      private function §;n§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §"N§.§0o§(§+!%§.§9!c§,_loc1_.toString(),_loc1_);
         §"n§.§'S§(§,![§.§6b§(§7I§),§,![§.§6b§(§`!0§));
         §"n§.§?i§(this.§'q§.§^!P§,§4L§.§'!%§(),this.§3X§);
      }
      
      private function §3X§(param1:Event) : void
      {
         §!d§(§7!<§.§'2§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§"n§.§ !7§ != null)
         {
            §"n§.§ !7§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§8D§().isGenericState())
         {
            if(_loc2_ == §&!R§.STATE_STATUS_COMPLETED)
            {
               §7!7§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §8D§().mName + " New State = " + §8D§().mNextState);
               §!d§(§8D§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §9!D§;
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
   }
}
