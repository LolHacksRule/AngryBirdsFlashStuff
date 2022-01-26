package § C§
{
   import §!%§.§=0§;
   import §!Y§.§[o§;
   import §&N§.§[-§;
   import §'V§.§>!8§;
   import §3"§.§&9§;
   import §3"§.§0$§;
   import §3"§.§8+§;
   
   public class §7!6§ extends §`m§
   {
      
      public static const §?B§:String = "LevelLoadStateClassic";
      
      private static var § !<§:Number;
      
      private static var §8!"§:§>!8§;
      
      private static var §0!5§:§=0§;
       
      
      public function §7!6§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §2v§() : void
      {
         §0$§.§;4§(§0$§.§?W§());
         §"E§ = §+E§;
      }
      
      public static function §[r§(param1:int) : void
      {
         §8Z§ = param1;
         §"E§ = §+E§;
      }
      
      public static function §<!G§() : void
      {
         if(§[o§.§='§.camera)
         {
            § !<§ = §[o§.§='§.camera.§=[§;
         }
         §"E§ = §+E§;
      }
      
      override public function deActivate() : void
      {
         if(§8!"§)
         {
            §8!"§.§2O§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§&9§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§8+§ = §0$§.§2Q§(§0$§.§[C§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§ !<§))
            {
               §[o§.§='§.camera.§&!7§(§ !<§);
               § !<§ = NaN;
            }
         }
         else
         {
            _loc2_ = §0$§.§,o§(§0$§.§[C§);
            if(_loc2_)
            {
               if(!§0!5§)
               {
                  §0!5§ = new §=0§();
               }
               if(!§8!"§)
               {
                  §8!"§ = new §>!8§();
                  _loc4_ = §"!G§.assetsUrl || "";
                  _loc5_ = §"!G§.buildNumber || "";
                  §8!"§.init(§[-§.§]B§(),_loc4_,_loc5_,§0!5§);
               }
               §8!"§.§9R§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §8!"§.§34§(<pack url="{_loc3_}"/>);
               §8!"§.§&q§(this.§]!9§);
            }
         }
      }
      
      protected function §]!9§() : void
      {
         var _loc1_:§8+§ = §0$§.§2Q§(§0$§.§[C§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§ !<§))
            {
               §[o§.§='§.camera.§&!7§(§ !<§);
               § !<§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §[o§.§='§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §[o§.§='§.§?^§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§<!$§();
      }
      
      protected function §<!$§() : String
      {
         return StatePlay.§?B§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §4t§.§?B§;
      }
   }
}
