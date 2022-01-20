package §5!W§
{
   import §,4§.§;_§;
   import §7F§.§2M§;
   
   public class §[Z§ extends §%E§
   {
      
      public static const §>d§:String = "LevelLoadStateClassic";
      
      private static var §"![§:Number;
      
      private static var §;!0§:String = StatePlay.§>d§;
       
      
      public function §[Z§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §=G§() : void
      {
         §;_§.§;!M§(§;_§.§]!h§());
         §-_§ = §0!'§;
      }
      
      public static function §6!R§(param1:int) : void
      {
         §'X§ = param1;
         §-_§ = §0!'§;
      }
      
      public static function §>-§() : void
      {
         if(§2M§.§1?§.camera)
         {
            §"![§ = §2M§.§1?§.camera.manualScale;
         }
         §-_§ = §0!'§;
      }
      
      public static function get §&l§() : String
      {
         return §;!0§;
      }
      
      public static function set §&l§(param1:String) : void
      {
         §;!0§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §!P§(§;_§.§`!,§(§;_§.§2!Q§));
         if(!isNaN(§"![§))
         {
            §2M§.§1?§.camera.§^u§(§"![§);
            §"![§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§;!0§ == §!E§.§>d§)
         {
            mUIView.getItemByName("Button_Tutorial").setVisibility(false);
            mUIView.getItemByName("Button_Credits").setVisibility(true);
            sHighscoreSidebar.enableCreditsButton(false);
         }
         else
         {
            mUIView.getItemByName("Button_Tutorial").setVisibility(true);
            mUIView.getItemByName("Button_Credits").setVisibility(false);
            sHighscoreSidebar.enableHelpButton(false);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §2M§.§1?§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §;!0§;
      }
   }
}
