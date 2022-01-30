package §!!+§
{
   import §+!v§.§`!t§;
   import §,i§.§@"!§;
   import §1U§.§"!V§;
   import §2!§.§>B§;
   import §7M§.§+R§;
   import §7M§.§7!#§;
   import §8"'§.§?!`§;
   import §8"'§.final;
   import §9!G§.§]!e§;
   
   public class §4!l§ extends §@"!§
   {
      
      public static const §]"2§:String = "LevelLoadStateEditor";
      
      private static var § !+§:§7!#§ = null;
      
      private static var §^!H§:String = null;
      
      private static var §,!0§:String = null;
       
      
      public function §4!l§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         super(param1,param2);
      }
      
      public static function loadLevel(param1:§7!#§, param2:String) : void
      {
         §&!v§ = §&"6§;
         § !+§ = param1;
         §^!H§ = param2;
         §>B§.§^"-§(param2 == StateLevelEditor.§]"2§);
      }
      
      public static function §&!I§(param1:§7!#§, param2:XML) : void
      {
         §&!v§ = §&"6§;
         §`!t§.§#V§(param2);
         if(param1 == null)
         {
            § !+§ = §`!t§.§;A§();
         }
         else
         {
            § !+§ = param1;
         }
         §^!H§ = StateLevelEditor.§]"2§;
         §>B§.§^"-§(true);
      }
      
      public static function §["'§(param1:String) : void
      {
         §&!v§ = §&"6§;
         § !+§ = new §7!#§();
         §^!H§ = param1;
      }
      
      public static function §@!H§(param1:String, param2:String) : void
      {
         §&!v§ = §&"6§;
         §,!0§ = param2;
         §^!H§ = param1;
         § !+§ = null;
      }
      
      public static function §"l§(param1:String) : void
      {
         §&!v§ = §&"6§;
         §^!H§ = param1;
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function initLevelLoad() : void
      {
         if(§,!0§ != null && §,!0§.length > 0)
         {
            final.loadLevel(§,!0§,this.§!c§,this.§"!@§);
            §,!0§ = null;
         }
         else
         {
            this.initLevelMain(§ !+§);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §"!V§.§!j§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         if(§^!H§ != null)
         {
            mNextState = §^!H§;
            §^!H§ = null;
         }
         else
         {
            mNextState = StateLevelEditor.§]"2§;
         }
         §?!`§.doJsCall("onLevelLoaded");
      }
      
      public function §!c§(param1:Object) : void
      {
         § !+§ = §7!#§.§>"&§(param1 as String);
         this.initLevelMain(§ !+§);
         var _loc2_:Object = JSON.parse(param1 as String);
         _loc2_.thumbnail = null;
         _loc2_.data = null;
         §?!`§.doJsCall("onLevelChange",_loc2_);
      }
      
      override protected function initLevelMain(param1:§+R§) : void
      {
         super.initLevelMain(param1);
         if(param1 is §7!#§)
         {
            §`!t§.§'l§(param1 as §7!#§);
            return;
         }
         throw new Error("levelData should be LevelModelEditor");
      }
      
      public function §"!@§() : void
      {
         §]!e§.log("LEVEL LOAD FAILED!!");
      }
   }
}
