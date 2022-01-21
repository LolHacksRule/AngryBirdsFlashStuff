package §[l§
{
   import §#M§.§+!Z§;
   import §7_§.§^d§;
   
   public class §26§ extends §-!T§
   {
      
      public static const §!_§:String = "LevelLoadStateClassic";
      
      private static var §@!2§:Number;
      
      private static var §[!"§:String = StatePlay.§!_§;
       
      
      public function §26§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §;!J§() : void
      {
         §^d§.§^N§(§^d§.§3!B§());
         §<P§ = §!!Z§;
      }
      
      public static function §=w§(param1:int) : void
      {
         §1;§ = param1;
         §<P§ = §!!Z§;
      }
      
      public static function §4;§() : void
      {
         if(§+!Z§.§?!<§.camera)
         {
            §@!2§ = §+!Z§.§?!<§.camera.manualScale;
         }
         §<P§ = §!!Z§;
      }
      
      public static function get §`!,§() : String
      {
         return §[!"§;
      }
      
      public static function set §`!,§(param1:String) : void
      {
         §[!"§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §>t§(§^d§.§'!J§(§^d§.§@P§));
         if(!isNaN(§@!2§))
         {
            §+!Z§.§?!<§.camera.§0!d§(§@!2§);
            §@!2§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§[!"§ == §+l§.§!_§)
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
         return §+!Z§.§?!<§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §[!"§;
      }
   }
}
