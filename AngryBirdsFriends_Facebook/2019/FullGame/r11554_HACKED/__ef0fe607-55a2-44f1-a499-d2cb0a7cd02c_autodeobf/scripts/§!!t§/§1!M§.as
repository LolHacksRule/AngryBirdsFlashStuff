package §!!t§
{
   import §"$=§.§'![§;
   import §3"G§.§16§;
   import §3=§.§3n§;
   import §3=§.§8$8§;
   import flash.events.Event;
   
   public class §1!M§ extends §3n§
   {
      
      public static const STATE_NAME:String = "tournamentCutscene";
       
      
      public function §1!M§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      protected function getLevelSelectionState() : String
      {
         return §'8§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §8!k§.STATE_NAME;
      }
      
      override protected function end() : void
      {
         if(§1#>§)
         {
            §1#>§.removeEventListener(Event.COMPLETE,§5#R§);
            §1#>§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(getCutSceneName() && getCutSceneName().toUpperCase().indexOf("OUTRO") != -1)
         {
            §8$8§.§[">§ = §1!M§.STATE_NAME;
            §%D§(this.getLevelSelectionState());
         }
         else
         {
            §,#k§();
         }
      }
   }
}
