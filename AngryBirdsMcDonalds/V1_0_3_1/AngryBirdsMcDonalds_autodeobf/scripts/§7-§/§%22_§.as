package §7-§
{
   import § !Y§.§2#§;
   import §finally§.§8k§;
   
   public class §"_§ extends §3,§
   {
      
      public static const §<@§:String = "LevelLoadStateClassic";
      
      private static var §9b§:Number;
      
      private static var § ,§:String = StatePlay.§<@§;
       
      
      public function §"_§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §@<§() : void
      {
         §8k§.§;z§(§8k§.§4!c§());
         §@!o§ = §9!;§;
      }
      
      public static function §4+§(param1:int) : void
      {
         §^v§ = param1;
         §@!o§ = §9!;§;
      }
      
      public static function § !D§() : void
      {
         if(§2#§.§"@§.camera)
         {
            §9b§ = §2#§.§"@§.camera.manualScale;
         }
         §@!o§ = §9!;§;
      }
      
      public static function get §@!m§() : String
      {
         return § ,§;
      }
      
      public static function set §@!m§(param1:String) : void
      {
         § ,§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §=u§(§8k§.§7v§(§8k§.§8h§));
         if(!isNaN(§9b§))
         {
            §2#§.§"@§.camera.§%!I§(§9b§);
            §9b§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§ ,§ == §+!c§.§<@§)
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
         return §2#§.§"@§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = § ,§;
      }
   }
}
