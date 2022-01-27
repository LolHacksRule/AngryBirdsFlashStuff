package §function§
{
   import §8! §.§#z§;
   import §>!F§.§9!Z§;
   
   public class §8E§ extends § S§
   {
      
      public static const §94§:String = "LevelLoadStateClassic";
      
      private static var §@!`§:Number;
      
      private static var §1!C§:String = StatePlay.§94§;
       
      
      public function §8E§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §=!A§() : void
      {
         §#z§.§[6§(§#z§.§5!@§());
         §>9§ = §9I§;
      }
      
      public static function §^!=§(param1:int) : void
      {
         §2!e§ = param1;
         §>9§ = §9I§;
      }
      
      public static function §1$§() : void
      {
         if(§9!Z§.§5!$§.camera)
         {
            §@!`§ = §9!Z§.§5!$§.camera.manualScale;
         }
         §>9§ = §9I§;
      }
      
      public static function get §8c§() : String
      {
         return §1!C§;
      }
      
      public static function set §8c§(param1:String) : void
      {
         §1!C§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §>z§(§#z§.§2!>§(§#z§.§@k§));
         if(!isNaN(§@!`§))
         {
            §9!Z§.§5!$§.camera.§!d§(§@!`§);
            §@!`§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(false);
         if(§1!C§ == §'"§.§94§ || §1!C§ == §-!I§.§94§)
         {
            §@K§.getItemByName("Button_Tutorial").setVisibility(false);
            §@K§.getItemByName("Button_Credits").setVisibility(true);
            sHighscoreSidebar.enableCreditsButton(false);
         }
         else
         {
            §@K§.getItemByName("Button_Tutorial").setVisibility(true);
            §@K§.getItemByName("Button_Credits").setVisibility(false);
            sHighscoreSidebar.enableHelpButton(false);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §9!Z§.§5!$§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §1!C§;
      }
   }
}
