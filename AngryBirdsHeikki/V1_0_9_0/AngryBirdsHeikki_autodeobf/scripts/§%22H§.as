package
{
   import §%i§.§#`§;
   import §&!6§.§%8§;
   import §&!6§.§5r§;
   import §,F§.§4!N§;
   import §0i§.§8!b§;
   import §0i§.§[K§;
   import §0i§.§]_§;
   import §2=§.§>q§;
   import §3!N§.§9!X§;
   import §3r§.§2!G§;
   import §3r§.§@M§;
   import §44§.§,!M§;
   import §4M§.HighscoreSidebar;
   import §4V§.§true §;
   import §6c§.§4D§;
   import §8! §.§#z§;
   import §8A§.§`]§;
   import §9!D§.§&!d§;
   import §>!F§.§9!Z§;
   import §?j§.§4W§;
   import §^-§.§;!f§;
   import §^E§.§1!A§;
   import §^E§.§9!Q§;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.system.Capabilities;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import §function§.§'"§;
   import §function§.§-!I§;
   import §function§.§-<§;
   import §function§.§1!0§;
   import §function§.§2!A§;
   import §function§.§8E§;
   import §function§.StateCutScene;
   import §function§.StatePlay;
   import §function§.§^,§;
   
   public class §"H§ extends §4D§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §1!9§:String = "http://head.angrybirds-heikki.appspot.com/";
      
      public static const §38§:int = 760;
      
      public static const §!7§:int = 220;
      
      public static const §5§:int = 570;
      
      public static const §1!7§:Boolean = false;
      
      public static const §8!7§:int = 3000;
      
      public static const §#!+§:String = "ABHeikkiKovalainen";
      
      public static var §4O§:String = !!§1!7§ ? §1!9§ : "../";
      
      public static const §?!N§:uint = 16777215;
      
      public static const §!!K§:uint = 0;
      
      public static const §]W§:uint = 16777215;
      
      private static var §9P§:String = §^,§.§94§;
      
      private static var §<X§:Boolean = false;
      
      private static var §<c§:Class = §@<§;
      
      private static var §',§:Class = §,!@§;
      
      private static var §<N§:Class = §!X§;
      
      private static var §!!b§:Class = §4$§;
      
      private static var §=!6§:Class = §;!a§;
      
      public static var §""§:§1!A§ = null;
      
      public static var §6M§:Boolean = true;
      
      public static var §>R§:§"H§ = null;
      
      public static var § R§:Sprite = null;
       
      
      private var §5K§:§>q§;
      
      private var §[!I§:§true §;
      
      public function §"H§(param1:HeikkiAngryBirdsCanvas)
      {
         var _loc4_:SharedObject = null;
         this.§5K§ = new §>q§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §<X§ = true;
         }
         this.§[!I§ = new §true §();
         Security.allowDomain("http://angrybirds-heikki.appspot.com");
         Security.allowDomain("http://heikki.angrybirds.com/");
         §2!G§.enabled = true;
         §@M§.§"6§(§2!G§.§set §);
         § !7§ = §38§ + §!7§;
         §=!R§ = §5§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§[K§.§0T§(§<c§),§[K§.§0T§(§',§));
         §9!X§.§,!U§.init(§&!d§.§3!8§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§5K§,this.§^4§);
         §>R§ = this;
         §,!M§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §9!Z§.init(this,§38§,§5§);
         §9!Z§.§5!$§ = new §4!N§(stage);
         §9!Z§.§`!1§.visible = §1!7§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §4O§ = !!§1!7§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §#!O§(new §'"§(false));
         §#!O§(new §8E§(false));
         §#!O§(new §^,§(false));
         §#!O§(new StatePlay(false));
         §#!O§(new §1!0§(false));
         §#!O§(new §-<§(false));
         §#!O§(new StateCutScene(false));
         §#!O§(new §-!I§(false));
         §]_§.§0!E§(§`!]§);
         §]_§.§'!K§(true);
         stage.showDefaultContextMenu = false;
         var _loc3_:Boolean = true;
         try
         {
            if((_loc4_ = SharedObject.getLocal(§#!+§)).data.useSounds == undefined)
            {
               _loc4_.data.useSounds = true;
            }
            _loc3_ = _loc4_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §7!T§(_loc3_);
         §#`§.§@z§("CHANNEL_THEME",1,1);
         §#`§.§@z§("CHANNEL_AMBIENT",1,1);
         §""§ = new §1!A§("");
         §9!Q§.§`!$§ = new §`]§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§7&§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§=B§);
         stage.addEventListener(Event.RESIZE,this.§ !^§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§"i§);
         if(stage.stageWidth != §38§ || stage.stageHeight != §5§)
         {
            this.§ !^§(null);
         }
      }
      
      public static function §7!T§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         §6M§ = value;
         §#`§.§^T§(§6M§);
         try
         {
            mySO = SharedObject.getLocal(§#!+§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §0<§() : Boolean
      {
         return §6M§;
      }
      
      public static function §4!Z§() : void
      {
         if(§#`§.§10§("Channel_Theme") == null || !§#`§.§10§("Channel_Theme").§0m§())
         {
            §#`§.§2o§("Sound_Helmet_Theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §do §() : void
      {
         §#`§.§>!e§("Channel_Theme");
      }
      
      public static function get §]X§() : String
      {
         return §9P§;
      }
      
      public static function set §]X§(param1:String) : void
      {
         §9P§ = param1;
      }
      
      public static function get §9!C§() : Boolean
      {
         return §<X§;
      }
      
      override protected function initStateLoad() : §%8§
      {
         return new §2!A§(true,§%8§.§94§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §^4§(param1:ByteArray) : void
      {
      }
      
      private function §7&§(param1:Event) : void
      {
         §8!b§.§@J§();
      }
      
      private function §=B§(param1:MouseEvent) : void
      {
         §8!b§.§6!N§();
      }
      
      private function § !^§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §38§;
         var _loc3_:Number = stage.stageHeight / §5§;
         if(_loc2_ < _loc3_)
         {
            §`!]§.scaleX = §`!]§.scaleY = _loc2_;
            §9!Z§.§^#§(§`!]§.x,§`!]§.y,stage.stageWidth,stage.stageWidth * (§5§ / §38§));
         }
         else
         {
            §`!]§.scaleX = §`!]§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§38§ / §5§);
            _loc5_ = stage.stageHeight;
            §9!Z§.§^#§(§`!]§.x,§`!]§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §"i§(param1:FullScreenEvent) : void
      {
         this.§ !^§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §9!X§.§,!U§.§`K§();
         §#z§.§"l§(§4W§.§`!+§(this.§5K§.getFileAsString("Chapters.json")));
         this.§?+§();
      }
      
      private function §?+§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §@M§.§"6§(§2!G§.§3Y§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§+!S§(§[K§.§0T§(§!!b§),§[K§.§0T§(§<N§));
         §9!Z§.§;!X§(_loc2_,§[K§.§0T§(§=!6§));
         §9!Z§.§5C§(this.§5K§.§9!G§,§;!f§.§#K§(),this.§@2§);
      }
      
      private function §@2§(param1:Event) : void
      {
         §8E§.§8c§ = §'"§.§94§;
         §#z§.§[6§(§#z§.§8F§(HighscoreSidebar.§ null§));
         §<'§(§8E§.§94§);
      }
      
      private function §+!S§(param1:XML, param2:XML) : XML
      {
         var _loc3_:XML = new XML(param1.Items.toXMLString());
         var _loc4_:XML = new XML(param1.Item_Materials.toXMLString());
         var _loc5_:XML = new XML(param1.Item_Shapes.toXMLString());
         var _loc6_:XML = new XML(param1.Item_Resources_Sounds.toXMLString());
         var _loc7_:XML = new XML(param1.SoundChannels.toXMLString());
         var _loc8_:XML = new XML(param1.Material_Damage_Multipliers.toXMLString());
         var _loc9_:XML = new XML(param1.Material_Velocity_Multipliers.toXMLString());
         param2.appendChild(_loc3_);
         param2.appendChild(_loc4_);
         param2.appendChild(_loc5_);
         param2.appendChild(_loc6_);
         param2.appendChild(_loc7_);
         param2.appendChild(_loc8_);
         param2.appendChild(_loc9_);
         return param2;
      }
      
      override public function updateState(param1:Number) : int
      {
         if(§9!Z§.§`!1§ != null)
         {
            §9!Z§.§`!1§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§,!;§().isGenericState())
         {
            if(_loc2_ == §5r§.STATE_STATUS_COMPLETED)
            {
               §]_§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §,!;§().mName + " New State = " + §,!;§().mNextState);
               §<'§(§,!;§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §8!7§;
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
      
      public function get §><§() : §true §
      {
         return this.§[!I§;
      }
   }
}
