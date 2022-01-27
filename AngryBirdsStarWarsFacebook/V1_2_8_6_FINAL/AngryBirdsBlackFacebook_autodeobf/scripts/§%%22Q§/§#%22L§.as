package §%"Q§
{
   import §!b§.§]!s§;
   import §&!j§.§5#+§;
   import com.angrybirds.§<!J§;
   import flash.events.Event;
   import §null §.§5#§;
   
   public class §#"L§ extends §,S§
   {
       
      
      public function §#"L§(param1:§5#§, param2:§5#+§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function startCutScene() : void
      {
         super.startCutScene();
         §throw§(§<!J§.§#!L§).§?"T§.showTotalScores(true);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §]!s§.§#!g§("cutscene-" + _loc2_);
      }
   }
}
