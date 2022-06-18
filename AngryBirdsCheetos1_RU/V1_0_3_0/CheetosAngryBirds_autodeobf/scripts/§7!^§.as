package
{
   import §#!N§.§ ![§;
   import §'G§.§6!]§;
   import §+!^§.§'Y§;
   import §+d§.§3!9§;
   import §+d§.dynamic;
   import §0A§.§@+§;
   import §0q§.§7+§;
   import §1Y§.§ ;§;
   import §1Y§.§+$§;
   import §3n§.§&!J§;
   import §3n§.§-'§;
   import §3n§.§7!6§;
   import §3n§.§8s§;
   import §3n§.§;A§;
   import §3n§.StateConnecting;
   import §3n§.StateCutSceneDynamic;
   import §3n§.StatePlay;
   import §3n§.§^"§;
   import §3n§.§`!V§;
   import §7!7§.§return§;
   import §7!P§.§-3§;
   import §7!P§.§`!§;
   import §;!;§.§4>§;
   import §>T§.§`z§;
   import §^!!§.§^!%§;
   import §^9§.§[!L§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.net.SharedObject;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import §import§.§&^§;
   
   public class §7!^§ extends §@+§
   {
      
      public static const VERSION:String = "1.0.1.1";
      
      public static const §8o§:int = 750;
      
      public static const §&I§:int = 500;
      
      public static const §^B§:Boolean = false;
      
      public static const §6M§:int = 3000;
      
      public static var §]N§:String = "../service/";
      
      public static var §%§:String = "http://angrybirds-cheetos-test.appspot.com/";
      
      public static var §%F§:String = "/webservices/game/";
      
      public static const §?x§:String = "../mail";
      
      public static var §"!E§:String = "initialisesession";
      
      public static var § if§:String = "levelstart";
      
      public static var §3s§:String = "purchasepowerup";
      
      public static var §@!4§:String = "levelcomplete";
      
      public static var §"!<§:String = "refreshsession";
      
      private static var §[i§:Class = §;!%§;
      
      private static var §'4§:Class = §[2§;
      
      private static var §,>§:Class = §,K§;
      
      private static var §-!J§:Class = §`$§;
      
      public static var §3!U§:§^!%§ = null;
      
      public static var §9g§:Boolean = true;
      
      public static var §9X§:MovieClip = null;
      
      public static var §-!@§:§7!^§ = null;
      
      public static var §"#§:Sprite = null;
       
      
      private var §93§:§ ![§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §[!-§:SharedObject;
      
      private var callObject:Object;
      
      public function §7!^§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§93§ = new § ![§();
         §-!@§ = this;
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §3!9§.enabled = true;
         dynamic.§&!V§(§3!9§.§%!;§);
         try
         {
            this.§[!-§ = SharedObject.getLocal("popupData");
            if(this.§[!-§)
            {
               this.§[!-§.data.mRememberMeToggled_Credit = this.§=-§;
               this.§[!-§.data.mRememberMeToggled_CreditCheetosBag = this.§2!E§;
            }
         }
         catch(e:*)
         {
         }
         § !1§ = §8o§;
         §?`§ = §&I§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§`!§.§1!a§(§[i§),§`!§.§1!a§(§'4§));
         §`z§.§<?§.init(§4>§.§+k§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§93§,this.§>s§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §'Y§.init(this,§8o§,§&I§);
         §'Y§.§@j§ = new §7+§(stage);
         §'Y§.§<]§.visible = §^B§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §]N§ = stage.loaderInfo.parameters.domain + §%F§;
         }
         §"!E§ = §]N§ + §"!E§;
         § if§ = §]N§ + § if§;
         §3s§ = §]N§ + §3s§;
         §@!4§ = §]N§ + §@!4§;
         §"!<§ = §]N§ + §"!<§;
         §+K§(new §7!6§(false));
         §+K§(new §-'§(false));
         §+K§(new StatePlay(false));
         §+K§(new §;A§(false));
         §+K§(new §`!V§(false));
         §+K§(new §&!J§(false));
         §+K§(new StateCutSceneDynamic(false));
         §+K§(new §8s§(false));
         §+K§(new StateConnecting(false));
         §&^§.addCallback("refreshSession",§-'§(§7!^§.§-!@§.§"!1§(§-'§.§,F§)).refreshSession);
         §-3§.§-C§(§!!+§);
         §-3§.§"M§(true);
         stage.showDefaultContextMenu = false;
         §&g§(true);
         §return§.§<%§("CHANNEL_THEME",1,1);
         §return§.§<%§("CHANNEL_AMBIENT",1,1);
         §3!U§ = new §^!%§("");
         stage.addEventListener(Event.RESIZE,this.§]c§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§[s§);
         if(stage.stageWidth != §8o§ || stage.stageHeight != §&I§)
         {
            this.§]c§(null);
         }
      }
      
      public static function §&g§(param1:Boolean) : void
      {
         §9g§ = param1;
         §return§.§"!"§(§9g§);
      }
      
      public static function §4!J§() : Boolean
      {
         return §9g§;
      }
      
      public static function §@$§() : void
      {
         if(§return§.§!!T§("Channel_Theme") == null || !§return§.§!!T§("Channel_Theme").§7`§())
         {
            §return§.§2!S§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §]!9§() : void
      {
         if(§return§.§!!T§("Channel_Theme"))
         {
            §return§.§!!T§("Channel_Theme").§+r§();
         }
      }
      
      override protected function initStateLoad() : § ;§
      {
         return new §^"§(true,§ ;§.§,F§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function get §=-§() : Boolean
      {
         if(this.§[!-§)
         {
            return this.§[!-§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §=-§(param1:Boolean) : void
      {
         if(this.§[!-§)
         {
            this.§[!-§.data.mRememberMeToggled_Credit = param1;
            this.§[!-§.flush();
         }
      }
      
      public function get §2!E§() : Boolean
      {
         if(this.§[!-§)
         {
            return this.§[!-§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §2!E§(param1:Boolean) : void
      {
         if(this.§[!-§)
         {
            this.§[!-§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§[!-§.flush();
         }
      }
      
      protected function §>s§(param1:ByteArray) : void
      {
      }
      
      private function §]c§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §8o§;
         var _loc3_:Number = stage.stageHeight / §&I§;
         if(_loc2_ < _loc3_)
         {
            §!!+§.scaleX = §!!+§.scaleY = _loc2_;
            §'Y§.§`!"§(§!!+§.x,§!!+§.y,stage.stageWidth,stage.stageWidth * (§&I§ / §8o§));
         }
         else
         {
            §!!+§.scaleX = §!!+§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§8o§ / §&I§);
            _loc5_ = stage.stageHeight;
            §'Y§.§`!"§(§!!+§.x,§!!+§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §[s§(param1:FullScreenEvent) : void
      {
         this.§]c§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §`z§.§<?§.§2!P§();
         §[!L§.§6S§(§2-§.§?!R§(this.§93§.getFileAsString("Chapters.json")));
         this.§ B§();
         try
         {
            §&^§.§4'§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function § B§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         dynamic.§&!V§(§3!9§.§3!!§,_loc1_.toString(),_loc1_);
         §'Y§.§#!§(§`!§.§1!a§(§,>§),§`!§.§1!a§(§-!J§));
         §'Y§.§0$§(this.§93§.§ C§,§6!]§.§[w§(),this.§]w§);
      }
      
      private function §]w§(param1:Event) : void
      {
         §%+§(StateConnecting.§,F§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§'Y§.§<]§ != null)
         {
            §'Y§.§<]§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§<!S§().isGenericState())
         {
            if(_loc2_ == §+$§.STATE_STATUS_COMPLETED)
            {
               §-3§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §<!S§().mName + " New State = " + §<!S§().mNextState);
               §%+§(§<!S§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §8o§;
      }
      
      override public function getAppHeight() : Number
      {
         return §&I§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §6M§;
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
      
      public function §;!0§() : void
      {
         var _loc1_:§+$§ = §<!S§();
         if(_loc1_ && _loc1_.mName == StateConnecting.§,F§)
         {
            §%+§(StateConnecting.§,F§);
         }
      }
   }
}
