package §!!L§
{
   import §+`§.§%"q§;
   import §7#$§.§]#q§;
   import §]§.§#!$§;
   import §]§.§?!E§;
   import flash.events.Event;
   
   public class §@<§ extends §?!E§
   {
      
      public static const STATE_NAME:String = "tournamentCutscene";
       
      
      public function §@<§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      protected function getLevelSelectionState() : String
      {
         return § !8§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §=$3§.STATE_NAME;
      }
      
      override protected function end() : void
      {
         if(§;t§)
         {
            §;t§.removeEventListener(Event.COMPLETE,§@"x§);
            §;t§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(getCutSceneName() && getCutSceneName().toUpperCase().indexOf("OUTRO") != -1)
         {
            §#!$§.§!"Q§ = §@<§.STATE_NAME;
            §3#§(this.getLevelSelectionState());
         }
         else
         {
            §^!h§();
         }
      }
   }
}
