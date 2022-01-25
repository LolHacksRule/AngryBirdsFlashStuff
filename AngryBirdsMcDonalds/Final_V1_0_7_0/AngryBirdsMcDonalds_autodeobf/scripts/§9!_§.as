package
{
   import §#!8§.§]K§;
   import §#!q§.§0!l§;
   import §#!q§.§6!1§;
   import §#!q§.§6!?§;
   import §#!q§.§`q§;
   import §%!5§.§7;§;
   import §+J§.§?!'§;
   import §,o§.§ !=§;
   import §-!F§.§2[§;
   import §-$§.§!!h§;
   import §0i§.§4!%§;
   import §0i§.§6`§;
   import §0i§.§@^§;
   import §37§.§&!;§;
   import §3G§.§-s§;
   import §3j§.§[8§;
   import §7!N§.§0-§;
   import §7!N§.§9!o§;
   import §7E§.§ =§;
   import §7E§.§&]§;
   import §<! §.§?!P§;
   import §<P§.§=d§;
   import §=!m§.§4T§;
   import §]^§.§7G§;
   import §^8§.§6!g§;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.system.Capabilities;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §9!_§ extends § !=§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §=!H§:String = "http://mcd.angrybirds.com/";
      
      public static const §;!+§:int = 760;
      
      public static const §[c§:int = 220;
      
      public static const §]!n§:int = 570;
      
      public static const §'!m§:Boolean = false;
      
      public static const §#^§:int = 3000;
      
      public static const §1D§:String = "ABMcDonaldsChina";
      
      public static var §?!k§:String = !!§'!m§ ? §=!H§ : "../";
      
      public static const §7O§:uint = 0;
      
      public static const §8!X§:uint = 0;
      
      public static const §=!n§:uint = 12632256;
      
      private static var §'[§:String = § try§.§[!1§;
      
      private static var §7Z§:Boolean = false;
      
      private static var §`0§:Class = §>!N§;
      
      private static var §]!3§:Class = §9L§;
      
      private static var §8F§:Class = §^!Z§;
      
      private static var §"!Z§:Class = § !,§;
      
      private static var §0!1§:Class = §[O§;
      
      private static var §7!b§:Class = §'X§;
      
      public static var §1!?§:§9!o§ = null;
      
      public static var §>C§:Boolean = true;
      
      public static var §@r§:§9!_§ = null;
      
      public static var §@d§:Sprite = null;
       
      
      private var §?!0§:§6!g§;
      
      private var §-i§:§0!l§;
      
      public function §9!_§(param1:AngryBirdsCanvasCustom)
      {
         var _loc5_:§?!P§ = null;
         this.§?!0§ = new §6!g§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §7Z§ = true;
         }
         this.§-i§ = new §0!l§();
         Security.allowDomain("http://angrybirds-mcdonalds-cn.appspot.com");
         §6!1§.enabled = false;
         §6!?§.§>!I§(§6!1§.§!P§);
         §9!K§ = §;!+§ + §[c§;
         §case § = §]!n§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§@^§.§'K§(§`0§),§@^§.§'K§(§]!3§));
         §!!h§.§9$§.init(§4T§.§^n§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§?!0§,this.§@!X§);
         §`q§.§9$§.§do §(§@^§.§'K§(§7!b§));
         var _loc3_:String = §=d§.§<3§("getLanguage");
         if(_loc3_ != null && _loc3_ != "null")
         {
            §`q§.§9$§.§>w§(_loc3_);
         }
         else
         {
            §`q§.§9$§.§>w§("zh");
         }
         §@r§ = this;
         §&!;§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §7;§.init(this,§;!+§,§]!n§);
         §7;§.§1h§ = new §[8§(stage);
         §7;§.§;w§.visible = §'!m§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §?!k§ = !!§'!m§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §-H§(new §"e§(false));
         §-H§(new § try§(false));
         §-H§(new StatePlay(false));
         §-H§(new §'!Q§(false));
         §-H§(new §2!Q§(false));
         §-H§(new StateCutScene(false));
         §-H§(new §6!F§(false));
         §4!%§.§>8§(§3A§);
         §4!%§.§9!p§(true);
         stage.showDefaultContextMenu = false;
         var _loc4_:Boolean = true;
         try
         {
            if((_loc5_ = §?!P§.getLocal(§1D§)).data.useSounds == undefined)
            {
               _loc5_.data.useSounds = true;
            }
            _loc4_ = _loc5_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §?T§(_loc4_);
         §7G§.§&!V§("CHANNEL_THEME",1,1);
         §7G§.§&!V§("CHANNEL_AMBIENT",1,1);
         §1!?§ = new §9!o§("");
         §0-§.§6!&§ = new §?!'§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§2!0§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§'>§);
         stage.addEventListener(Event.RESIZE,this.§^!I§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§,!T§);
         if(stage.stageWidth != §;!+§ || stage.stageHeight != §]!n§)
         {
            this.§^!I§(null);
         }
      }
      
      public static function §?T§(param1:Boolean) : void
      {
         var mySO:§?!P§ = null;
         var value:Boolean = param1;
         §>C§ = value;
         §7G§.§9Y§(§>C§);
         try
         {
            mySO = §?!P§.getLocal(§1D§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §+!W§() : Boolean
      {
         return §>C§;
      }
      
      public static function §>!X§() : void
      {
         if(§7G§.§+!X§("Channel_Theme") == null || !§7G§.§+!X§("Channel_Theme").§4!V§())
         {
            §7G§.§4W§("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §=!D§() : void
      {
         §7G§.§&!X§("Channel_Theme");
      }
      
      public static function get §9§() : String
      {
         return §'[§;
      }
      
      public static function set §9§(param1:String) : void
      {
         §'[§ = param1;
      }
      
      public static function get §@!!§() : Boolean
      {
         return §7Z§;
      }
      
      override protected function initStateLoad() : §&]§
      {
         return new §[!6§(true,§&]§.§[!1§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §@!X§(param1:ByteArray) : void
      {
      }
      
      private function §2!0§(param1:Event) : void
      {
         §6`§.§[$§();
      }
      
      private function §'>§(param1:MouseEvent) : void
      {
         §6`§.§ [§();
      }
      
      private function §^!I§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §;!+§;
         var _loc3_:Number = stage.stageHeight / §]!n§;
         if(_loc2_ < _loc3_)
         {
            §3A§.scaleX = §3A§.scaleY = _loc2_;
            §7;§.§<!G§(§3A§.x,§3A§.y,stage.stageWidth,stage.stageWidth * (§]!n§ / §;!+§));
         }
         else
         {
            §3A§.scaleX = §3A§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§;!+§ / §]!n§);
            _loc5_ = stage.stageHeight;
            §7;§.§<!G§(§3A§.x,§3A§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §,!T§(param1:FullScreenEvent) : void
      {
         this.§^!I§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §!!h§.§9$§.§&8§();
         §2[§.§8!E§(§]K§.§3!c§(this.§?!0§.getFileAsString("Chapters.json")));
         this.§"!X§();
      }
      
      private function §"!X§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §6!?§.§>!I§(§6!1§.§!!]§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§&!]§(§@^§.§'K§(§"!Z§),§@^§.§'K§(§8F§));
         §7;§.§>§(_loc2_,§@^§.§'K§(§0!1§));
         §7;§.§7!q§(this.§?!0§.§>!Y§,§-s§.§&!T§(),this.§5!b§);
      }
      
      private function §5!b§(param1:Event) : void
      {
         §3N§(§ try§.§[!1§);
      }
      
      private function §&!]§(param1:XML, param2:XML) : XML
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
         if(§7;§.§;w§ != null)
         {
            §7;§.§;w§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§#!k§().isGenericState())
         {
            if(_loc2_ == § =§.STATE_STATUS_COMPLETED)
            {
               §4!%§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §#!k§().mName + " New State = " + §#!k§().mNextState);
               §3N§(§#!k§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §#^§;
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
      
      public function get §2!k§() : §0!l§
      {
         return this.§-i§;
      }
   }
}
