package §%w§
{
   import §?m§.§7?§;
   import §]!F§.§7e§;
   
   public class §[!X§ extends §package§
   {
      
      public static const §9!P§:String = "LevelLoadStateClassic";
      
      private static var §?c§:Number;
       
      
      public function §[!X§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §9P§() : void
      {
         §7e§.§!!@§(§7e§.§3N§());
         §?6§ = §1!7§;
      }
      
      public static function §&m§(param1:int) : void
      {
         §8!D§ = param1;
         §?6§ = §1!7§;
      }
      
      public static function §]!J§() : void
      {
         if(§7?§.§4!H§.camera)
         {
            §?c§ = §7?§.§4!H§.camera.manualScale;
         }
         §?6§ = §1!7§;
      }
      
      override public function initLevelLoad() : void
      {
         §!9§(§7e§.§`!7§(§7e§.§^"§));
         if(!isNaN(§?c§))
         {
            §7?§.§4!H§.camera.§'!7§(§?c§);
            §?c§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §7?§.§4!H§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§9!P§;
      }
   }
}
