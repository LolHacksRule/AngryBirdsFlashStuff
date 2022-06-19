package
{
   import § !0§.§<O§;
   import § !G§.§ #§;
   import § !G§.§+!7§;
   import § !G§.§`e§;
   import §#!F§.§"!L§;
   import §#!F§.§'^§;
   import §%w§.§ p§;
   import §%w§.§,%§;
   import §%w§.§0!6§;
   import §%w§.§>d§;
   import §%w§.§@!V§;
   import §%w§.StateConnecting;
   import §%w§.StateCutScene;
   import §%w§.StatePlay;
   import §%w§.§[!X§;
   import §%w§.§`L§;
   import §&!7§.§,!A§;
   import §-H§.§&c§;
   import §-H§.§@!-§;
   import §1!K§.§;'§;
   import §3!T§.§6t§;
   import §5!M§.§<e§;
   import §8!B§.§[]§;
   import §9!=§.§[!6§;
   import §=A§.§5r§;
   import §?m§.§7?§;
   import §?p§.§@d§;
   import §]!F§.§7e§;
   import §`!K§.§!!>§;
   import §default§.§%<§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §#x§ extends §<O§
   {
      
      private static var §<p§:Class = §4!7§;
      
      public static const VERSION:String = "1.0.1.1";
      
      public static const §;#§:int = 750;
      
      public static const §0h§:int = 500;
      
      public static const §9h§:Boolean = false;
      
      public static const §%X§:int = 3000;
      
      public static var §`!W§:String = "../service/";
      
      public static var §?%§:String = "http://test.angrybirds-cheetos-test.appspot.com/";
      
      public static var §"!3§:String = "/webservices/game/";
      
      public static const §=3§:String = "../mail";
      
      public static var §+r§:String = "initialisesession";
      
      public static var §%!K§:String = "levelstart";
      
      public static var §[0§:String = "purchasepowerup";
      
      public static var §1P§:String = "levelcomplete";
      
      public static var §=1§:String = "updatespotprizewin";
      
      public static var §<!0§:String = "refreshsession";
      
      private static var §!!U§:Class = § !"§;
      
      private static var §%!@§:Class = §'l§;
      
      private static var §+!B§:Class = § n§;
      
      private static var §4z§:Class = §<$§;
      
      public static var §[Y§:§[]§ = null;
      
      public static var §;!7§:Boolean = true;
      
      public static var §[!<§:MovieClip = null;
      
      public static var §=!!§:§#x§ = null;
      
      public static var §#t§:Sprite = null;
       
      
      private var §6L§:§6t§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var § W§:SharedObject;
      
      private var callObject:Object;
      
      public function §#x§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§6L§ = new §6t§();
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §"!L§.enabled = true;
         §'^§.§`0§(§"!L§.§;Z§);
         try
         {
            this.§ W§ = SharedObject.getLocal("popupData");
            if(this.§ W§)
            {
               this.§ W§.data.mRememberMeToggled_Credit = this.§9!E§;
               this.§ W§.data.mRememberMeToggled_CreditCheetosBag = this.§]s§;
            }
         }
         catch(e:*)
         {
         }
         §[E§ = §;#§;
         §&a§ = §0h§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§+!7§.§5]§(§!!U§),§+!7§.§5]§(§%!@§));
         §@d§.§%!O§.init(§[!6§.§]Z§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§6L§,this.§!F§);
         §=!!§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §7?§.init(this,§;#§,§0h§);
         §7?§.§4!H§ = new §<e§(stage);
         §7?§.§4J§.visible = §9h§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §`!W§ = stage.loaderInfo.parameters.domain + §"!3§;
         }
         §+r§ = §`!W§ + §+r§;
         §%!K§ = §`!W§ + §%!K§;
         §[0§ = §`!W§ + §[0§;
         §1P§ = §`!W§ + §1P§;
         §=1§ = §`!W§ + §=1§;
         §<!0§ = §`!W§ + §<!0§;
         §#d§(new §[!X§(false));
         §#d§(new §`L§(false));
         §#d§(new StatePlay(false));
         §#d§(new § p§(false));
         §#d§(new §>d§(false));
         §#d§(new §0!6§(false));
         §#d§(new StateCutScene(false));
         §#d§(new §,%§(false));
         §#d§(new StateConnecting(false));
         §,!A§.addCallback("refreshSession",§`L§(§#x§.§=!!§.§[!=§(§`L§.§9!P§)).refreshSession);
         § #§.§=J§(§1C§);
         § #§.§&!#§(true);
         var textData:XMLList = §+!7§.§5]§(§<p§).children();
         §;'§.init(textData);
         stage.showDefaultContextMenu = false;
         §<]§(true);
         §!!>§.§6!K§("CHANNEL_THEME",1,1);
         §!!>§.§6!K§("CHANNEL_AMBIENT",1,1);
         §[Y§ = new §[]§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§'h§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;!R§);
         stage.addEventListener(Event.RESIZE,this.§,s§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§`J§);
         if(stage.stageWidth != §;#§ || stage.stageHeight != §0h§)
         {
            this.§,s§(null);
         }
      }
      
      public static function §<]§(param1:Boolean) : void
      {
         §;!7§ = param1;
         §!!>§.§?^§(§;!7§);
      }
      
      public static function §7!S§() : Boolean
      {
         return §;!7§;
      }
      
      public static function §`! §() : void
      {
         if(§!!>§.§-!8§("Channel_Theme") == null || !§!!>§.§-!8§("Channel_Theme").§#I§())
         {
            §!!>§.playSound("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §<!K§() : void
      {
         if(§!!>§.§-!8§("Channel_Theme"))
         {
            §!!>§.§-!8§("Channel_Theme").§ &§();
         }
      }
      
      public function get §9!E§() : Boolean
      {
         if(this.§ W§)
         {
            return this.§ W§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §9!E§(param1:Boolean) : void
      {
         if(this.§ W§)
         {
            this.§ W§.data.mRememberMeToggled_Credit = param1;
            this.§ W§.flush();
         }
      }
      
      public function get §]s§() : Boolean
      {
         if(this.§ W§)
         {
            return this.§ W§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §]s§(param1:Boolean) : void
      {
         if(this.§ W§)
         {
            this.§ W§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§ W§.flush();
         }
      }
      
      protected function §!F§(param1:ByteArray) : void
      {
      }
      
      private function §'h§(param1:Event) : void
      {
         if(§7?§ != null && §7?§.§4!H§.slingshot != null && §7?§.§4!H§.slingshot.mDragging)
         {
            §7?§.§4!H§.slingshot.cancelDragging();
         }
         §`e§.§[P§();
      }
      
      private function §;!R§(param1:MouseEvent) : void
      {
         §`e§.§8$§();
      }
      
      override protected function initStateLoad() : §@!-§
      {
         return new §@!V§(true,§@!-§.§9!P§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §,s§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §;#§;
         var _loc3_:Number = stage.stageHeight / §0h§;
         if(_loc2_ < _loc3_)
         {
            §1C§.scaleX = §1C§.scaleY = _loc2_;
            §7?§.§6!T§(§1C§.x,§1C§.y,stage.stageWidth,stage.stageWidth * (§0h§ / §;#§));
         }
         else
         {
            §1C§.scaleX = §1C§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§;#§ / §0h§);
            _loc5_ = stage.stageHeight;
            §7?§.§6!T§(§1C§.x,§1C§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §`J§(param1:FullScreenEvent) : void
      {
         this.§,s§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §@d§.§%!O§.§;3§();
         §7e§.§[!$§(§5r§.§6! §(this.§6L§.getFileAsString("Chapters.json")));
         this.§+j§();
         try
         {
            §,!A§.§9!M§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §+j§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §'^§.§`0§(§"!L§.§?P§,_loc1_.toString(),_loc1_);
         §7?§.§;!E§(§+!7§.§5]§(§+!B§),§+!7§.§5]§(§4z§));
         §7?§.§9!§(this.§6L§.§%v§,§%<§.§=+§(),this.§!z§);
      }
      
      private function §!z§(param1:Event) : void
      {
         §=T§(StateConnecting.§9!P§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§7?§.§4J§ != null)
         {
            §7?§.§4J§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§?!1§().isGenericState())
         {
            if(_loc2_ == §&c§.STATE_STATUS_COMPLETED)
            {
               § #§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §?!1§().mName + " New State = " + §?!1§().mNextState);
               §=T§(§?!1§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §;#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §0h§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §%X§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
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
               while(_loc1_.search("-") != -1)
               {
                  _loc1_ = _loc1_.replace("-",".");
               }
               return _loc1_;
            }
         }
         return VERSION.replace("{svn_version}","local dev build");
      }
      
      public function §9!2§() : void
      {
         var _loc1_:§&c§ = §?!1§();
         if(_loc1_.mName == StateConnecting.§9!P§)
         {
            §=T§(StateConnecting.§9!P§);
         }
      }
   }
}
