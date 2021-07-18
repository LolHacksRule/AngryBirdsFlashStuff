package
{
   import § !A§.§"!8§;
   import § !r§.§3!X§;
   import §!!8§.§-!D§;
   import §1!F§.§"![§;
   import §1!F§.§-G§;
   import §1!F§.§2!i§;
   import §1!F§.§6+§;
   import §1!F§.§>P§;
   import §1!F§.StatePlayBS;
   import §1!F§.§]>§;
   import §1!F§.§^z§;
   import §1?§.§+!§;
   import §<!<§.§=2§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §@!i§.§#S§;
   import §@!i§.§,!F§;
   import §@!i§.§0!§;
   import §@!i§.§?!q§;
   import §@!i§.§@!n§;
   import §@!i§.StateLevelEditor;
   import §@!i§.StateLevelEditorTestPlay;
   import §@!i§.StateLevelPreview;
   import §@!i§.§[!_§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   
   public class §35§ extends AngryBirdsFP11
   {
      
      public static const VERSION:String = "0.0.1.7 ({svn_version})";
      
      public static var §9!T§:String;
      
      protected static var §`!l§:String;
      
      public static const §&d§:int = 800;
      
      public static const §6k§:int = 600;
      
      public static const §>!q§:Boolean = false;
      
      protected static var §%&§:Class = §&!B§;
      
      protected static var §^>§:Class = § A§;
      
      protected static var §&!_§:Class = §%!T§;
      
      protected static var §?N§:Class = §4j§;
      
      public static var §;+§:Boolean = true;
      
      private static var §8;§:§35§ = null;
      
      public static var §7!p§:Boolean = false;
       
      
      public function §35§(param1:§"!8§)
      {
         super(param1);
      }
      
      public static function §]!<§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §`!d§() : §35§
      {
         return §8;§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §3!X§.§3<§(§&!_§);
      }
      
      override protected function getAssetMap() : XML
      {
         return §3!X§.§3<§(§^>§);
      }
      
      override protected function getUIData() : XML
      {
         return §3!X§.§3<§(§%&§);
      }
      
      override protected function getItemData() : XML
      {
         return §3!X§.§3<§(§?N§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         var _loc1_:Sprite = new §`o§();
         _loc1_.scaleX = §'!V§.§9r§;
         _loc1_.scaleY = §'!V§.§'A§;
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         §8;§ = this;
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(_loc1_.data.soundsEnabled)
         {
            §;z§(_loc1_.data.soundsEnabled);
         }
         §+!§.§#n§("CHANNEL_THEME",1,1);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §6!I§;
            _loc3_ = §+m§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
         }
         §'!V§.§>!T§(0,0,_loc2_,_loc3_);
         setViewSize(_loc2_,_loc3_);
         §7j§.§else§.setCanvasSize(_loc2_,_loc3_);
         §6!I§ = _loc2_;
         §+m§ = _loc3_;
      }
      
      override protected function initStates() : void
      {
         §-!D§.init(§;!!§.§ !<§("callbackObject"));
         §'!V§.§'!s§.visible = false;
         § Y§(new §^z§(false));
         § Y§(new §-G§(false));
         § Y§(new §]>§(false));
         § Y§(new StateLevelEditor(false));
         § Y§(new §@!n§(false));
         § Y§(new StateLevelEditorTestPlay(false));
         § Y§(new §#S§(false));
         § Y§(new §0!§(false));
         § Y§(new StatePlayBS(false));
         § Y§(new §>P§(false));
         § Y§(new §"![§(false));
         § Y§(new §2!i§(false));
         § Y§(new §[!_§(false));
         § Y§(new §,!F§(false));
         § Y§(new §?!q§(false));
         § Y§(new StateLevelPreview(false));
         § Y§(new §6+§(false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            this.onStageResize(null);
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §8!W§(§6+§.STATE_NAME);
         §7!p§ = true;
      }
      
      override protected function initLevelMain() : void
      {
         §'!V§.§1!2§ = new §=2§(stage);
      }
      
      override public function getAppWidth() : Number
      {
         return §&d§;
      }
      
      override public function getAppHeight() : Number
      {
         return §6k§;
      }
   }
}
