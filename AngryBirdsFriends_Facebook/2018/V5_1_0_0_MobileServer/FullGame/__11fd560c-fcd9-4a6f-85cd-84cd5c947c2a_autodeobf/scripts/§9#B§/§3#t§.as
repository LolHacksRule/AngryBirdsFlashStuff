package §9#B§
{
   import §"!@§.§1S§;
   import §"!@§.§`"^§;
   import §5P§.§""C§;
   import §;$3§.§8=§;
   import flash.events.Event;
   
   public class §3#t§ extends §`"^§
   {
      
      public static const STATE_NAME:String = "tournamentCutscene";
       
      
      public function §3#t§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      protected function getLevelSelectionState() : String
      {
         return §=!L§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §+y§.STATE_NAME;
      }
      
      override protected function end() : void
      {
         if(§@!!§)
         {
            §@!!§.removeEventListener(Event.COMPLETE,§8![§);
            §@!!§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(getCutSceneName() && getCutSceneName().toUpperCase().indexOf("OUTRO") != -1)
         {
            §1S§.§!!d§ = §3#t§.STATE_NAME;
            §1"h§(this.getLevelSelectionState());
         }
         else
         {
            §<L§();
         }
      }
   }
}
