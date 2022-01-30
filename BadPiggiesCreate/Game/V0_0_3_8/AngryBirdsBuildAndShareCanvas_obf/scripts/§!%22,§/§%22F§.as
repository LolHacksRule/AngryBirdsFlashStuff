package §!",§
{
   import §!!T§.§"!S§;
   import §!!T§.§5!!§;
   import §'!O§.§5!v§;
   import §'!O§.§@!l§;
   import §-P§.§;!@§;
   import §4u§.§<!L§;
   import §;!+§.§`!#§;
   import §>0§.§=D§;
   import §`%§.§8!0§;
   
   public class §"F§ extends §;!@§
   {
      
      public static const §#!w§:String = "LevelLoadStateEditor";
      
      private static var §%"+§:§5!v§ = null;
      
      private static var §[5§:String = null;
      
      private static var §,!+§:String = null;
       
      
      public function §"F§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         super(param1,param2);
      }
      
      public static function loadLevel(param1:§5!v§, param2:String) : void
      {
         §@x§ = §0=§;
         §%"+§ = param1;
         §[5§ = param2;
         §=D§.§0!E§(param2 == StateLevelEditor.§#!w§);
      }
      
      public static function §8S§(param1:§5!v§, param2:XML) : void
      {
         §@x§ = §0=§;
         §`!#§.§];§(param2);
         if(param1 == null)
         {
            §%"+§ = §`!#§.§!Z§();
         }
         else
         {
            §%"+§ = param1;
         }
         §[5§ = StateLevelEditor.§#!w§;
         §=D§.§0!E§(true);
      }
      
      public static function §9!B§(param1:String) : void
      {
         §@x§ = §0=§;
         §%"+§ = new §5!v§();
         §[5§ = param1;
      }
      
      public static function §@"3§(param1:String, param2:String) : void
      {
         §@x§ = §0=§;
         §,!+§ = param2;
         §[5§ = param1;
         §%"+§ = null;
      }
      
      public static function §%!,§(param1:String) : void
      {
         §@x§ = §0=§;
         §[5§ = param1;
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function initLevelLoad() : void
      {
         if(§,!+§ != null && §,!+§.length > 0)
         {
            §5!!§.loadLevel(§,!+§,this.§0]§,this.§]",§);
            §,!+§ = null;
         }
         else
         {
            this.initLevelMain(§%"+§);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §8!0§.§?2§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         if(§[5§ != null)
         {
            mNextState = §[5§;
            §[5§ = null;
         }
         else
         {
            mNextState = StateLevelEditor.§#!w§;
         }
         §"!S§.doJsCall("onLevelLoaded");
      }
      
      public function §0]§(param1:Object) : void
      {
         §%"+§ = §5!v§.§?D§(param1 as String);
         this.initLevelMain(§%"+§);
         var _loc2_:Object = JSON.parse(param1 as String);
         _loc2_.thumbnail = null;
         _loc2_.data = null;
         §"!S§.doJsCall("onLevelChange",_loc2_);
      }
      
      override protected function initLevelMain(param1:§@!l§) : void
      {
         super.initLevelMain(param1);
         if(param1 is §5!v§)
         {
            §`!#§.§@!P§(param1 as §5!v§);
            return;
         }
         throw new Error("levelData should be LevelModelEditor");
      }
      
      public function §]",§() : void
      {
         §<!L§.log("LEVEL LOAD FAILED!!");
      }
   }
}
