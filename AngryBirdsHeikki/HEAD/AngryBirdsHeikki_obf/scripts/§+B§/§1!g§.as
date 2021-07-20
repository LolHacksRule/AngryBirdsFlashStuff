package §+B§
{
   import §7e§.§#w§;
   import §8O§.§&#§;
   
   public class §1!g§ extends §?!L§
   {
      
      public static const §[!%§:String = "LevelLoadStateClassic";
      
      private static var §<![§:Number;
      
      private static var §9T§:String = StatePlay.§[!%§;
       
      
      public function §1!g§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §]M§() : void
      {
         §#w§.§8>§(§#w§.§7$§());
         §5g§ = §&U§;
      }
      
      public static function §?!C§(param1:int) : void
      {
         §0H§ = param1;
         §5g§ = §&U§;
      }
      
      public static function §3!4§() : void
      {
         if(§&#§.§3!D§.camera)
         {
            §<![§ = §&#§.§3!D§.camera.manualScale;
         }
         §5g§ = §&U§;
      }
      
      public static function get §9!F§() : String
      {
         return §9T§;
      }
      
      public static function set §9!F§(param1:String) : void
      {
         §9T§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §&!N§(§#w§.§;!E§(§#w§.§ !'§));
         if(!isNaN(§<![§))
         {
            §&#§.§3!D§.camera.§`!M§(§<![§);
            §<![§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(false);
         if(§9T§ == §#!b§.§[!%§ || §9T§ == §;Q§.§[!%§)
         {
            § ,§.getItemByName("Button_Tutorial").setVisibility(false);
            § ,§.getItemByName("Button_Credits").setVisibility(true);
            sHighscoreSidebar.enableCreditsButton(false);
         }
         else
         {
            § ,§.getItemByName("Button_Tutorial").setVisibility(true);
            § ,§.getItemByName("Button_Credits").setVisibility(false);
            sHighscoreSidebar.enableHelpButton(false);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §&#§.§3!D§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §9T§;
      }
   }
}
