package
{
   import §!!7§.§"c§;
   import §&!T§.§<!,§;
   import §'!O§.§#!_§;
   import §'!O§.§0L§;
   import §'!O§.§<!Q§;
   import §'!O§.§<n§;
   import §'!O§.§<r§;
   import §'!O§.§=4§;
   import §'!O§.StateCutScene;
   import §'!O§.StatePlay;
   import §'!O§.§^!V§;
   import §-!"§.§=p§;
   import §-!"§.§>!W§;
   import §20§.§"!b§;
   import §2`§.HighscoreSidebar;
   import §3Y§.§4!_§;
   import §3Y§.§7!>§;
   import §9!2§.§8[§;
   import §9I§.§2!3§;
   import §9L§.§]o§;
   import §9b§.§"!S§;
   import §;!3§.§;!P§;
   import §<N§.§'M§;
   import §=! §.§,Z§;
   import §=! §.§9>§;
   import §@0§.§`>§;
   import §@R§.§!!%§;
   import §@R§.§4,§;
   import §@R§.set;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   import §^V§.§4!H§;
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
   
   public class §,L§ extends §]o§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      public static const §[!0§:String = "http://head.angrybirds-heikki.appspot.com/";
      
      public static const §1'§:int = 760;
      
      public static const §,!<§:int = 220;
      
      public static const §!!d§:int = 570;
      
      public static const §]!^§:Boolean = false;
      
      public static const §1!W§:int = 3000;
      
      public static const §1J§:String = "ABHeikkiKovalainen";
      
      public static var §2;§:String = !!§]!^§ ? §[!0§ : "../";
      
      public static const §?!S§:uint = 16777215;
      
      public static const §%I§:uint = 0;
      
      public static const §^p§:uint = 16777215;
      
      private static var §'!#§:String = §<n§.§@o§;
      
      private static var §#p§:Boolean = false;
      
      private static var §]!M§:Class = §2!V§;
      
      private static var §,$§:Class = §"!9§;
      
      private static var §!I§:Class = §#![§;
      
      private static var § q§:Class = §9c§;
      
      private static var §=!3§:Class = §>-§;
      
      public static var §8!F§:§7!>§ = null;
      
      public static var § !-§:Boolean = true;
      
      public static var §+w§:§,L§ = null;
      
      public static var §+5§:Sprite = null;
       
      
      private var §=!E§:§8[§;
      
      private var §"!;§:§2!3§;
      
      public function §,L§(param1:HeikkiAngryBirdsCanvas)
      {
         var _loc4_:SharedObject = null;
         this.§=!E§ = new §8[§();
         if(Capabilities.os.indexOf("Mac") >= 0)
         {
            §#p§ = true;
         }
         this.§"!;§ = new §2!3§();
         Security.allowDomain("http://angrybirds-heikki.appspot.com");
         Security.allowDomain("http://heikki.angrybirds.com/");
         §,Z§.enabled = true;
         §9>§.§>%§(§,Z§.§]+§);
         § f§ = §1'§ + §,!<§;
         §=8§ = §!!d§;
         var _loc2_:LoadingScreen = new LoadingScreen();
         super(param1,_loc2_,set.§=!^§(§]!M§),set.§=!^§(§,$§));
         §'M§.§ s§.init(§4!H§.§`l§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§=!E§,this.§4<§);
         §+w§ = this;
         §"!b§.initialize(param1.stage);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         §"!S§.init(this,§1'§,§!!d§);
         §"!S§.§-!7§ = new §<!,§(stage);
         §"!S§.§;4§.visible = §]!^§;
         if(stage.loaderInfo.parameters.domain != null)
         {
            §2;§ = !!§]!^§ ? "../" : stage.loaderInfo.parameters.domain + "/";
         }
         §?!%§(new §#!_§(false));
         §?!%§(new §<r§(false));
         §?!%§(new §<n§(false));
         §?!%§(new StatePlay(false));
         §?!%§(new §=4§(false));
         §?!%§(new §<!Q§(false));
         §?!%§(new StateCutScene(false));
         §?!%§(new §0L§(false));
         §4,§.§10§(§=Z§);
         §4,§.§&&§(true);
         stage.showDefaultContextMenu = false;
         var _loc3_:Boolean = true;
         try
         {
            if((_loc4_ = SharedObject.getLocal(§1J§)).data.useSounds == undefined)
            {
               _loc4_.data.useSounds = true;
            }
            _loc3_ = _loc4_.data.useSounds;
         }
         catch(e:Error)
         {
         }
         §`!b§(_loc3_);
         §&M§.§1!V§("CHANNEL_THEME",1,1);
         §&M§.§1!V§("CHANNEL_AMBIENT",1,1);
         §8!F§ = new §7!>§("");
         §4!_§.§,t§ = new §;!P§();
         stage.addEventListener(Event.MOUSE_LEAVE,this.§21§);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§ use§);
         stage.addEventListener(Event.RESIZE,this.§=!&§);
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§`!&§);
         if(stage.stageWidth != §1'§ || stage.stageHeight != §!!d§)
         {
            this.§=!&§(null);
         }
      }
      
      public static function §`!b§(param1:Boolean) : void
      {
         var mySO:SharedObject = null;
         var value:Boolean = param1;
         § !-§ = value;
         §&M§.§6!=§(§ !-§);
         try
         {
            mySO = SharedObject.getLocal(§1J§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §`!+§() : Boolean
      {
         return § !-§;
      }
      
      public static function §`!]§() : void
      {
         if(§&M§.§2!W§("Channel_Theme") == null || !§&M§.§2!W§("Channel_Theme").§&A§())
         {
            §&M§.§6!#§("Sound_Helmet_Theme","Channel_Theme",100,0.65);
         }
      }
      
      public static function §=!5§() : void
      {
         §&M§.§7!<§("Channel_Theme");
      }
      
      public static function get §[!;§() : String
      {
         return §'!#§;
      }
      
      public static function set §[!;§(param1:String) : void
      {
         §'!#§ = param1;
      }
      
      public static function get §;]§() : Boolean
      {
         return §#p§;
      }
      
      override protected function initStateLoad() : §>!W§
      {
         return new §^!V§(true,§>!W§.§@o§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      private function §4<§(param1:ByteArray) : void
      {
      }
      
      private function §21§(param1:Event) : void
      {
         §!!%§.§;@§();
      }
      
      private function § use§(param1:MouseEvent) : void
      {
         §!!%§.§46§();
      }
      
      private function §=!&§(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = stage.stageWidth / §1'§;
         var _loc3_:Number = stage.stageHeight / §!!d§;
         if(_loc2_ < _loc3_)
         {
            §=Z§.scaleX = §=Z§.scaleY = _loc2_;
            §"!S§.§[!6§(§=Z§.x,§=Z§.y,stage.stageWidth,stage.stageWidth * (§!!d§ / §1'§));
         }
         else
         {
            §=Z§.scaleX = §=Z§.scaleY = _loc3_;
            _loc4_ = stage.stageHeight * (§1'§ / §!!d§);
            _loc5_ = stage.stageHeight;
            §"!S§.§[!6§(§=Z§.x,§=Z§.y,_loc4_,_loc5_);
         }
      }
      
      protected function §`!&§(param1:FullScreenEvent) : void
      {
         this.§=!&§(null);
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §'M§.§ s§.§ !c§();
         §,4§.§ ,§(§"c§.§%!K§(this.§=!E§.getFileAsString("Chapters.json")));
         this.§^!Y§();
      }
      
      private function §^!Y§() : void
      {
         var _loc1_:int = Math.round(getTimer() / 1000);
         §9>§.§>%§(§,Z§.§]!7§,_loc1_.toString(),_loc1_);
         var _loc2_:XML = this.§9]§(set.§=!^§(§ q§),set.§=!^§(§!I§));
         §"!S§.§"A§(_loc2_,set.§=!^§(§=!3§));
         §"!S§.§2K§(this.§=!E§.§1!=§,§`>§.§9O§(),this.§?!H§);
      }
      
      private function §?!H§(param1:Event) : void
      {
         §<r§.§>!D§ = §#!_§.§@o§;
         §,4§.§&O§(§,4§.§`Y§(HighscoreSidebar.§1!§));
         §9^§(§<r§.§@o§);
      }
      
      private function §9]§(param1:XML, param2:XML) : XML
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
         if(§"!S§.§;4§ != null)
         {
            §"!S§.§;4§.update(param1);
         }
         var _loc2_:int = super.updateState(param1);
         if(!§=!@§().isGenericState())
         {
            if(_loc2_ == §=p§.STATE_STATUS_COMPLETED)
            {
               §4,§.log("AngryBirdSocial::run() state change is about to start. Old State = " + §=!@§().mName + " New State = " + §=!@§().mNextState);
               §9^§(§=!@§().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §1!W§;
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
      
      public function get §;S§() : §2!3§
      {
         return this.§"!;§;
      }
   }
}
