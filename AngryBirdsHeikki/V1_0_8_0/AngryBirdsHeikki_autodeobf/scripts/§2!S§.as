package
{
   import § !3§.§!X§;
   import § !3§.§9v§;
   import § !3§.§[a§;
   import §!a§.§&6§;
   import §!a§.§2"§;
   import §#!T§.§&2§;
   import §#;§.§42§;
   import §%!c§.§3h§;
   import §'z§.§3?§;
   import §+!J§.§&7§;
   import §+E§.§ 0§;
   import §-Y§.§>!'§;
   import §0!&§.§@=§;
   import §0;§.§%"§;
   import §0;§.§]U§;
   import §1!J§.§'@§;
   import §4!e§.§+!Y§;
   import §9!?§.§#!=§;
   import §9!?§.§%t§;
   import §<!P§.§1!e§;
   import §>!E§.§=!_§;
   import §[,§.§%m§;
   import §[,§.§+D§;
   import §[,§.§3!<§;
   import §[,§.§4!M§;
   import §[,§.§;!b§;
   import §[,§.StateCutScene;
   import §[,§.StatePlay;
   import §[,§.§]=§;
   import §[,§.§`j§;
   import §]b§.§'!O§;
   import §`V§.HighscoreSidebar;
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
   
   public class §2!S§ extends §=!_§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §5X§:String = "http://head.angrybirds-heikki.appspot.com/";
      
      public static const §0!+§:int = 760;
      
      public static const §2U§:int = 220;
      
      public static const §>!?§:int = 570;
      
      public static const §"e§:Boolean = false;
      
      public static const §!>§:int = 3000;
      
      public static const §7<§:String = "ABHeikkiKovalainen";
      
      public static var §1,§:String = !!§"e§ ? §5X§ : "../";
      
      public static const § c§:uint = 16777215;
      
      public static const §0]§:uint = 0;
      
      public static const §=c§:uint = 16777215;
      
      private static var §,&§:String = §%m§.§+Z§;
      
      private static var §>B§:Boolean = false;
      
      private static var §@![§:Class = §!!T§;
      
      private static var §6!L§:Class = §3!e§;
      
      private static var §>@§:Class = §!T§;
      
      private static var §4!a§:Class = §,!6§;
      
      private static var §"!F§:Class = §5N§;
      
      public static var §<P§:§%"§ = null;
      
      public static var §0!-§:Boolean = true;
      
      public static var §'!5§:§2!S§ = null;
      
      public static var §5=§:Sprite = null;
       
      
      private var §'!1§:§1!e§;
      
      private var §%4§:§'@§;
      
      public function §2!S§(param1:HeikkiAngryBirdsCanvas)
      {
         var _loc4_:SharedObject = null;
         this.§'!1§ = new §1!e§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §>B§ = true;
         }
         this.§%4§ = new §'@§();
         Security.allowDomain("http://angrybirds-heikki.appspot.com");
         Security.allowDomain("http://heikki.angrybirds.com/");
         §%t§.enabled = true;
         §#!=§.§^!4§(§%t§.§0A§);
         §]!W§ = §0!+§ + §2U§;
         §&t§ = §>!?§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§[a§.§`l§(§@![§),§[a§.§`l§(§6!L§));
         §3h§.§=,§.init(§>!'§.§>?§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§'!1§,this.§`[§);
         §'!5§ = this;
         §3?§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §&2§.init(this,§0!+§,§>!?§);
         §&2§.§4!1§ = new §&7§(stage);
         §&2§.§,!c§.visible = §"e§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §1,§ = !!§"e§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §&#§(new §3!<§(false));
         §&#§(new §4!M§(false));
         §&#§(new §%m§(false));
         §&#§(new StatePlay(false));
         §&#§(new §]=§(false));
         §&#§(new §;!b§(false));
         §&#§(new StateCutScene(false));
         §&#§(new §+D§(false));
         §!X§.§?[§(§1!]§);
         §!X§.§+!W§(true);
         stage.showDefaultContextMenu = false;
         var _loc3_:Boolean = true;
         try
         {
            if((_loc4_ = SharedObject.getLocal(§7<§)).data.useSounds == undefined)
            {
               _loc4_.data.useSounds = true;
            }
            _loc3_ = _loc4_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §'!"§(_loc3_);
         §42§.§-!+§("CHANNEL_THEME",1,1);
         §42§.§-!+§("CHANNEL_AMBIENT",1,1);
         §<P§ = new §%"§("");
         §]U§.§-v§ = new §'!O§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§87§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§^k§);
         stage.addEventListener(Event.RESIZE,this.§?!#§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§ >§);
         if(stage.stageWidth != §0!+§ || stage.stageHeight != §>!?§)
         {
            this.§?!#§(null);
         }
      }
      
      public static function §'!"§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         §0!-§ = value;
         §42§.§4!E§(§0!-§);
         try
         {
            mySO = SharedObject.getLocal(§7<§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §'o§() : Boolean
      {
         return §0!-§;
      }
      
      public static function §3!E§() : void
      {
         if(§42§.§`v§("Channel_Theme") == null || !§42§.§`v§("Channel_Theme").§6!W§())
         {
            §42§.§;!`§("Sound_Helmet_Theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §+!H§() : void
      {
         §42§.§`!F§("Channel_Theme");
      }
      
      public static function get §1!b§() : String
      {
         return §,&§;
      }
      
      public static function set §1!b§(param1:String) : void
      {
         §,&§ = param1;
      }
      
      public static function get § z§() : Boolean
      {
         return §>B§;
      }
      
      override protected function initStateLoad() : §2"§
      {
         return new §`j§(true,§2"§.§+Z§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §`[§(param1:ByteArray) : void
      {
      }
      
      private function §87§(param1:Event) : void
      {
         §9v§.§`!]§();
      }
      
      private function §^k§(param1:MouseEvent) : void
      {
         §9v§.§3e§();
      }
      
      private function §?!#§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §0!+§;
         var _loc3_:Number = stage.stageHeight / §>!?§;
         if(_loc2_ < _loc3_)
         {
            §1!]§.scaleX = §1!]§.scaleY = _loc2_;
            §&2§.§2!E§(§1!]§.x,§1!]§.y,stage.stageWidth,stage.stageWidth * (§>!?§ / §0!+§));
         }
         else
         {
            §1!]§.scaleX = §1!]§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§0!+§ / §>!?§);
            _loc5_ = stage.stageHeight;
            §&2§.§2!E§(§1!]§.x,§1!]§.y,_loc4_,_loc5_);
         }
      }
      
      protected function § >§(param1:FullScreenEvent) : void
      {
         this.§?!#§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §3h§.§=,§.§#!e§();
         §@=§.§,%§(§ 0§.§?!D§(this.§'!1§.getFileAsString("Chapters.json")));
         this.§>T§();
      }
      
      private function §>T§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §#!=§.§^!4§(§%t§.§%u§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§1!I§(§[a§.§`l§(§4!a§),§[a§.§`l§(§>@§));
         §&2§.§>C§(_loc2_,§[a§.§`l§(§"!F§));
         §&2§.§[!4§(this.§'!1§.§#^§,§+!Y§.§#T§(),this.§7!1§);
      }
      
      private function §7!1§(param1:Event) : void
      {
         §4!M§.§!`§ = §3!<§.§+Z§;
         §@=§.§-!Q§(§@=§.§%^§(HighscoreSidebar.§0!I§));
         §@z§(§4!M§.§+Z§);
      }
      
      private function §1!I§(param1:XML, param2:XML) : XML
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
         if(§&2§.§,!c§ != null)
         {
            §&2§.§,!c§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§,m§().isGenericState())
         {
            if(_loc2_ == §&6§.STATE_STATUS_COMPLETED)
            {
               §!X§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §,m§().mName + " New State = " + §,m§().mNextState);
               §@z§(§,m§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §!>§;
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
      
      public function get §]!>§() : §'@§
      {
         return this.§%4§;
      }
   }
}
