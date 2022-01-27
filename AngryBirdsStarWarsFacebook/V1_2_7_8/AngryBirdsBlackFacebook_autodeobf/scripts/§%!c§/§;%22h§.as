package §%!c§
{
   import §!X§.StateCutScene;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §0R§.§0!8§;
   import flash.events.Event;
   
   public class §;"h§ extends StateCutScene
   {
      
      public static const §'#2§:String = "tournamentCutscene";
       
      
      public function §;"h§(param1:§7!m§, param2:§="B§, param3:Boolean = true, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function getLevelLoadState() : String
      {
         return §4"O§.§'#2§;
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §0!8§.§@!e§("cutscene-" + _loc2_);
      }
   }
}
