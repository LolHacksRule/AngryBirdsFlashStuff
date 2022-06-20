package §<G§
{
   import §[!K§.§6!y§;
   
   public class §>T§ extends §6!y§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      public function §>T§(param1:Boolean = false, param2:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§ %§();
      }
      
      private function § %§() : void
      {
         §2"-§.getItemByName("Button_Share_Default").setVisibility(false);
         §2"-§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function getCutSceneState() : String
      {
         return §<i§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §0o§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §5w§.STATE_NAME;
      }
   }
}
