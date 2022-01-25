package
{
   import § !C§.§3!>§;
   import § !C§.§6!W§;
   import § try§.§=h§;
   import §"! §.§=s§;
   import §#!&§.§?u§;
   import §%!^§.§"=§;
   import §%!a§.§ !R§;
   import §&$§.§6g§;
   import §&$§.§6j§;
   import §'! §.§'b§;
   import §+x§.§-6§;
   import §-!D§.§?!%§;
   import §-"§.§,_§;
   import §-"§.§0!O§;
   import §0!b§.§#!=§;
   import §2!G§.§#f§;
   import §4^§.§=!D§;
   import §9L§.§?9§;
   import §>I§.§ o§;
   import §>I§.§1!Q§;
   import §>I§.§3!R§;
   import §>I§.§8;§;
   import §>I§.§91§;
   import §>I§.§;!X§;
   import §>I§.§<-§;
   import §>I§.StateCutScene;
   import §>I§.StatePlay;
   import §>I§.§[!4§;
   import §>I§.§]#§;
   import §]n§.§=!O§;
   import §^=§.§,!X§;
   import §^=§.§4S§;
   import §^=§.§8!6§;
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
   
   public class §-!#§ extends §?!%§
   {
      
      public static const VERSION:String = "1.0.0.14";
      
      public static const §6`§:int = 760;
      
      public static const §4i§:int = 220;
      
      public static const §?!E§:int = 570;
      
      public static const §?!-§:Boolean = false;
      
      public static const §!x§:int = 3000;
      
      public static const §[!I§:String = "ABChinaCola";
      
      public static const §>+§:String = !!§?!-§ ? "http://head.angrybirds-cokecn.appspot.com/" : "../";
      
      private static var §]w§:String = §91§.§ !P§;
      
      private static var §^J§:SharedObject;
      
      private static var §!!Z§:Boolean = false;
      
      private static var §%$§:Class = §2"§;
      
      private static var §,5§:Class = §[O§;
      
      private static var §3!a§:Class = §;!5§;
      
      private static var §8!-§:Class = §6Q§;
      
      public static var §4,§:§0!O§ = null;
      
      public static var §&#§:Boolean = true;
      
      public static var §!!8§:§-!#§ = null;
      
      public static var §,E§:Sprite = null;
       
      
      private var §"L§:§'b§;
      
      private var §]x§:§?9§;
      
      public function §-!#§(param1:CocaColaChinaAngryBirdsCanvas)
      {
         var _loc4_:SharedObject = null;
         this.§"L§ = new §'b§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §!!Z§ = true;
         }
         this.§]x§ = new §?9§();
         try
         {
            IME.enabled = true;
            IME.conversionMode = IMEConversionMode.ALPHANUMERIC_HALF;
         }
         catch(error:Error)
         {
         }
         Security.allowDomain("http://angrybirds-cokecn.appspot.com");
         §6j§.enabled = true;
         §6g§.§+!J§(§6j§.§%I§);
         §1!%§ = §6`§ + §4i§;
         §`b§ = §?!E§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§4S§.§+X§(§%$§),§4S§.§+X§(§,5§));
         §=h§.§]!D§.init(§?u§.§-g§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§"L§,this.§6!6§);
         §!!8§ = this;
         §=!O§.§=D§(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §#!=§.init(this,§6`§,§?!E§);
         §#!=§.§&![§ = new §#f§(stage);
         §#!=§.§-!'§.visible = §?!-§;
         §-!e§(new §1!Q§(false));
         §-!e§(new §]#§(false));
         §-!e§(new §<-§(false));
         §-!e§(new § o§(false));
         §-!e§(new §91§(false));
         §-!e§(new StatePlay(false));
         §-!e§(new §3!R§(false));
         §-!e§(new §8;§(false));
         §-!e§(new StateCutScene(false));
         §-!e§(new §;!X§(false));
         §8!6§.§ do§(§6!0§);
         §8!6§.§43§(true);
         stage.showDefaultContextMenu = false;
         var _loc3_:Boolean = true;
         try
         {
            if((_loc4_ = SharedObject.getLocal(§[!I§)).data.useSounds == undefined)
            {
               _loc4_.data.useSounds = true;
            }
            _loc3_ = _loc4_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §#+§(_loc3_);
         §-6§.§;!J§("CHANNEL_THEME",1,1);
         §-6§.§;!J§("CHANNEL_AMBIENT",1,1);
         §4,§ = new §0!O§("");
         §,_§.§9;§ = new §=s§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§5q§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!!§);
         stage.addEventListener(Event.RESIZE,this.§[!'§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§3!H§);
         if(stage.stageWidth != §6`§ || stage.stageHeight != §?!E§)
         {
            this.§[!'§(null);
         }
      }
      
      public static function §#+§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         §&#§ = value;
         §-6§.§[k§(§&#§);
         try
         {
            mySO = SharedObject.getLocal(§[!I§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §'M§() : Boolean
      {
         return §&#§;
      }
      
      public static function §each §() : void
      {
         if(§-6§.§6S§("Channel_Theme") == null || !§-6§.§6S§("Channel_Theme").§?!]§())
         {
            §-6§.§6!#§("Coke_Theme","Channel_Theme",100);
         }
      }
      
      public static function §^x§() : void
      {
         §-6§.§^Z§("Channel_Theme");
      }
      
      public static function get §2t§() : String
      {
         return §]w§;
      }
      
      public static function set §2t§(param1:String) : void
      {
         §]w§ = param1;
      }
      
      public static function get §'!K§() : Boolean
      {
         return §!!Z§;
      }
      
      public static function get §3!V§() : SharedObject
      {
         return §^J§;
      }
      
      public static function set §3!V§(param1:SharedObject) : void
      {
         §^J§ = param1;
      }
      
      override protected function initStateLoad() : §3!>§
      {
         return new §[!4§(true,§3!>§.§ !P§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §6!6§(param1:ByteArray) : void
      {
      }
      
      private function §5q§(param1:Event) : void
      {
         §,!X§.§?6§();
      }
      
      private function §?!!§(param1:MouseEvent) : void
      {
         §,!X§.§try §();
      }
      
      private function §[!'§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §6`§;
         var _loc3_:Number = stage.stageHeight / §?!E§;
         if(_loc2_ < _loc3_)
         {
            §6!0§.scaleX = §6!0§.scaleY = _loc2_;
            §#!=§.§?I§(§6!0§.x,§6!0§.y,stage.stageWidth,stage.stageWidth * (§?!E§ / §6`§));
         }
         else
         {
            §6!0§.scaleX = §6!0§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§6`§ / §?!E§);
            _loc5_ = stage.stageHeight;
            §#!=§.§?I§(§6!0§.x,§6!0§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §3!H§(param1:FullScreenEvent) : void
      {
         this.§[!'§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §=h§.§]!D§.§7!C§();
         §"=§.§?-§(§=!D§.§,n§(this.§"L§.getFileAsString("Chapters.json")));
         this.§2!H§();
      }
      
      private function §2!H§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §6g§.§+!J§(§6j§.§,!Z§,_loc1_.toString(),_loc1_);
         §#!=§.§0%§(§4S§.§+X§(§3!a§),§4S§.§+X§(§8!-§));
         §#!=§.§'!X§(this.§"L§.§;!C§,§ !R§.§#q§(),this.§"S§);
      }
      
      private function §"S§(param1:Event) : void
      {
         §"G§(§1!Q§.§ !P§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§#!=§.§-!'§ != null)
         {
            §#!=§.§-!'§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§<!"§().isGenericState())
         {
            if(_loc2_ == §6!W§.STATE_STATUS_COMPLETED)
            {
               §8!6§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §<!"§().mName + " New State = " + §<!"§().mNextState);
               §"G§(§<!"§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §!x§;
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
      
      public function get §1,§() : §?9§
      {
         return this.§]x§;
      }
   }
}
