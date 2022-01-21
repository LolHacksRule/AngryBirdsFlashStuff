package §%<§
{
   import §2o§.§<H§;
   import §`!d§.§7!§;
   
   public class §%!$§ extends §]i§
   {
      
      public static const §<P§:String = "LevelLoadStateClassic";
      
      private static var §1P§:Number;
      
      private static var §^G§:String = StatePlay.§<P§;
       
      
      public function §%!$§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §?!9§() : void
      {
         §7!§.§>!R§(§7!§.§<n§());
         §"D§ = §44§;
      }
      
      public static function §>!F§(param1:int) : void
      {
         §'o§ = param1;
         §"D§ = §44§;
      }
      
      public static function §^!?§() : void
      {
         if(§<H§.§=3§.camera)
         {
            §1P§ = §<H§.§=3§.camera.manualScale;
         }
         §"D§ = §44§;
      }
      
      public static function get §`1§() : String
      {
         return §^G§;
      }
      
      public static function set §`1§(param1:String) : void
      {
         §^G§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §4!U§(§7!§.§;!G§(§7!§.§+e§));
         if(!isNaN(§1P§))
         {
            §<H§.§=3§.camera.§5!I§(§1P§);
            §1P§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§^G§ == §8!Z§.§<P§)
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
         return §<H§.§=3§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §^G§;
      }
   }
}
