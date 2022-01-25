package
{
   import §%!5§.§7;§;
   import §-!F§.§2[§;
   
   public class §"e§ extends §8!,§
   {
      
      public static const §[!1§:String = "LevelLoadStateClassic";
      
      private static var §=<§:Number;
      
      private static var §!]§:String = StatePlay.§[!1§;
       
      
      public function §"e§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §=!8§() : void
      {
         §2[§.§'!T§(§2[§.§+G§());
         §0I§ = §@!_§;
      }
      
      public static function §+!U§(param1:int) : void
      {
         §^$§ = param1;
         §0I§ = §@!_§;
      }
      
      public static function §`!"§() : void
      {
         if(§7;§.§1h§.camera)
         {
            §=<§ = §7;§.§1h§.camera.manualScale;
         }
         §0I§ = §@!_§;
      }
      
      public static function get §[r§() : String
      {
         return §!]§;
      }
      
      public static function set §[r§(param1:String) : void
      {
         §!]§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §[F§(§2[§.§'M§(§2[§.§^N§));
         if(!isNaN(§=<§))
         {
            §7;§.§1h§.camera.§6M§(§=<§);
            §=<§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§!]§ == §6!F§.§[!1§)
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
         return §7;§.§1h§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §!]§;
      }
   }
}
