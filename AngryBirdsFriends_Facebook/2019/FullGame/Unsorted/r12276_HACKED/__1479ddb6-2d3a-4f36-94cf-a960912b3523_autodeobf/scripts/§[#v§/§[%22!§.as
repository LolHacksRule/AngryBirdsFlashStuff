package §[#v§
{
   import § #_§.§?!>§;
   import §?o§.§4#?§;
   import §^1§.§3#P§;
   import §^1§.§;O§;
   import flash.events.Event;
   
   public class §["!§ extends §3#P§
   {
      
      public static const STATE_NAME:String = "tournamentCutscene";
       
      
      public function §["!§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      protected function getLevelSelectionState() : String
      {
         return §4e§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §'"b§.STATE_NAME;
      }
      
      override protected function end() : void
      {
         if(§4!g§)
         {
            §4!g§.removeEventListener(Event.COMPLETE,§2#l§);
            §4!g§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(getCutSceneName() && getCutSceneName().toUpperCase().indexOf("OUTRO") != -1)
         {
            §;O§.§+#J§ = §["!§.STATE_NAME;
            §%!?§(this.getLevelSelectionState());
         }
         else
         {
            §'%§();
         }
      }
   }
}
