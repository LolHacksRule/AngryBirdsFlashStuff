package
{
   import §#!1§.§!!X§;
   import §#!1§.§3!>§;
   import §#!1§.§6!<§;
   import §#!1§.§6!>§;
   import §#a§.§ get§;
   import §%!H§.§<!_§;
   import §%e§.§4§;
   import §&6§.§ !4§;
   import §'+§.§,K§;
   import §'+§.§1u§;
   import §'+§.§<@§;
   import §,!H§.§ for§;
   import §,!H§.§0+§;
   import §,4§.§;_§;
   import §0$§.§!t§;
   import §0$§.§;L§;
   import §2!G§.§-!3§;
   import §5!&§.§=!,§;
   import §5!W§.§!E§;
   import §5!W§.§"!6§;
   import §5!W§.§#!X§;
   import §5!W§.§,!B§;
   import §5!W§.§9w§;
   import §5!W§.StateCutScene;
   import §5!W§.StatePlay;
   import §5!W§.§[Z§;
   import §7F§.§2M§;
   import §9!§.§,!l§;
   import §=f§.§#!A§;
   import §=u§.§-!F§;
   import §@!1§.§#!<§;
   import §[!4§.§-#§;
   import §^!I§.§"r§;
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
   
   public class §3![§ extends §#!<§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const § a§:String = "http://mcd.angrybirds.com/";
      
      public static const §^e§:int = 760;
      
      public static const §=!S§:int = 220;
      
      public static const §0Z§:int = 570;
      
      public static const §,x§:Boolean = false;
      
      public static const §,!R§:int = 3000;
      
      public static const §#!E§:String = "ABMcDonaldsChina";
      
      public static var §=![§:String = !!§,x§ ? § a§ : "../";
      
      public static const §<!5§:uint = 0;
      
      public static const §<]§:uint = 0;
      
      public static const §;W§:uint = 12632256;
      
      private static var §,!P§:String = §,!B§.§>d§;
      
      private static var §]!9§:Boolean = false;
      
      private static var §&!j§:Class = §%§;
      
      private static var §2&§:Class = §[c§;
      
      private static var §0!V§:Class = §!!Q§;
      
      private static var §&!'§:Class = §2q§;
      
      private static var §&!r§:Class = §`"§;
      
      private static var §-!&§:Class = §6p§;
      
      public static var §5!6§:§;L§ = null;
      
      public static var §8u§:Boolean = true;
      
      public static var §+w§:§3![§ = null;
      
      public static var §`!=§:Sprite = null;
       
      
      private var §<!§:§ get§;
      
      private var §9W§:§3!>§;
      
      public function §3![§(param1:AngryBirdsCanvasCustom)
      {
         var _loc5_:§ !4§ = null;
         this.§<!§ = new § get§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §]!9§ = true;
         }
         this.§9W§ = new §3!>§();
         Security.allowDomain("http://angrybirds-mcdonalds-cn.appspot.com");
         §6!<§.enabled = false;
         §6!>§.§7!'§(§6!<§.§5!Q§);
         §else § = §^e§ + §=!S§;
         §%h§ = §0Z§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,§<@§.§,'§(§&!j§),§<@§.§,'§(§2&§));
         §=!,§.§5!!§.init(§-!F§.§?!]§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§<!§,this.§!%§);
         §!!X§.§5!!§.§%!X§(§<@§.§,'§(§-!&§));
         var _loc3_:String = §4§.§>A§("getLanguage");
         if(_loc3_ != null && _loc3_ != "null")
         {
            §!!X§.§5!!§.§[R§(_loc3_);
         }
         else
         {
            §!!X§.§5!!§.§[R§("zh");
         }
         §+w§ = this;
         §-!3§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §2M§.init(this,§^e§,§0Z§);
         §2M§.§1?§ = new §"r§(stage);
         §2M§.§-!H§.visible = §,x§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §=![§ = !!§,x§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §!!e§(new §[Z§(false));
         §!!e§(new §,!B§(false));
         §!!e§(new StatePlay(false));
         §!!e§(new §9w§(false));
         §!!e§(new §#!X§(false));
         §!!e§(new StateCutScene(false));
         §!!e§(new §!E§(false));
         §1u§.§=!E§(§5B§);
         §1u§.§6v§(true);
         stage.showDefaultContextMenu = false;
         var _loc4_:Boolean = true;
         try
         {
            if((_loc5_ = § !4§.getLocal(§#!E§)).data.useSounds == undefined)
            {
               _loc5_.data.useSounds = true;
            }
            _loc4_ = _loc5_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §?!&§(_loc4_);
         §-#§.§28§("CHANNEL_THEME",1,1);
         §-#§.§28§("CHANNEL_AMBIENT",1,1);
         §5!6§ = new §;L§("");
         §!t§.§<1§ = new §#!A§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§6x§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[!D§);
         stage.addEventListener(Event.RESIZE,this.§`!5§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§>! §);
         if(stage.stageWidth != §^e§ || stage.stageHeight != §0Z§)
         {
            this.§`!5§(null);
         }
      }
      
      public static function §?!&§(param1:Boolean) : void
      {
         var mySO:§ !4§ = null;
         var value:Boolean = param1;
         §8u§ = value;
         §-#§.§<'§(§8u§);
         try
         {
            mySO = § !4§.getLocal(§#!E§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-Z§() : Boolean
      {
         return §8u§;
      }
      
      public static function §'S§() : void
      {
         if(§-#§.§7]§("Channel_Theme") == null || !§-#§.§7]§("Channel_Theme").§&!H§())
         {
            §-#§.§4h§("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §<"§() : void
      {
         §-#§.§-q§("Channel_Theme");
      }
      
      public static function get §0#§() : String
      {
         return §,!P§;
      }
      
      public static function set §0#§(param1:String) : void
      {
         §,!P§ = param1;
      }
      
      public static function get §8J§() : Boolean
      {
         return §]!9§;
      }
      
      override protected function initStateLoad() : §0+§
      {
         return new §"!6§(true,§0+§.§>d§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §!%§(param1:ByteArray) : void
      {
      }
      
      private function §6x§(param1:Event) : void
      {
         §,K§.§;!i§();
      }
      
      private function §[!D§(param1:MouseEvent) : void
      {
         §,K§.§<!e§();
      }
      
      private function §`!5§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §^e§;
         var _loc3_:Number = stage.stageHeight / §0Z§;
         if(_loc2_ < _loc3_)
         {
            §5B§.scaleX = §5B§.scaleY = _loc2_;
            §2M§.§;N§(§5B§.x,§5B§.y,stage.stageWidth,stage.stageWidth * (§0Z§ / §^e§));
         }
         else
         {
            §5B§.scaleX = §5B§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§^e§ / §0Z§);
            _loc5_ = stage.stageHeight;
            §2M§.§;N§(§5B§.x,§5B§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §>! §(param1:FullScreenEvent) : void
      {
         this.§`!5§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §=!,§.§5!!§.§>!%§();
         §;_§.§8!j§(§<!_§.§8!R§(this.§<!§.getFileAsString("Chapters.json")));
         this.§6R§();
      }
      
      private function §6R§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §6!>§.§7!'§(§6!<§.§0N§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§8N§(§<@§.§,'§(§&!'§),§<@§.§,'§(§0!V§));
         §2M§.§4]§(_loc2_,§<@§.§,'§(§&!r§));
         §2M§.§<!C§(this.§<!§.§1!M§,§,!l§.§>!b§(),this.§,!^§);
      }
      
      private function §,!^§(param1:Event) : void
      {
         §^?§(§,!B§.§>d§);
      }
      
      private function §8N§(param1:XML, param2:XML) : XML
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
         if(§2M§.§-!H§ != null)
         {
            §2M§.§-!H§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§`L§().isGenericState())
         {
            if(_loc2_ == § for§.STATE_STATUS_COMPLETED)
            {
               §1u§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §`L§().mName + " New State = " + §`L§().mNextState);
               §^?§(§`L§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §,!R§;
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
      
      public function get §]!>§() : §3!>§
      {
         return this.§9W§;
      }
   }
}
