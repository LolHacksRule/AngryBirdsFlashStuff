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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function startCutScene() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.startCutScene();
         }
         do
         {
            §@!m§(§,!q§.§>#D§).§""s§.showTotalScores(true);
         }
         while(!_loc2_);
         
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.onCutSceneNotAvailable(param1);
         }
         var _loc2_:String = getCutSceneName();
         if(_loc4_)
         {
            §6"]§.§'7§("cutscene-" + _loc2_);
         }
      }
   }
}
