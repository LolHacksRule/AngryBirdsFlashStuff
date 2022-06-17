package §7"@§
{
   import § "C§.§2"=§;
   import §#!e§.§1"B§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §?" §.§=!L§;
   import §]!>§.§1"%§;
   import §]!A§.;
   
   public class §!!7§ extends §@T§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §!!V§:Number;
      
      private static var §+!O§:§=!L§;
      
      private static var §!!i§:§1"%§;
       
      
      public function §!!7§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §,L§() : void
      {
         LevelManager.§-!4§(LevelManager.§6!M§());
         §;;§ = §6n§;
      }
      
      public static function §6!a§(param1:int) : void
      {
         §]N§ = param1;
         §;;§ = §6n§;
      }
      
      public static function §-V§() : void
      {
         if(§#6§.§6!z§.camera)
         {
            §!!V§ = §#6§.§6!z§.camera.§+!Z§;
         }
         §;;§ = §6n§;
      }
      
      override public function deActivate() : void
      {
         if(§+!O§)
         {
            §+!O§.§5l§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§>x§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§1"B§ = LevelManager.§1A§(LevelManager.§'!O§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§!!V§))
            {
               §#6§.§6!z§.camera.§&"&§(§!!V§);
               §!!V§ = NaN;
            }
         }
         else
         {
            _loc2_ = LevelManager.§^_§(LevelManager.§'!O§);
            if(_loc2_)
            {
               if(!§!!i§)
               {
                  §!!i§ = new §1"%§();
               }
               if(!§+!O§)
               {
                  §+!O§ = new §=!L§();
                  _loc4_ = §[U§.assetsUrl || "";
                  _loc5_ = §[U§.buildNumber || "";
                  §+!O§.init(§2"=§.§0!,§(),_loc4_,_loc5_,§!!i§);
               }
               §+!O§.§%!D§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §+!O§.§+9§(<pack url="{_loc3_}"/>);
               §+!O§.§@j§(this.§[!E§);
            }
         }
      }
      
      protected function §[!E§() : void
      {
         var _loc1_:§1"B§ = LevelManager.§1A§(LevelManager.§'!O§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§!!V§))
            {
               §#6§.§6!z§.camera.§&"&§(§!!V§);
               §!!V§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §#6§.§6!z§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §#6§.§6!z§.§"§;
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
         mNextState = §8"D§.STATE_NAME;
      }
   }
}
