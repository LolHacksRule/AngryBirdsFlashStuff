package §-"i§
{
   import §#v§.§#!?§;
   import §'U§.§]#[§;
   import §,!=§.§!!]§;
   import §,!=§.§<!B§;
   import flash.events.Event;
   
   public class §5!o§ extends §!!]§
   {
      
      public static const STATE_NAME:String = "tournamentCutscene";
       
      
      public function §5!o§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      protected function getLevelSelectionState() : String
      {
         return §%!'§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §;"§.STATE_NAME;
      }
      
      override protected function end() : void
      {
         if(§=#j§)
         {
            §=#j§.removeEventListener(Event.COMPLETE,§##9§);
            §=#j§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(getCutSceneName() && getCutSceneName().toUpperCase().indexOf("OUTRO") != -1)
         {
            §<!B§.§+R§ = §5!o§.STATE_NAME;
            §7P§(this.getLevelSelectionState());
         }
         else
         {
            §'"d§();
         }
      }
   }
}
