package §,!"§
{
   import §2!<§.§;!M§;
   import §8!B§.§#! §;
   import §;f§.§7P§;
   import §]p§.§%§;
   import §^]§.§7!K§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   
   public class §-O§ extends §"H§
   {
      
      public static const §-A§:String = "LevelLoadStateClassic";
      
      private static var §-Y§:Number;
      
      private static var §4!%§:§;!M§;
      
      private static var §<f§:§%§;
       
      
      public function §-O§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function § b§() : void
      {
         §`!K§.§!e§(§`!K§.§6J§());
         §[!N§ = §8l§;
      }
      
      public static function §9!<§(param1:int) : void
      {
         §7!>§ = param1;
         §[!N§ = §8l§;
      }
      
      public static function §8!5§() : void
      {
         if(§#! §.§`'§.camera)
         {
            §-Y§ = §#! §.§`'§.camera.§%L§;
         }
         §[!N§ = §8l§;
      }
      
      override public function deActivate() : void
      {
         if(§4!%§)
         {
            §4!%§.§`b§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§7!K§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§[z§ = §`!K§.§!I§(§`!K§.§5g§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§-Y§))
            {
               §#! §.§`'§.camera.§[!Q§(§-Y§);
               §-Y§ = NaN;
            }
         }
         else
         {
            _loc2_ = §`!K§.§0@§(§`!K§.§5g§);
            if(_loc2_)
            {
               if(!§<f§)
               {
                  §<f§ = new §%§();
               }
               if(!§4!%§)
               {
                  §4!%§ = new §;!M§();
                  _loc4_ = §#f§.assetsUrl || "";
                  _loc5_ = §#f§.buildNumber || "";
                  §4!%§.init(§7P§.§'g§(),_loc4_,_loc5_,§<f§);
               }
               §4!%§.§0!C§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §4!%§.§?t§(<pack url="{_loc3_}"/>);
               §4!%§.§&p§(this.§@S§);
            }
         }
      }
      
      protected function §@S§() : void
      {
         var _loc1_:§[z§ = §`!K§.§!I§(§`!K§.§5g§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§-Y§))
            {
               §#! §.§`'§.camera.§[!Q§(§-Y§);
               §-Y§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §#! §.§`'§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §#! §.§`'§.§]=§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§>!=§();
      }
      
      protected function §>!=§() : String
      {
         return StatePlay.§-A§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §0!5§.§-A§;
      }
   }
}
