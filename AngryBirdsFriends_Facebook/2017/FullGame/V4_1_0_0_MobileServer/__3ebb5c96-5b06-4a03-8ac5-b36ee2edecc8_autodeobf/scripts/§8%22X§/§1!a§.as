package §8"X§
{
   import §&$!§.§+#!§;
   import §94§.§%"5§;
   import §94§.§7!c§;
   import §@#§.§^#Q§;
   import flash.events.Event;
   
   public class §1!a§ extends §%"5§
   {
      
      public static const STATE_NAME:String = "tournamentCutscene";
       
      
      public function §1!a§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      protected function getLevelSelectionState() : String
      {
         return §^!E§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §`$>§.STATE_NAME;
      }
      
      override protected function end() : void
      {
         if(§#!<§)
         {
            §#!<§.removeEventListener(Event.COMPLETE,§@"x§);
            §#!<§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(getCutSceneName() && getCutSceneName().toUpperCase().indexOf("OUTRO") != -1)
         {
            §7!c§.§<r§ = §1!a§.STATE_NAME;
            §5"p§(this.getLevelSelectionState());
         }
         else
         {
            §%!,§();
         }
      }
   }
}
