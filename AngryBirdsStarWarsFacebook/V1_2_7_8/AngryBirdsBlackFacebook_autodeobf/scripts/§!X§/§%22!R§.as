package §!X§
{
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §0R§.§0!8§;
   import com.angrybirds.§;!e§;
   import flash.events.Event;
   
   public class §"!R§ extends §7"Q§
   {
       
      
      public function §"!R§(param1:§7!m§, param2:§="B§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function startCutScene() : void
      {
         super.startCutScene();
         §&"1§(§;!e§.§6!v§).§`!u§.showTotalScores(true);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §0!8§.§@!e§("cutscene-" + _loc2_);
      }
   }
}
