package §;u§
{
   import §#"A§.§'"U§;
   import §,l§.§0z§;
   import §2<§.§8M§;
   import §9!n§.§0"T§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   
   public class §-!v§ extends §4"2§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var § !;§:Number;
      
      private static var §#q§:§'"U§;
      
      private static var § ""§:§0z§;
       
      
      public function §-!v§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §>"@§() : void
      {
         LevelManager.§,!m§(LevelManager.§8t§());
         §,"K§ = §4!I§;
      }
      
      public static function §-2§(param1:int) : void
      {
         §7!I§ = param1;
         §,"K§ = §4!I§;
      }
      
      public static function §^!$§() : void
      {
         if(§?l§.§'h§.camera)
         {
            § !;§ = §?l§.§'h§.camera.§=!r§;
         }
         §,"K§ = §4!I§;
      }
      
      override public function deActivate() : void
      {
         if(§#q§)
         {
            §#q§.§8!`§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§3-§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§0"T§ = LevelManager.§ "§(LevelManager.§ T§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§ !;§))
            {
               §?l§.§'h§.camera.§#"8§(§ !;§);
               § !;§ = NaN;
            }
         }
         else
         {
            _loc2_ = LevelManager.§5!T§(LevelManager.§ T§);
            if(_loc2_)
            {
               if(!§ ""§)
               {
                  § ""§ = new §0z§();
               }
               if(!§#q§)
               {
                  §#q§ = new §'"U§();
                  _loc4_ = §!"R§.assetsUrl || "";
                  _loc5_ = §!"R§.buildNumber || "";
                  §#q§.init(§8M§.§+!y§(),_loc4_,_loc5_,§ ""§);
               }
               §#q§.§3!,§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §#q§.§!x§(<pack url="{_loc3_}"/>);
               §#q§.§+g§(this.§<";§);
            }
         }
      }
      
      protected function §<";§() : void
      {
         var _loc1_:§0"T§ = LevelManager.§ "§(LevelManager.§ T§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§ !;§))
            {
               §?l§.§'h§.camera.§#"8§(§ !;§);
               § !;§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §?l§.§'h§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §?l§.§'h§.§="D§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.getPlayState();
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §9"@§.STATE_NAME;
      }
   }
}
