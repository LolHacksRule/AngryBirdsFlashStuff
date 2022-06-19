package §[!K§
{
   import §"!4§.§1!m§;
   import §+I§.§9!%§;
   import §2!,§.§3!V§;
   import §9"%§.§?V§;
   import §[!z§.§!"=§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   
   public class §"c§ extends §8"9§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §%!n§:Number;
      
      private static var § #§:§1!m§;
      
      private static var §#!+§:§3!V§;
       
      
      public function §"c§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §^!8§() : void
      {
         LevelManager.§'!"§(LevelManager.§3$§());
         §%P§ = §1!V§;
      }
      
      public static function §'!;§(param1:int) : void
      {
         §5",§ = param1;
         §%P§ = §1!V§;
      }
      
      public static function §@!z§() : void
      {
         if(§9!%§.§!!M§.camera)
         {
            §%!n§ = §9!%§.§!!M§.camera.§<f§;
         }
         §%P§ = §1!V§;
      }
      
      override public function deActivate() : void
      {
         if(§ #§)
         {
            § #§.§5a§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§]f§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§!"=§ = LevelManager.§]!W§(LevelManager.§[!<§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§%!n§))
            {
               §9!%§.§!!M§.camera.§7!N§(§%!n§);
               §%!n§ = NaN;
            }
         }
         else
         {
            _loc2_ = LevelManager.§"!r§(LevelManager.§[!<§);
            if(_loc2_)
            {
               if(!§#!+§)
               {
                  §#!+§ = new §3!V§();
               }
               if(!§ #§)
               {
                  § #§ = new §1!m§();
                  _loc4_ = § R§.assetsUrl || "";
                  _loc5_ = § R§.buildNumber || "";
                  § #§.init(§?V§.§9§(),_loc4_,_loc5_,§#!+§);
               }
               § #§.§9Z§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               § #§.§0!b§(<pack url="{_loc3_}"/>);
               § #§.§7?§(this.§3!8§);
            }
         }
      }
      
      protected function §3!8§() : void
      {
         var _loc1_:§!"=§ = LevelManager.§]!W§(LevelManager.§[!<§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§%!n§))
            {
               §9!%§.§!!M§.camera.§7!N§(§%!n§);
               §%!n§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §9!%§.§!!M§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §9!%§.§!!M§.§?!F§;
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
         mNextState = §=B§.STATE_NAME;
      }
   }
}
