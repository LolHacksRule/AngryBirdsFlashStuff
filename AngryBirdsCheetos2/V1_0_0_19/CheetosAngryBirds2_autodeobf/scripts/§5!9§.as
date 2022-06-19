package
{
   import §!V§.§<!g§;
   import §!V§.§>d§;
   import §!r§.§3!!§;
   import §"§.§%!$§;
   import §"§.§;!?§;
   import §-!Q§.§,!7§;
   import §09§.§ $§;
   import §1!E§.§`!8§;
   import §31§.§^!K§;
   import §3@§.§>#§;
   import §5G§.§'!9§;
   import §5G§.§1!F§;
   import §5G§.§39§;
   import §5G§.§9!$§;
   import §5G§.§;!8§;
   import §5G§.§@t§;
   import §5G§.StateConnecting;
   import §5G§.StateCutSceneDynamic;
   import §5G§.StatePlay;
   import §5G§.include;
   import §6N§.§1!9§;
   import §;!]§.§`!V§;
   import §=!g§.§!!@§;
   import §>^§.§!6§;
   import §>^§.§7]§;
   import §[h§.§0!0§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import §throw§.§3W§;
   
   public class §5!9§ extends §3W§
   {
      
      public static const VERSION:String = "(r106540)";
      
      public static const §?!L§:int = 750;
      
      public static const §"r§:int = 500;
      
      public static const §1!#§:Boolean = false;
      
      public static const §9]§:int = 3000;
      
      public static const §#w§:String = "https://head-dot-angrybirds-cheetos-test.appspot.com/";
      
      public static var §<V§:String = !!§1!#§ ? §#w§ : "../";
      
      public static var §0!R§:String = "https://head-dot-angrybirds-cheetos-test.appspot.com/";
      
      public static var §^1§:String = "levelstart";
      
      public static var §+X§:String = "useItem";
      
      public static var §%8§:String = "levelcomplete";
      
      public static var §]q§:String = "refreshsession";
      
      private static var §^!h§:Class = §^i§;
      
      private static var §?!J§:Class = §<!f§;
      
      private static var §5!5§:Class = §?3§;
      
      private static var §-!E§:Class = §>t§;
      
      public static var §#%§:§`!8§ = null;
      
      public static var §[!C§:Boolean = true;
      
      public static var §'W§:MovieClip = null;
      
      public static var §-!O§:§5!9§ = null;
      
      public static var §6<§:Sprite = null;
       
      
      private var §2W§:§1!9§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §^!b§:SharedObject;
      
      private var callObject:Object;
      
      private var §;!a§:§0!0§;
      
      private var §8!G§:Boolean;
      
      private var §0Z§:Boolean;
      
      public function §5!9§(param1:CheetosAngryBirdsCanvas)
      {
         var canvas:CheetosAngryBirdsCanvas = param1;
         this.§2W§ = new §1!9§();
         §-!O§ = this;
         §<!g§.enabled = true;
         §>d§.§@Y§(§<!g§.§8Q§);
         try
         {
            this.§^!b§ = SharedObject.getLocal("popupData");
            if(this.§^!b§)
            {
               this.§^!b§.data.mRememberMeToggled_Credit = this.§8!&§;
               this.§^!b§.data.mRememberMeToggled_CreditCheetosBag = this.§+!1§;
            }
         }
         catch(e:*)
         {
         }
         this.§;!a§ = new §0!0§();
         §'9§ = §?!L§;
         §#!1§ = §"r§;
         var loadingScreen:LoadingScreen = new LoadingScreen();
         super(canvas,loadingScreen,§7]§.§#!I§(§^!h§),§7]§.§#!I§(§?!J§));
         §^!K§.§'I§.init(§>#§.§`g§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§2W§,this.§%!Z§);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §@!Z§.init(this,§?!L§,§"r§);
         §@!Z§.§;!,§ = new § $§(stage);
         §@!Z§.§+!-§.visible = §1!#§;
         §4y§(new §'!9§(false));
         §4y§(new §39§(false));
         §4y§(new StatePlay(false));
         §4y§(new §@t§(false));
         §4y§(new §1!F§(false));
         §4y§(new §;!8§(false));
         §4y§(new StateCutSceneDynamic(false));
         §4y§(new §9!$§(false));
         §4y§(new StateConnecting(false));
         §!!@§.addCallback("refreshSession",§39§(§5!9§.§-!O§.§0!+§(§39§.§3!?§)).refreshSession);
         §!!@§.addCallback("pauseGame",this.§;3§);
         §!!@§.addCallback("resumeGame",this.§?a§);
         §!6§.§7K§(§#Z§);
         §!6§.§+F§(true);
         stage.showDefaultContextMenu = false;
         §+#§(true);
         §,!7§.§<!-§("CHANNEL_THEME",1,1);
         §,!7§.§<!-§("CHANNEL_AMBIENT",1,1);
         §#%§ = new §`!8§("");
         stage.addEventListener(Event.RESIZE,this.§6!7§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§73§);
         if(stage.stageWidth != §?!L§ || stage.stageHeight != §"r§)
         {
            this.§6!7§(null);
         }
         this.§8!G§ = false;
      }
      
      public static function §+#§(param1:Boolean) : void
      {
         §[!C§ = param1;
         §,!7§.§!!A§(§[!C§);
      }
      
      public static function §!t§() : Boolean
      {
         return §[!C§;
      }
      
      public static function §3!K§() : void
      {
         if(§,!7§.§-!§("Channel_Theme") == null || !§,!7§.§-!§("Channel_Theme").§`!N§())
         {
            §,!7§.playSound("ThemeMusic","Channel_Theme",100);
         }
      }
      
      public static function §2z§() : void
      {
         if(§,!7§.§-!§("Channel_Theme"))
         {
            §,!7§.§-!§("Channel_Theme").§13§();
         }
      }
      
      private function §;3§() : void
      {
         this.§0Z§ = !!this.§8!G§ ? Boolean(this.§0Z§) : Boolean(§!t§());
         §+#§(false);
         this.§8!G§ = true;
         §@!Z§.§@0§();
      }
      
      private function §?a§() : void
      {
         if(this.§0Z§)
         {
            §+#§(true);
         }
         this.§8!G§ = false;
         §@!Z§.§,R§();
      }
      
      override protected function initStateLoad() : §;!?§
      {
         return new include(true,§;!?§.§3!?§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function get §8!&§() : Boolean
      {
         if(this.§^!b§)
         {
            return this.§^!b§.data.mRememberMeToggled_Credit;
         }
         return false;
      }
      
      public function set §8!&§(param1:Boolean) : void
      {
         if(this.§^!b§)
         {
            this.§^!b§.data.mRememberMeToggled_Credit = param1;
            this.§^!b§.flush();
         }
      }
      
      public function get §+!1§() : Boolean
      {
         if(this.§^!b§)
         {
            return this.§^!b§.data.mRememberMeToggled_CreditCheetosBag;
         }
         return false;
      }
      
      public function set §+!1§(param1:Boolean) : void
      {
         if(this.§^!b§)
         {
            this.§^!b§.data.mRememberMeToggled_CreditCheetosBag = param1;
            this.§^!b§.flush();
         }
      }
      
      protected function §%!Z§(param1:ByteArray) : void
      {
      }
      
      private function §6!7§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §?!L§;
         var _loc3_:Number = stage.stageHeight / §"r§;
         if(_loc2_ < _loc3_)
         {
            §#Z§.scaleX = §#Z§.scaleY = _loc2_;
            §@!Z§.§"u§(§#Z§.x,§#Z§.y,stage.stageWidth,stage.stageWidth * (§"r§ / §?!L§));
         }
         else
         {
            §#Z§.scaleX = §#Z§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§?!L§ / §"r§);
            _loc5_ = stage.stageHeight;
            §@!Z§.§"u§(§#Z§.x,§#Z§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §73§(param1:FullScreenEvent) : void
      {
         this.§6!7§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §^!K§.§'I§.§,!_§();
         §@;§.§<U§(§`!V§.§>X§(this.§2W§.getFileAsString("Chapters.json")));
         this.§=p§();
         §!!@§.§%Q§("flashIsReady");
      }
      
      private function §=p§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §>d§.§@Y§(§<!g§.§0B§,_loc1_.toString(),_loc1_);
         §@!Z§.§'y§(§7]§.§#!I§(§5!5§),§7]§.§#!I§(§-!E§));
         §@!Z§.§9S§(this.§2W§.§]A§,§3!!§.§=[§(),this.§7d§);
      }
      
      private function §7d§(param1:Event) : void
      {
         §'A§(StateConnecting.§3!?§);
         this.§%B§();
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§@!Z§.§+!-§ != null)
         {
            §@!Z§.§+!-§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§!!%§().isGenericState())
         {
            if(_loc2_ == §%!$§.STATE_STATUS_COMPLETED)
            {
               §!6§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §!!%§().mName + " New State = " + §!!%§().mNextState);
               §'A§(§!!%§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getAppWidth() : Number
      {
         return §?!L§;
      }
      
      override public function getAppHeight() : Number
      {
         return §"r§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §9]§;
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
      
      public function §51§() : void
      {
         var _loc1_:§%!$§ = §!!%§();
         if(_loc1_ && _loc1_.mName == StateConnecting.§3!?§)
         {
            §'A§(StateConnecting.§3!?§);
         }
      }
      
      public function §7!6§(param1:String) : String
      {
         if(param1.indexOf("1-") == 0)
         {
            switch(param1.substring(2))
            {
               case "1":
                  param1 = "1";
                  break;
               case "2":
                  param1 = "2";
                  break;
               case "3":
                  param1 = "3";
                  break;
               case "4":
                  param1 = "1";
                  break;
               case "5":
                  param1 = "2";
                  break;
               case "6":
                  param1 = "3";
                  break;
               case "7":
                  param1 = "4";
                  break;
               case "8":
                  param1 = "5";
                  break;
               case "9":
                  param1 = "6";
            }
         }
         return param1;
      }
      
      public function § !&§(param1:String) : String
      {
         if(param1.indexOf("1-") == 0)
         {
            switch(param1.substring(2))
            {
               case "1":
               case "2":
               case "3":
                  return param1;
               case "4":
                  param1 = "1";
                  break;
               case "5":
                  param1 = "2";
                  break;
               case "6":
                  param1 = "3";
                  break;
               case "7":
                  param1 = "4";
                  break;
               case "8":
                  param1 = "5";
                  break;
               case "9":
                  param1 = "6";
            }
         }
         return param1;
      }
      
      public function get §5N§() : §0!0§
      {
         return this.§;!a§;
      }
      
      private function §%B§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + VERSION.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + this.getVersionInfo(),false,false));
         canvas.contextMenu = _loc1_;
      }
   }
}
