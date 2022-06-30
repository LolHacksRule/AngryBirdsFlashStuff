package §97§
{
   import §3-§.§1L§;
   import §=X§.§7!4§;
   
   public class §]!X§ extends §6o§
   {
      
      public static const §4l§:String = "LevelLoadStateClassic";
      
      private static var §@!0§:Number;
      
      private static var §!!9§:String = StatePlay.§4l§;
       
      
      public function §]!X§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §!U§() : void
      {
         §7!4§.§^!>§(§7!4§.§2!K§());
         §0!b§ = §2@§;
      }
      
      public static function §@!A§(param1:int) : void
      {
         §2x§ = param1;
         §0!b§ = §2@§;
      }
      
      public static function §6$§() : void
      {
         if(§1L§.§"f§.camera)
         {
            §@!0§ = §1L§.§"f§.camera.manualScale;
         }
         §0!b§ = §2@§;
      }
      
      public static function get §]!?§() : String
      {
         return §!!9§;
      }
      
      public static function set §]!?§(param1:String) : void
      {
         §!!9§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §0N§(§7!4§.§,&§(§7!4§.§"P§));
         if(!isNaN(§@!0§))
         {
            §1L§.§"f§.camera.§,!#§(§@!0§);
            §@!0§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(false);
         if(§!!9§ == §1j§.§4l§ || §!!9§ == §3A§.§4l§)
         {
            §?P§.getItemByName("Button_Tutorial").setVisibility(false);
            §?P§.getItemByName("Button_Credits").setVisibility(true);
            sHighscoreSidebar.enableCreditsButton(false);
         }
         else
         {
            §?P§.getItemByName("Button_Tutorial").setVisibility(true);
            §?P§.getItemByName("Button_Credits").setVisibility(false);
            sHighscoreSidebar.enableHelpButton(false);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §1L§.§"f§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §!!9§;
      }
   }
}
