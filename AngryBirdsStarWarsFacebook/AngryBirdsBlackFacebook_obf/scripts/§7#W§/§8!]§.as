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
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!7§ = "tournamentCutscene";
         }
      }
      
      public function §8!]§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "tournamentCutscene")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function getLevelLoadState() : String
      {
         return §2O§.§^!7§;
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.onCutSceneNotAvailable(param1);
         }
         var _loc2_:String = getCutSceneName();
         if(_loc3_ || param1)
         {
            §6"]§.§'7§("cutscene-" + _loc2_);
         }
      }
   }
}
