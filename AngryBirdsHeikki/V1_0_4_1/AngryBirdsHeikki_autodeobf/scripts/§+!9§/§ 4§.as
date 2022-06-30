package §+!9§
{
   import §,J§.§7!A§;
   import §?!P§.§@@§;
   
   public class § 4§ extends §=B§
   {
      
      public static const §6! §:String = "LevelLoadStateClassic";
      
      private static var §>s§:Number;
      
      private static var §?>§:String = StatePlay.§6! §;
       
      
      public function § 4§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §1%§() : void
      {
         §7!A§.§get §(§7!A§.§5R§());
         §]!W§ = §1!H§;
      }
      
      public static function §"<§(param1:int) : void
      {
         §;!4§ = param1;
         §]!W§ = §1!H§;
      }
      
      public static function §13§() : void
      {
         if(§@@§.§ !8§.camera)
         {
            §>s§ = §@@§.§ !8§.camera.manualScale;
         }
         §]!W§ = §1!H§;
      }
      
      public static function get §=D§() : String
      {
         return §?>§;
      }
      
      public static function set §=D§(param1:String) : void
      {
         §?>§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §@s§(§7!A§.§5!O§(§7!A§.§ !A§));
         if(!isNaN(§>s§))
         {
            §@@§.§ !8§.camera.§!g§(§>s§);
            §>s§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(false);
         if(§?>§ == §0!M§.§6! § || §?>§ == §5!$§.§6! §)
         {
            §2!M§.getItemByName("Button_Tutorial").setVisibility(false);
            §2!M§.getItemByName("Button_Credits").setVisibility(true);
            sHighscoreSidebar.enableCreditsButton(false);
         }
         else
         {
            §2!M§.getItemByName("Button_Tutorial").setVisibility(true);
            §2!M§.getItemByName("Button_Credits").setVisibility(false);
            sHighscoreSidebar.enableHelpButton(false);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §@@§.§ !8§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §?>§;
      }
   }
}
