package
{
   import §"!_§.§?!0§;
   import §%!$§.§2!I§;
   import §%!$§.§;!U§;
   import §%!$§.§[Z§;
   import §+!9§.§ 4§;
   import §+!9§.§%!+§;
   import §+!9§.§&;§;
   import §+!9§.§0!M§;
   import §+!9§.§5!$§;
   import §+!9§.§9;§;
   import §+!9§.StateCutScene;
   import §+!9§.StatePlay;
   import §+!9§.§^!?§;
   import §,J§.§7!A§;
   import §1!6§.§ !3§;
   import §1!6§.§-%§;
   import §3h§.§`_§;
   import §4!9§.§5d§;
   import §4!9§.§>6§;
   import §4;§.§,h§;
   import §4;§.§<!>§;
   import §7h§.§7!"§;
   import §9!&§.§[!`§;
   import §;<§.§!!,§;
   import §;D§.§]T§;
   import §?!P§.§@@§;
   import §[!^§.§^2§;
   import §^!#§.§9!!§;
   import §`Y§.§]!%§;
   import §`r§.§>Z§;
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
   
   public class §1F§ extends §`_§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §&,§:String = "http://head.angrybirds-heikki.appspot.com/";
      
      public static const §-!I§:int = 760;
      
      public static const §#!F§:int = 220;
      
      public static const §9!8§:int = 570;
      
      public static const §7U§:Boolean = false;
      
      public static const §0d§:int = 3000;
      
      public static const §2t§:String = "ABHeikkiKovalainen";
      
      public static var §&1§:String = !!§7U§ ? §&,§ : "../";
      
      public static const §9!J§:uint = 16777215;
      
      public static const §'I§:uint = 0;
      
      public static const §&!§:uint = 16777215;
      
      private static var §'K§:String = §%!+§.§6! §;
      
      private static var §!!E§:Boolean = false;
      
      private static var §2!8§:Class = §,! §;
      
      private static var §8X§:Class = §,T§;
      
      private static var §!j§:Class = §`$§;
      
      private static var §5S§:Class = §[!4§;
      
      private static var §?N§:Class = §@C§;
      
      public static var §=l§:§-%§ = null;
      
      public static var §5`§:Boolean = true;
      
      public static var §8%§:§1F§ = null;
      
      public static var §`O§:Sprite = null;
       
      
      private var §+!B§:§>Z§;
      
      private var §]!4§:§!!,§;
      
      public function §1F§(param1:HeikkiAngryBirdsCanvas)
      {
         var _loc4_:SharedObject = null;
         this.§+!B§ = new §>Z§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §!!E§ = true;
         }
         this.§]!4§ = new §!!,§();
         Security.allowDomain("http://angrybirds-heikki.appspot.com");
         Security.allowDomain("http://heikki.angrybirds.com/");
         §5d§.enabled = true;
         §>6§.§%;§(§5d§.§%L§);
         §#!-§ = §-!I§ + §#!F§;
         §@'§ = §9!8§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§2!I§.§;n§(§2!8§),§2!I§.§;n§(§8X§));
         §?!0§.§'![§.init(§9!!§.§54§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§+!B§,this.§[k§);
         §8%§ = this;
         §^2§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §@@§.init(this,§-!I§,§9!8§);
         §@@§.§ !8§ = new §<D§(stage);
         §@@§.§'!X§.visible = §7U§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §&1§ = !!§7U§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §%!S§(new §0!M§(false));
         §%!S§(new § 4§(false));
         §%!S§(new §%!+§(false));
         §%!S§(new StatePlay(false));
         §%!S§(new §9;§(false));
         §%!S§(new §^!?§(false));
         §%!S§(new StateCutScene(false));
         §%!S§(new §5!$§(false));
         §[Z§.§0!?§(§[!6§);
         §[Z§.§4i§(true);
         stage.showDefaultContextMenu = false;
         var _loc3_:Boolean = true;
         try
         {
            if((_loc4_ = SharedObject.getLocal(§2t§)).data.useSounds == undefined)
            {
               _loc4_.data.useSounds = true;
            }
            _loc3_ = _loc4_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §false§(_loc3_);
         §7!"§.§@c§("CHANNEL_THEME",1,1);
         §7!"§.§@c§("CHANNEL_AMBIENT",1,1);
         §=l§ = new §-%§("");
         § !3§.§@!`§ = new §]T§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§0!>§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§^!&§);
         stage.addEventListener(Event.RESIZE,this.§]Z§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§;!6§);
         if(stage.stageWidth != §-!I§ || stage.stageHeight != §9!8§)
         {
            this.§]Z§(null);
         }
      }
      
      public static function §false§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         §5`§ = value;
         §7!"§.§8K§(§5`§);
         try
         {
            mySO = SharedObject.getLocal(§2t§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §2!1§() : Boolean
      {
         return §5`§;
      }
      
      public static function § 9§() : void
      {
         if(§7!"§.§[!C§("Channel_Theme") == null || !§7!"§.§[!C§("Channel_Theme").§2Z§())
         {
            §7!"§.§#W§("Sound_Helmet_Theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §?§() : void
      {
         §7!"§.§`!-§("Channel_Theme");
      }
      
      public static function get §"T§() : String
      {
         return §'K§;
      }
      
      public static function set §"T§(param1:String) : void
      {
         §'K§ = param1;
      }
      
      public static function get §03§() : Boolean
      {
         return §!!E§;
      }
      
      override protected function initStateLoad() : §<!>§
      {
         return new §&;§(true,§<!>§.§6! §,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §[k§(param1:ByteArray) : void
      {
      }
      
      private function §0!>§(param1:Event) : void
      {
         §;!U§.§<'§();
      }
      
      private function §^!&§(param1:MouseEvent) : void
      {
         §;!U§.§8a§();
      }
      
      private function §]Z§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §-!I§;
         var _loc3_:Number = stage.stageHeight / §9!8§;
         if(_loc2_ < _loc3_)
         {
            §[!6§.scaleX = §[!6§.scaleY = _loc2_;
            §@@§.§7q§(§[!6§.x,§[!6§.y,stage.stageWidth,stage.stageWidth * (§9!8§ / §-!I§));
         }
         else
         {
            §[!6§.scaleX = §[!6§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§-!I§ / §9!8§);
            _loc5_ = stage.stageHeight;
            §@@§.§7q§(§[!6§.x,§[!6§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §;!6§(param1:FullScreenEvent) : void
      {
         this.§]Z§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §?!0§.§'![§.§21§();
         §7!A§.§=!0§(§[!`§.§'!J§(this.§+!B§.getFileAsString("Chapters.json")));
         this.§^!R§();
      }
      
      private function §^!R§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §>6§.§%;§(§5d§.§^,§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§5!a§(§2!I§.§;n§(§5S§),§2!I§.§;n§(§!j§));
         §@@§.§>O§(_loc2_,§2!I§.§;n§(§?N§));
         §@@§.§=!R§(this.§+!B§.§82§,§]!%§.§2!=§(),this.§8C§);
      }
      
      private function §8C§(param1:Event) : void
      {
         § 4§.§=D§ = §0!M§.§6! §;
         §7!A§.§get §(§7!A§.§]a§(HighscoreSidebar.§4!D§));
         §,!a§(§ 4§.§6! §);
      }
      
      private function §5!a§(param1:XML, param2:XML) : XML
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
         if(§@@§.§'!X§ != null)
         {
            §@@§.§'!X§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§!#§().isGenericState())
         {
            if(_loc2_ == §,h§.STATE_STATUS_COMPLETED)
            {
               §[Z§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §!#§().mName + " New State = " + §!#§().mNextState);
               §,!a§(§!#§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §0d§;
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
      
      public function get §7!U§() : §!!,§
      {
         return this.§]!4§;
      }
   }
}
