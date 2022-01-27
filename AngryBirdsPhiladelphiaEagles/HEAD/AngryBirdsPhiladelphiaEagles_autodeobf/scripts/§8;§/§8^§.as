package §8;§
{
   import §0!D§.§5$§;
   import §4!6§.§8Y§;
   import §<!F§.§5!+§;
   import §?!;§.§6H§;
   import §?!;§.§;!,§;
   import §?!;§.§;h§;
   import §@!%§.§-!;§;
   
   public class §8^§ extends §1b§
   {
      
      public static const §"Z§:String = "LevelLoadStateClassic";
      
      private static var §1O§:Number;
      
      private static var §]e§:§5$§;
      
      private static var §7M§:§8Y§;
       
      
      public function §8^§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §&!O§() : void
      {
         §6H§.§#L§(§6H§.§ O§());
         §#!>§ = § !+§;
      }
      
      public static function §6B§(param1:int) : void
      {
         §8!2§ = param1;
         §#!>§ = § !+§;
      }
      
      public static function §1!"§() : void
      {
         if(§5!+§.§6!§.camera)
         {
            §1O§ = §5!+§.§6!§.camera.§-Y§;
         }
         §#!>§ = § !+§;
      }
      
      override public function deActivate() : void
      {
         if(§]e§)
         {
            §]e§.§45§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§;h§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§;!,§ = §6H§.§,!C§(§6H§.§"Q§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§1O§))
            {
               §5!+§.§6!§.camera.§#w§(§1O§);
               §1O§ = NaN;
            }
         }
         else
         {
            _loc2_ = §6H§.§7`§(§6H§.§"Q§);
            if(_loc2_)
            {
               if(!§7M§)
               {
                  §7M§ = new §8Y§();
               }
               if(!§]e§)
               {
                  §]e§ = new §5$§();
                  _loc4_ = §[g§.assetsUrl || "";
                  _loc5_ = §[g§.buildNumber || "";
                  §]e§.init(§-!;§.§'-§(),_loc4_,_loc5_,§7M§);
               }
               §]e§.§?!"§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §]e§.§%T§(<pack url="{_loc3_}"/>);
               §]e§.§,!>§(this.§with§);
            }
         }
      }
      
      protected function §with§() : void
      {
         var _loc1_:§;!,§ = §6H§.§,!C§(§6H§.§"Q§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§1O§))
            {
               §5!+§.§6!§.camera.§#w§(§1O§);
               §1O§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §5!+§.§6!§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §5!+§.§6!§.§-8§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§7y§();
      }
      
      protected function §7y§() : String
      {
         return StatePlay.§"Z§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §!!6§.§"Z§;
      }
   }
}
