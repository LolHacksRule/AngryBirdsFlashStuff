package §7#W§
{
   import §#!'§.§6"]§;
   import §<"c§.StateCutScene;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import flash.events.Event;
   
   public class §8!]§ extends StateCutScene
   {
      
      public static const §^!7§:String = "tournamentCutscene";
       
      
      public function §8!]§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function getLevelLoadState() : String
      {
         return §2O§.§^!7§;
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §6"]§.§'7§("cutscene-" + _loc2_);
      }
   }
}
