package §@!i§
{
   import § !r§.§`![§;
   import §!!8§.§"!i§;
   import §!!8§.§-!D§;
   import §+]§.§"U§;
   import §-!0§.§2! §;
   import §-!0§.§=J§;
   import §1!F§.§4!&§;
   import §1j§.§=q§;
   import §?!-§.§'!V§;
   import §`a§.§^7§;
   
   public class §@!n§ extends §4!&§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateEditor";
      
      private static var §9!p§:§2! § = null;
      
      private static var §3w§:String = null;
      
      private static var §=!6§:String = null;
       
      
      public function §@!n§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         super(param1,param2);
      }
      
      public static function loadLevel(param1:§2! §, param2:String) : void
      {
         §>V§ = §8-§;
         §9!p§ = param1;
         §3w§ = param2;
         §^7§.§>!B§(param2 == StateLevelEditor.STATE_NAME);
      }
      
      public static function §%!]§(param1:String) : void
      {
         §>V§ = §8-§;
         §9!p§ = new §2! §();
         §3w§ = param1;
      }
      
      public static function §'p§(param1:String) : void
      {
         §>V§ = §8-§;
         §9!p§ = §"U§.getCurrentLevelData();
         §3w§ = param1;
      }
      
      public static function §,c§(param1:String, param2:String) : void
      {
         §>V§ = §8-§;
         §=!6§ = param2;
         §3w§ = param1;
         §9!p§ = null;
      }
      
      public static function §!=§(param1:String) : void
      {
         §>V§ = §8-§;
         §3w§ = param1;
      }
      
      override protected function initLevelLoad() : void
      {
         if(§=!6§ != null && §=!6§.length > 0)
         {
            §"!i§.loadLevel(§=!6§,this.§[O§,this.§"!2§);
            §=!6§ = null;
         }
         else
         {
            this.initLevelMain(§9!p§);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §'!V§.§1!2§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         if(§3w§ != null)
         {
            mNextState = §3w§;
            §3w§ = null;
         }
         else
         {
            mNextState = StateLevelEditor.STATE_NAME;
         }
         §-!D§.§?5§("onLevelLoaded");
      }
      
      public function §[O§(param1:Object) : void
      {
         §9!p§ = §=J§.§%!G§(param1 as String);
         this.initLevelMain(§9!p§);
         var _loc2_:Object = JSON.parse(param1 as String);
         _loc2_.thumbnail = null;
         _loc2_.data = null;
         §-!D§.§?5§("onLevelChange",_loc2_);
      }
      
      override protected function initLevelMain(param1:§2! §) : void
      {
         super.initLevelMain(param1);
         if(param1 is §=J§)
         {
            §"U§.§=O§ = (param1 as §=J§).info;
            §=q§.§]!j§(param1 as §=J§);
         }
      }
      
      public function §"!2§() : void
      {
         §`![§.log("LEVEL LOAD FAILED!!");
      }
   }
}
