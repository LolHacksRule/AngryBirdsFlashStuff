package §'!O§
{
   import §9b§.§"!S§;
   import §^!5§.§,4§;
   
   public class §<r§ extends §2!U§
   {
      
      public static const §@o§:String = "LevelLoadStateClassic";
      
      private static var §93§:Number;
      
      private static var §^!B§:String = StatePlay.§@o§;
       
      
      public function §<r§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §4=§() : void
      {
         §,4§.§&O§(§,4§.§;!4§());
         §9q§ = §4f§;
      }
      
      public static function §5Y§(param1:int) : void
      {
         §3!6§ = param1;
         §9q§ = §4f§;
      }
      
      public static function §0^§() : void
      {
         if(§"!S§.§-!7§.camera)
         {
            §93§ = §"!S§.§-!7§.camera.manualScale;
         }
         §9q§ = §4f§;
      }
      
      public static function get §>!D§() : String
      {
         return §^!B§;
      }
      
      public static function set §>!D§(param1:String) : void
      {
         §^!B§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §8!@§(§,4§.§6W§(§,4§.§0!$§));
         if(!isNaN(§93§))
         {
            §"!S§.§-!7§.camera.§5s§(§93§);
            §93§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(false);
         if(§^!B§ == §#!_§.§@o§ || §^!B§ == §0L§.§@o§)
         {
            §]!9§.getItemByName("Button_Tutorial").setVisibility(false);
            §]!9§.getItemByName("Button_Credits").setVisibility(true);
            sHighscoreSidebar.enableCreditsButton(false);
         }
         else
         {
            §]!9§.getItemByName("Button_Tutorial").setVisibility(true);
            §]!9§.getItemByName("Button_Credits").setVisibility(false);
            sHighscoreSidebar.enableHelpButton(false);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §"!S§.§-!7§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §^!B§;
      }
   }
}
