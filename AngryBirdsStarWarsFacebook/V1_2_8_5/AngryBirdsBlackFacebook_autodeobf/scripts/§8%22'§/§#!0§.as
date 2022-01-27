package §8"'§
{
   import §!b§.§]!s§;
   import §%"Q§.StateCutScene;
   import §&!j§.§5#+§;
   import flash.events.Event;
   import §null §.§5#§;
   
   public class §#!0§ extends StateCutScene
   {
      
      public static const §-!U§:String = "tournamentCutscene";
       
      
      public function §#!0§(param1:§5#§, param2:§5#+§, param3:Boolean = true, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function getLevelLoadState() : String
      {
         return §-0§.§-!U§;
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §]!s§.§#!g§("cutscene-" + _loc2_);
      }
   }
}
