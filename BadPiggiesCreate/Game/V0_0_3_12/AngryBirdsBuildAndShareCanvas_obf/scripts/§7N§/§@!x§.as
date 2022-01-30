package §7N§
{
   import §"p§.§@8§;
   import §,r§.§1q§;
   import §0E§.§#O§;
   import §0E§.§@R§;
   import §7"1§.§%W§;
   import §=e§.§1!@§;
   import §=e§.§?!3§;
   import §>!#§.§-""§;
   import §@r§.§[i§;
   
   public class §@!x§ extends §1q§
   {
      
      public static const §8n§:String = "LevelLoadStateEditor";
      
      private static var §9T§:§@R§ = null;
      
      private static var §'!'§:String = null;
      
      private static var §^";§:String = null;
       
      
      public function §@!x§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         super(param1,param2);
      }
      
      public static function loadLevel(param1:§@R§, param2:String) : void
      {
         §"z§ = §%#§;
         §9T§ = param1;
         §'!'§ = param2;
         §[i§.§@b§(param2 == StateLevelEditor.§8n§);
      }
      
      public static function §>"9§(param1:§@R§, param2:XML) : void
      {
         §"z§ = §%#§;
         §-""§.§;",§(param2);
         if(param1 == null)
         {
            §9T§ = §-""§.§;A§();
         }
         else
         {
            §9T§ = param1;
         }
         §'!'§ = StateLevelEditor.§8n§;
         §[i§.§@b§(true);
      }
      
      public static function §?=§(param1:String) : void
      {
         §"z§ = §%#§;
         §9T§ = new §@R§();
         §'!'§ = param1;
      }
      
      public static function §]"0§(param1:String, param2:String) : void
      {
         §"z§ = §%#§;
         §^";§ = param2;
         §'!'§ = param1;
         §9T§ = null;
      }
      
      public static function §8U§(param1:String) : void
      {
         §"z§ = §%#§;
         §'!'§ = param1;
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function initLevelLoad() : void
      {
         if(§^";§ != null && §^";§.length > 0)
         {
            §?!3§.loadLevel(§^";§,this.§@h§,this.§,H§);
            §^";§ = null;
         }
         else
         {
            this.initLevelMain(§9T§);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §%W§.§5"8§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         if(§'!'§ != null)
         {
            mNextState = §'!'§;
            §'!'§ = null;
         }
         else
         {
            mNextState = StateLevelEditor.§8n§;
         }
         §1!@§.doJsCall("onLevelLoaded");
      }
      
      public function §@h§(param1:Object) : void
      {
         §9T§ = §@R§.§;"7§(param1 as String);
         this.initLevelMain(§9T§);
         var _loc2_:Object = JSON.parse(param1 as String);
         _loc2_.thumbnail = null;
         _loc2_.data = null;
         §1!@§.doJsCall("onLevelChange",_loc2_);
      }
      
      override protected function initLevelMain(param1:§#O§) : void
      {
         super.initLevelMain(param1);
         if(param1 is §@R§)
         {
            §-""§.§"r§(param1 as §@R§);
            return;
         }
         throw new Error("levelData should be LevelModelEditor");
      }
      
      public function §,H§() : void
      {
         §@8§.log("LEVEL LOAD FAILED!!");
      }
   }
}
