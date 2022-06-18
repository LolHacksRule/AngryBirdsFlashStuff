package §,!?§
{
   import §"!S§.§"_§;
   import §>8§.§?2§;
   
   public class §0T§ extends §>u§
   {
      
      public static const §@B§:String = "LevelLoadStateClassic";
      
      private static var §-!>§:Number;
       
      
      public function §0T§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §]g§() : void
      {
         §?2§.§7T§(§?2§.§?f§());
         §&F§ = §=!C§;
      }
      
      public static function §`4§(param1:int) : void
      {
         §?!E§ = param1;
         §&F§ = §=!C§;
      }
      
      public static function §6k§() : void
      {
         if(§"_§.§+!^§.camera)
         {
            §-!>§ = §"_§.§+!^§.camera.manualScale;
         }
         §&F§ = §=!C§;
      }
      
      override public function initLevelLoad() : void
      {
         §!_§(§?2§.getLevelForId(§?2§.§=$§));
         if(!isNaN(§-!>§))
         {
            §"_§.§+!^§.camera.§6!H§(§-!>§);
            §-!>§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §"_§.§+!^§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§@B§;
      }
   }
}
