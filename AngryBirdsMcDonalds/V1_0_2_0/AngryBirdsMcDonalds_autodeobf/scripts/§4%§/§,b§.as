package §4%§
{
   import §+-§.§3!5§;
   import §9!W§.§=!@§;
   
   public class §,b§ extends §&c§
   {
      
      public static const §4D§:String = "LevelLoadStateClassic";
      
      private static var §0p§:Number;
      
      private static var §+!2§:String = StatePlay.§4D§;
       
      
      public function §,b§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §[K§() : void
      {
         §3!5§.§[C§(§3!5§.§@!4§());
         §&!i§ = §;<§;
      }
      
      public static function §`%§(param1:int) : void
      {
         §7w§ = param1;
         §&!i§ = §;<§;
      }
      
      public static function §1i§() : void
      {
         if(§=!@§.§>!T§.camera)
         {
            §0p§ = §=!@§.§>!T§.camera.manualScale;
         }
         §&!i§ = §;<§;
      }
      
      public static function get §<A§() : String
      {
         return §+!2§;
      }
      
      public static function set §<A§(param1:String) : void
      {
         §+!2§ = param1;
      }
      
      override public function initLevelLoad() : void
      {
         §=!-§(§3!5§.§ !R§(§3!5§.§-!2§));
         if(!isNaN(§0p§))
         {
            §=!@§.§>!T§.camera.§[l§(§0p§);
            §0p§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         if(§+!2§ == §^!O§.§4D§)
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
         return §=!@§.§>!T§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = §+!2§;
      }
   }
}
