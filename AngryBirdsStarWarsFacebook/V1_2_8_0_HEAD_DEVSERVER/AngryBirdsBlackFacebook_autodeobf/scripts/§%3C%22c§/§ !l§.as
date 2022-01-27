package §<"c§
{
   import §#!'§.§6"]§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class § !l§ extends §&"3§
   {
       
      
      public function § !l§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function startCutScene() : void
      {
         super.startCutScene();
         §@!m§(§,!q§.§>#D§).§""s§.showTotalScores(true);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §6"]§.§'7§("cutscene-" + _loc2_);
      }
   }
}
