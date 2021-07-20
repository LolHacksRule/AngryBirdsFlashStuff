package §2!U§
{
   import §"!i§.§"!'§;
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §-^§.§?7§;
   import §-o§.§4w§;
   import §;!y§.§,!s§;
   import §]!+§.§5!1§;
   
   public class §3!;§ extends §]W§
   {
      
      public static const §'!q§:String = "LevelLoadStateClassic";
      
      private static var §2!Q§:Number;
      
      private static var §3z§:§4w§;
      
      private static var §!w§:§5!1§;
       
      
      public function §3!;§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §9!G§() : void
      {
         LevelManager.§`!O§(LevelManager.§8`§());
         §77§ = §#O§;
      }
      
      public static function §5!f§(param1:int) : void
      {
         §>a§ = param1;
         §77§ = §#O§;
      }
      
      public static function §0!1§() : void
      {
         if(§,!s§.§=!I§.camera)
         {
            §2!Q§ = §,!s§.§=!I§.camera.§0l§;
         }
         §77§ = §#O§;
      }
      
      override public function deActivate() : void
      {
         if(§3z§)
         {
            §3z§.§]!@§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§8K§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§"!'§ = LevelManager.§"!l§(LevelManager.§"L§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§2!Q§))
            {
               §,!s§.§=!I§.camera.§!!7§(§2!Q§);
               §2!Q§ = NaN;
            }
         }
         else
         {
            _loc2_ = LevelManager.§`r§(LevelManager.§"L§);
            if(_loc2_)
            {
               if(!§!w§)
               {
                  §!w§ = new §5!1§();
               }
               if(!§3z§)
               {
                  §3z§ = new §4w§();
                  _loc4_ = §?!4§.assetsUrl || "";
                  _loc5_ = §?!4§.buildNumber || "";
                  §3z§.init(§?7§.§7h§(),_loc4_,_loc5_,§!w§);
               }
               §3z§.§5@§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §3z§.§&!D§(<pack url="{_loc3_}"/>);
               §3z§.§!e§(this.§"a§);
            }
         }
      }
      
      protected function §"a§() : void
      {
         var _loc1_:§"!'§ = LevelManager.§"!l§(LevelManager.§"L§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§2!Q§))
            {
               §,!s§.§=!I§.camera.§!!7§(§2!Q§);
               §2!Q§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §,!s§.§=!I§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §,!s§.§=!I§.§+T§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§>!A§();
      }
      
      protected function §>!A§() : String
      {
         return StatePlay.§'!q§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §2!=§.§'!q§;
      }
   }
}
