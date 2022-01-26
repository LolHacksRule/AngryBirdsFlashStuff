package
{
   import § 6§.§'r§;
   import §"!@§.§3!+§;
   import §%!1§.§%E§;
   import §%§.§<;§;
   import §+!7§.§'u§;
   import §-!6§.§!P§;
   import §-!6§.§>I§;
   import §0!F§.§,!U§;
   import §0!F§.§3>§;
   import §3i§.§6c§;
   import §5!G§.§31§;
   import §5l§.§@!+§;
   import §7!U§.§2!7§;
   import §9!%§.§<!L§;
   import §<!P§.§>l§;
   import §<!P§.§[!6§;
   import §>!6§.§0L§;
   import §@1§.§#!5§;
   import §@1§.§+s§;
   import §@1§.§,!I§;
   import §@1§.§05§;
   import §@1§.§0G§;
   import §@1§.§53§;
   import §@1§.StateConnecting;
   import §@1§.StateCutSceneDynamic;
   import §@1§.StatePlay;
   import §@1§.§`§;
   import §^![§.§#!F§;
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
   
   public class §+§ extends §6c§
   {
      
      public static const VERSION:String = "1.0.1.1";
      
      public static const §'s§:int = 750;
      
      public static const §&!8§:int = 500;
      
      public static const §;6§:Boolean = false;
      
      public static const §;Z§:int = 3000;
      
      public static var §>!S§:String = "../service/";
      
      public static var §%>§:String = "http://angrybirds-cheetos-test.appspot.com/";
      
      public static var §"!$§:String = "/webservices/game/";
      
      public static const §?!§:String = "../mail";
      
      public static var §-o§:String = "initialisesession";
      
      public static var §8o§:String = "levelstart";
      
      public static var §[!J§:String = "purchasepowerup";
      
      public static var §+5§:String = "levelcomplete";
      
      public static var §4W§:String = "refreshsession";
      
      private static var §7e§:Class = §;!6§;
      
      private static var §&!^§:Class = §?!;§;
      
      private static var §?!=§:Class = §0"§;
      
      private static var §^Z§:Class = §#!D§;
      
      public static var §3s§:§'r§ = null;
      
      public static var §'!E§:Boolean = true;
      
      public static var §]j§:MovieClip = null;
      
      public static var § each§:§+§ = null;
      
      public static var §2!S§:Sprite = null;
       
      
      private var §>!F§:§<;§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §5Y§:SharedObject;
      
      private var callObject:Object;
      
      public function §+§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§>!F§ = new §<;§();
         § each§ = this;
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §,!U§.enabled = true;
         §3>§.§7!]§(§,!U§.§!n§);
         try
         {
            this.§5Y§ = SharedObject.getLocal("popupData");
            if(this.§5Y§)
            {
               this.§5Y§.data.mRememberMeToggled_Credit = this.§3l§;
               this.§5Y§.data.mRememberMeToggled_CreditCheetosBag = this.§,!8§;
            }
         }
         catch(e:*)
         {
         }
         §>r§ = §'s§;
         §=![§ = §&!8§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§!P§.§=!K§(§7e§),§!P§.§=!K§(§&!^§));
         §#!F§.§!5§.init(§%E§.§#1§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§>!F§,this.§&!U§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §2!7§.init(this,§'s§,§&!8§);
         §2!7§.§5G§ = new §'u§(stage);
         §2!7§.§5H§.visible = §;6§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §>!S§ = stage.loaderInfo.parameters.domain + §"!$§;
         }
         §-o§ = §>!S§ + §-o§;
         §8o§ = §>!S§ + §8o§;
         §[!J§ = §>!S§ + §[!J§;
         §+5§ = §>!S§ + §+5§;
         §4W§ = §>!S§ + §4W§;
         §,!2§(new §#!5§(false));
         §,!2§(new §05§(false));
         §,!2§(new StatePlay(false));
         §,!2§(new §53§(false));
         §,!2§(new §`§(false));
         §,!2§(new §0G§(false));
         §,!2§(new StateCutSceneDynamic(false));
         §,!2§(new §+s§(false));
         §,!2§(new StateConnecting(false));
         §0L§.addCallback("refreshSession",§05§(§+§.§ each§.§5V§(§05§.§]U§)).refreshSession);
         §>I§.§54§(§`3§);
         §>I§.§<w§(true);
         stage.showDefaultContextMenu = false;
         §"!;§(true);
         §31§.§&!P§("CHANNEL_THEME",1,1);
         §31§.§&!P§("CHANNEL_AMBIENT",1,1);
         §3s§ = new §'r§("");
         stage.addEventListener(Event.RESIZE,this.§1!7§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§28§);
         if(stage.stageWidth != §'s§ || stage.stageHeight != §&!8§)
         {
            this.§1!7§(null);
         }
      }
      
      public static function §"!;§(param1:Boolean) : void
      {
         §'!E§ = param1;
         §31§.§%'§(§'!E§);
      }
      
      public static function §%!@§() : Boolean
      {
         return §'!E§;
      }
      
      public static function §3"§() : void
      {
         if(§31§.§9!H§("Channel_Theme") == null || !§31§.§9!H§("Channel_Theme").§]!_§())
         {
            §31§.§>%§("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §&!9§() : void
      {
         if(§31§.§9!H§("Channel_Theme"))
         {
            §31§.§9!H§("Channel_Theme").§55§();
         }
      }
      
      override protected function initStateLoad() : §[!6§
      {
         return new §,!I§(true,§[!6§.§]U§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function get §3l§() : Boolean
      {
         if(this.§5Y§)
         {
            return this.§5Y§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §3l§(param1:Boolean) : void
      {
         if(this.§5Y§)
         {
            this.§5Y§.data.mRememberMeToggled_Credit = param1;
            this.§5Y§.flush();
         }
      }
      
      public function get §,!8§() : Boolean
      {
         if(this.§5Y§)
         {
            return this.§5Y§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §,!8§(param1:Boolean) : void
      {
         if(this.§5Y§)
         {
            this.§5Y§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§5Y§.flush();
         }
      }
      
      protected function §&!U§(param1:ByteArray) : void
      {
      }
      
      private function §1!7§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §'s§;
         var _loc3_:Number = stage.stageHeight / §&!8§;
         if(_loc2_ < _loc3_)
         {
            §`3§.scaleX = §`3§.scaleY = _loc2_;
            §2!7§.§ !7§(§`3§.x,§`3§.y,stage.stageWidth,stage.stageWidth * (§&!8§ / §'s§));
         }
         else
         {
            §`3§.scaleX = §`3§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§'s§ / §&!8§);
            _loc5_ = stage.stageHeight;
            §2!7§.§ !7§(§`3§.x,§`3§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §28§(param1:FullScreenEvent) : void
      {
         this.§1!7§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §#!F§.§!5§.§8I§();
         §3!+§.§7D§(§@!+§.§'E§(this.§>!F§.getFileAsString("Chapters.json")));
         this.§,x§();
         try
         {
            §0L§.§[!H§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §,x§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §3>§.§7!]§(§,!U§.§`e§,_loc1_.toString(),_loc1_);
         §2!7§.§=<§(§!P§.§=!K§(§?!=§),§!P§.§=!K§(§^Z§));
         §2!7§.§@!M§(this.§>!F§.§`'§,§<!L§.§7!"§(),this.§?_§);
      }
      
      private function §?_§(param1:Event) : void
      {
         § t§(StateConnecting.§]U§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§2!7§.§5H§ != null)
         {
            §2!7§.§5H§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§3!M§().isGenericState())
         {
            if(_loc2_ == §>l§.STATE_STATUS_COMPLETED)
            {
               §>I§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §3!M§().mName + " New State = " + §3!M§().mNextState);
               § t§(§3!M§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §'s§;
      }
      
      override public function getAppHeight() : Number
      {
         return §&!8§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §;Z§;
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
      
      public function §2!6§() : void
      {
         var _loc1_:§>l§ = §3!M§();
         if(_loc1_ && _loc1_.mName == StateConnecting.§]U§)
         {
            § t§(StateConnecting.§]U§);
         }
      }
   }
}
