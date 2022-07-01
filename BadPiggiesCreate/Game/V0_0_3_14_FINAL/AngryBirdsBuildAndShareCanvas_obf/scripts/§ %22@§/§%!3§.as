package § "@§
{
   import §"v§.§9"§;
   import §"v§.§]!B§;
   import §%_§.§4m§;
   import §%_§.§5"8§;
   import §%c§.§=!X§;
   import §0![§.§0",§;
   import §=!#§.§2"-§;
   import §=!M§.§9!P§;
   import §="6§.§^"8§;
   
   public class §%!3§ extends §0",§
   {
      
      public static const §'=§:String = "LevelLoadStateEditor";
      
      private static var §4!u§:§]!B§ = null;
      
      private static var §]k§:String = null;
      
      private static var §!@§:String = null;
       
      
      public function §%!3§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         super(param1,param2);
      }
      
      public static function loadLevel(param1:§]!B§, param2:String) : void
      {
         §7""§ = §#!F§;
         §4!u§ = param1;
         §]k§ = param2;
         §2"-§.§@&§(param2 == StateLevelEditor.§'=§);
      }
      
      public static function §-E§(param1:§]!B§, param2:XML) : void
      {
         §7""§ = §#!F§;
         §^"8§.§=Z§(param2);
         if(param1 == null)
         {
            §4!u§ = §^"8§.§8!z§();
         }
         else
         {
            §4!u§ = param1;
         }
         §]k§ = StateLevelEditor.§'=§;
         §2"-§.§@&§(true);
      }
      
      public static function §>o§(param1:String) : void
      {
         §7""§ = §#!F§;
         §4!u§ = new §]!B§();
         §]k§ = param1;
      }
      
      public static function §"!X§(param1:String, param2:String) : void
      {
         §7""§ = §#!F§;
         §!@§ = param2;
         §]k§ = param1;
         §4!u§ = null;
      }
      
      public static function §4[§(param1:String) : void
      {
         §7""§ = §#!F§;
         §]k§ = param1;
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function initLevelLoad() : void
      {
         if(§!@§ != null && §!@§.length > 0)
         {
            §5"8§.loadLevel(§!@§,this.§]'§,this.§6"!§);
            §!@§ = null;
         }
         else
         {
            this.initLevelMain(§4!u§);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §=!X§.§!'§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         if(§]k§ != null)
         {
            mNextState = §]k§;
            §]k§ = null;
         }
         else
         {
            mNextState = StateLevelEditor.§'=§;
         }
         §4m§.doJsCall("onLevelLoaded");
      }
      
      public function §]'§(param1:Object) : void
      {
         §4!u§ = §]!B§.§+0§(param1 as String);
         this.initLevelMain(§4!u§);
         var _loc2_:Object = JSON.parse(param1 as String);
         _loc2_.thumbnail = null;
         _loc2_.data = null;
         §4m§.doJsCall("onLevelChange",_loc2_);
      }
      
      override protected function initLevelMain(param1:§9"§) : void
      {
         super.initLevelMain(param1);
         if(param1 is §]!B§)
         {
            §^"8§.§5z§(param1 as §]!B§);
            return;
         }
         throw new Error("levelData should be LevelModelEditor");
      }
      
      public function §6"!§() : void
      {
         §9!P§.log("LEVEL LOAD FAILED!!");
      }
   }
}
