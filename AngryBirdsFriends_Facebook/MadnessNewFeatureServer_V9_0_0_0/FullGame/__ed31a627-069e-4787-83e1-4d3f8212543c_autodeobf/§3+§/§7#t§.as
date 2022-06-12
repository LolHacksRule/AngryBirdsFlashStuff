package §3+§
{
   import § !j§.§4#c§;
   import §,"v§.§;"n§;
   import §2";§.§1$2§;
   import §2";§.§9§;
   import flash.events.Event;
   
   public class §7#t§ extends §1$2§
   {
      
      public static const STATE_NAME:String = "tournamentCutscene";
       
      
      public function §7#t§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      protected function getLevelSelectionState() : String
      {
         return §;!H§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §+">§.STATE_NAME;
      }
      
      override protected function end() : void
      {
         if(§<#`§)
         {
            §<#`§.removeEventListener(Event.COMPLETE,§9"R§);
            §<#`§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(getCutSceneName() && getCutSceneName().toUpperCase().indexOf("OUTRO") != -1)
         {
            §9#7§.§>#y§ = §7#t§.STATE_NAME;
            §1!L§(this.getLevelSelectionState());
         }
         else
         {
            §!"z§();
         }
      }
   }
}
