package §[,§
{
   import §#!T§.§&2§;
   import §0!&§.§@=§;
   
   public class §4!M§ extends §"!"§
   {
      
      public static const §+Z§:String = "LevelLoadStateClassic";
      
      private static var §0P§:Number;
      
      private static var §#Z§:String = StatePlay.§+Z§;
       
      
      public function §4!M§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §@!d§() : void
      {
         §@=§.§-!Q§(§@=§.§1+§());
         §,!a§ = §<! §;
      }
      
      public static function §7t§(param1:int) : void
      {
         §!!4§ = param1;
         §,!a§ = §<! §;
      }
      
      public static function §>5§() : void
      {
         if(§&2§.§4!1§.camera)
         {
            §0P§ = §&2§.§4!1§.camera.manualScale;
         }
         §,!a§ = §<! §;
      }
      
      public static function get §!`§() : String
      {
         return §#Z§;
      }
      
      public static function set §!`§(param1:String) : void
      {
         §#Z§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §2!b§(§@=§.§'%§(§@=§.§!!S§));
         if(!isNaN(§0P§))
         {
            §&2§.§4!1§.camera.§<!<§(§0P§);
            §0P§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(false);
         if(§#Z§ == §3!<§.§+Z§ || §#Z§ == §+D§.§+Z§)
         {
            §[L§.getItemByName("Button_Tutorial").setVisibility(false);
            §[L§.getItemByName("Button_Credits").setVisibility(true);
            sHighscoreSidebar.enableCreditsButton(false);
         }
         else
         {
            §[L§.getItemByName("Button_Tutorial").setVisibility(true);
            §[L§.getItemByName("Button_Credits").setVisibility(false);
            sHighscoreSidebar.enableHelpButton(false);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §&2§.§4!1§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §#Z§;
      }
   }
}
