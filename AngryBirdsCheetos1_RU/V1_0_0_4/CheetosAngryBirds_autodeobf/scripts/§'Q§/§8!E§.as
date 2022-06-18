package §'Q§
{
   import §;!X§.§7`§;
   import §=q§.§<!,§;
   
   public class §8!E§ extends §&%§
   {
      
      public static const §1o§:String = "LevelLoadStateClassic";
      
      private static var §4!;§:Number;
       
      
      public function §8!E§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §!!G§() : void
      {
         §<!,§.§4b§(§<!,§.§8`§());
         §08§ = §8u§;
      }
      
      public static function §11§(param1:int) : void
      {
         §6!=§ = param1;
         §08§ = §8u§;
      }
      
      public static function §1!5§() : void
      {
         if(§7`§.§2'§.camera)
         {
            §4!;§ = §7`§.§2'§.camera.manualScale;
         }
         §08§ = §8u§;
      }
      
      override public function initLevelLoad() : void
      {
         §?I§(§<!,§.getLevelForId(§<!,§.§1D§));
         if(!isNaN(§4!;§))
         {
            §7`§.§2'§.camera.§;q§(§4!;§);
            §4!;§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §7`§.§2'§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§1o§;
      }
   }
}
