package §;b§
{
   import §,!g§.§>7§;
   import §,P§.§'_§;
   import §05§.§7!W§;
   import §05§.§?s§;
   import §5u§.§-"#§;
   import §6]§.§,"0§;
   import §<i§.§'!e§;
   import §<i§.§-"?§;
   import §^U§.§ get§;
   
   public class §@"0§ extends § get§
   {
      
      public static const §%!Q§:String = "LevelLoadStateEditor";
      
      private static var §>^§:§-"?§ = null;
      
      private static var §@S§:String = null;
      
      private static var §;p§:String = null;
       
      
      public function §@"0§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         super(param1,param2);
      }
      
      public static function loadLevel(param1:§-"?§, param2:String) : void
      {
         §`!w§ = §>!k§;
         §>^§ = param1;
         §@S§ = param2;
         §>7§.§];§(param2 == StateLevelEditor.§%!Q§);
      }
      
      public static function each(param1:§-"?§, param2:XML) : void
      {
         §`!w§ = §>!k§;
         §-"#§.§<!4§(param2);
         if(param1 == null)
         {
            §>^§ = §-"#§.§%=§();
         }
         else
         {
            §>^§ = param1;
         }
         §@S§ = StateLevelEditor.§%!Q§;
         §>7§.§];§(true);
      }
      
      public static function §[y§(param1:String) : void
      {
         §`!w§ = §>!k§;
         §>^§ = new §-"?§();
         §@S§ = param1;
      }
      
      public static function §^!'§(param1:String, param2:String) : void
      {
         §`!w§ = §>!k§;
         §;p§ = param2;
         §@S§ = param1;
         §>^§ = null;
      }
      
      public static function §%P§(param1:String) : void
      {
         §`!w§ = §>!k§;
         §@S§ = param1;
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function initLevelLoad() : void
      {
         if(§;p§ != null && §;p§.length > 0)
         {
            §7!W§.loadLevel(§;p§,this.§@">§,this.§9K§);
            §;p§ = null;
         }
         else
         {
            this.initLevelMain(§>^§);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §'_§.§=M§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         if(§@S§ != null)
         {
            mNextState = §@S§;
            §@S§ = null;
         }
         else
         {
            mNextState = StateLevelEditor.§%!Q§;
         }
         §?s§.doJsCall("onLevelLoaded");
      }
      
      public function §@">§(param1:Object) : void
      {
         §>^§ = §-"?§.§ !N§(param1 as String);
         this.initLevelMain(§>^§);
         var _loc2_:Object = JSON.parse(param1 as String);
         _loc2_.thumbnail = null;
         _loc2_.data = null;
         §?s§.doJsCall("onLevelChange",_loc2_);
      }
      
      override protected function initLevelMain(param1:§'!e§) : void
      {
         super.initLevelMain(param1);
         if(param1 is §-"?§)
         {
            §-"#§.§-!Y§(param1 as §-"?§);
            return;
         }
         throw new Error("levelData should be LevelModelEditor");
      }
      
      public function §9K§() : void
      {
         §,"0§.log("LEVEL LOAD FAILED!!");
      }
   }
}
