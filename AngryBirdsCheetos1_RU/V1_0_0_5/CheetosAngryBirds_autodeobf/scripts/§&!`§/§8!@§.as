package §&!`§
{
   import §'d§.§3>§;
   import §0C§.§"!T§;
   
   public class §8!@§ extends native
   {
      
      public static const §="§:String = "LevelLoadStateClassic";
      
      private static var §@§:Number;
       
      
      public function §8!@§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §>@§() : void
      {
         §"!T§.§"!3§(§"!T§.§6!2§());
         §-! § = §[!$§;
      }
      
      public static function §8i§(param1:int) : void
      {
         §&;§ = param1;
         §-! § = §[!$§;
      }
      
      public static function §-_§() : void
      {
         if(§3>§.§8!$§.camera)
         {
            §@§ = §3>§.§8!$§.camera.manualScale;
         }
         §-! § = §[!$§;
      }
      
      override public function initLevelLoad() : void
      {
         §,C§(§"!T§.getLevelForId(§"!T§.§-Q§));
         if(!isNaN(§@§))
         {
            §3>§.§8!$§.camera.§%!<§(§@§);
            §@§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §3>§.§8!$§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§="§;
      }
   }
}
