package
{
   import §!J§.§[&§;
   import §%!$§.§=m§;
   import §&! §.§%!Q§;
   import §,!D§.§5E§;
   import §0v§.§##§;
   import §1h§.§9!1§;
   import §4!6§.§,Y§;
   import §<!+§.§[!!§;
   import §<!U§.§ !#§;
   import §<!U§.§0"§;
   import §<!U§.§5!5§;
   import §<!U§.§6l§;
   import §<!U§.§<K§;
   import §<!U§.StateConnecting;
   import §<!U§.StateCutScene;
   import §<!U§.StatePlay;
   import §<!U§.§^!§;
   import §<o§.§2%§;
   import §?7§.§&!5§;
   import §?P§.§;y§;
   import §?w§.§!&§;
   import §@,§.§"j§;
   import §@,§.§4h§;
   import §@,§.§8!#§;
   import §[!#§.§6v§;
   import §]2§.§[4§;
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
   import §return§.§#!D§;
   
   public class §,l§ extends §2%§
   {
      
      private static var §;C§:Class = §7!H§;
      
      public static const VERSION:String = "0.0.0.10";
      
      public static const §"L§:int = 750;
      
      public static const §#S§:int = 500;
      
      public static const §!N§:Boolean = false;
      
      public static const §`!?§:int = 3000;
      
      public static var §2r§:String = "../service/";
      
      public static var §]y§:String = "http://dev-1.angrybirds-cheetos.appspot.com/";
      
      public static var §'g§:String = "/webservices/game/";
      
      public static const §%!§:String = "../mail";
      
      public static var §2!!§:String = "initialisesession";
      
      public static var §1!Q§:String = "levelstart";
      
      public static var §9p§:String = "purchasepowerup";
      
      public static var §#!8§:String = "levelcomplete";
      
      public static var §]!N§:String = "updatespotprizewin";
      
      public static var §""§:String = "refreshsession";
      
      private static var §!H§:Class = §=!§;
      
      private static var §[2§:Class = §@!!§;
      
      private static var §=!&§:Class = §1!U§;
      
      private static var §<%§:Class = §2U§;
      
      public static var §3!,§:§9!1§ = null;
      
      public static var §`!D§:Boolean = true;
      
      public static var §4o§:MovieClip = null;
      
      public static var §,?§:§,l§ = null;
      
      public static var §@d§:Sprite = null;
       
      
      private var § ?§:§;y§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §#!5§:SharedObject;
      
      private var callObject:Object;
      
      public function §,l§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§ ?§ = new §;y§();
         Security.allowDomain("http://angrybirds-cheetos.appspot.com/");
         §%!Q§.enabled = true;
         §%!Q§.§4$§(§%!Q§.§-!D§);
         try
         {
            this.§#!5§ = SharedObject.getLocal("popupData");
            if(this.§#!5§)
            {
               this.§#!5§.data.mRememberMeToggled_Credit = this.§+d§;
               this.§#!5§.data.mRememberMeToggled_CreditCheetosBag = this.§#! §;
            }
         }
         catch(e:*)
         {
         }
         §0!,§ = §"L§;
         §6M§ = §#S§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§8!#§.§9C§(§!H§),§8!#§.§9C§(§[2§));
         §#!D§.§!!L§.init(§6v§.§&P§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§ ?§,this.§=Y§);
         §,?§ = this;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §[&§.init(this,§"L§,§#S§);
         §[&§.§&!'§ = new §!&§(stage);
         §[&§.§?!§.visible = §!N§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §2r§ = stage.loaderInfo.parameters.domain + §'g§;
         }
         §2!!§ = §2r§ + §2!!§;
         §1!Q§ = §2r§ + §1!Q§;
         §9p§ = §2r§ + §9p§;
         §#!8§ = §2r§ + §#!8§;
         §]!N§ = §2r§ + §]!N§;
         §""§ = §2r§ + §""§;
         §6'§(new §0"§(false));
         §6'§(new §6l§(false));
         §6'§(new StatePlay(false));
         §6'§(new § !#§(false));
         §6'§(new §^!§(false));
         §6'§(new §<K§(false));
         §6'§(new StateCutScene(false));
         §6'§(new §5!5§(false));
         §6'§(new StateConnecting(false));
         §,Y§.addCallback("refreshSession",§6l§(§,l§.§,?§.§&>§(§6l§.§`O§)).refreshSession);
         §4h§.§2!O§(§;0§);
         §4h§.§4!Q§(true);
         var textData:XMLList = §8!#§.§9C§(§;C§).children();
         §##§.init(textData);
         stage.showDefaultContextMenu = false;
         §6!2§(true);
         §=m§.§,!1§("CHANNEL_THEME",1,1);
         §=m§.§,!1§("CHANNEL_AMBIENT",1,1);
         §3!,§ = new §9!1§("");
         stage.addEventListener(Event.MOUSE_LEAVE,this.§2,§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§ I§);
         stage.addEventListener(Event.RESIZE,this.§,!$§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§7!"§);
         if(stage.stageWidth != §"L§ || stage.stageHeight != §#S§)
         {
            this.§,!$§(null);
         }
      }
      
      public static function §6!2§(param1:Boolean) : void
      {
         §`!D§ = param1;
         §=m§.§=!J§(§`!D§);
      }
      
      public static function §3n§() : Boolean
      {
         return §`!D§;
      }
      
      public static function §'!§() : void
      {
         if(§=m§.§,'§("Channel_Theme") == null || !§=m§.§,'§("Channel_Theme").§9y§())
         {
            §=m§.playSound("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §<A§() : void
      {
         if(§=m§.§,'§("Channel_Theme"))
         {
            §=m§.§,'§("Channel_Theme").§,w§();
         }
      }
      
      public function get §+d§() : Boolean
      {
         if(this.§#!5§)
         {
            return this.§#!5§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §+d§(param1:Boolean) : void
      {
         if(this.§#!5§)
         {
            this.§#!5§.data.mRememberMeToggled_Credit = param1;
            this.§#!5§.flush();
         }
      }
      
      public function get §#! §() : Boolean
      {
         if(this.§#!5§)
         {
            return this.§#!5§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §#! §(param1:Boolean) : void
      {
         if(this.§#!5§)
         {
            this.§#!5§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§#!5§.flush();
         }
      }
      
      protected function §=Y§(param1:ByteArray) : void
      {
      }
      
      private function §2,§(param1:Event) : void
      {
         if(§[&§ != null && §[&§.§&!'§.slingshot != null && §[&§.§&!'§.slingshot.mDragging)
         {
            §[&§.§&!'§.slingshot.cancelDragging();
         }
         §"j§.§ g§();
      }
      
      private function § I§(param1:MouseEvent) : void
      {
         §"j§.§0l§();
      }
      
      private function §,!$§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §"L§;
         var _loc3_:Number = stage.stageHeight / §#S§;
         if(_loc2_ < _loc3_)
         {
            §;0§.scaleX = §;0§.scaleY = _loc2_;
            §[&§.§7!V§(§;0§.x,§;0§.y,stage.stageWidth,stage.stageWidth * (§#S§ / §"L§));
         }
         else
         {
            §;0§.scaleX = §;0§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§"L§ / §#S§);
            _loc5_ = stage.stageHeight;
            §[&§.§7!V§(§;0§.x,§;0§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §7!"§(param1:FullScreenEvent) : void
      {
         this.§,!$§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §#!D§.§!!L§.§5!W§();
         §[!!§.§4;§(§5E§.§,§(this.§ ?§.getFileAsString("Chapters.json")));
         this.§%k§();
         try
         {
            §,Y§.§[[§("flashIsReady");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §%k§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §%!Q§.§4$§(§%!Q§.§+!9§,_loc1_.toString(),_loc1_);
         §[&§.§"F§(§8!#§.§9C§(§=!&§),§8!#§.§9C§(§<%§));
         §[&§.§<!5§(this.§ ?§.§#!J§,§&!5§.§^!G§(),this.§?i§);
      }
      
      private function §?i§(param1:Event) : void
      {
         §[!K§(StateConnecting.§`O§);
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§[&§.§?!§ != null)
         {
            §[&§.§?!§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§2! §().isGenericState())
         {
            if(_loc2_ == §[4§.STATE_STATUS_COMPLETED)
            {
               §4h§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §2! §().mName + " New State = " + §2! §().mNextState);
               §[!K§(§2! §().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §"L§;
      }
      
      override public function getAppHeight() : Number
      {
         return §#S§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §`!?§;
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
      
      public function §^!=§() : void
      {
         var _loc1_:§[4§ = §2! §();
         if(_loc1_.mName == StateConnecting.§`O§)
         {
            §[!K§(StateConnecting.§`O§);
         }
      }
   }
}
