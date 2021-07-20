package §5G§
{
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   
   public class §'!9§ extends §3#§
   {
      
      public static const §3!?§:String = "LevelLoadStateClassic";
      
      private static var §5b§:Number;
       
      
      public function §'!9§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §-4§() : void
      {
         §@;§.§2Q§(§@;§.§,!L§());
         §@!L§ = §@!8§;
      }
      
      public static function dynamic(param1:int) : void
      {
         §@7§ = param1;
         §@!L§ = §@!8§;
      }
      
      public static function §7T§() : void
      {
         if(§@!Z§.§;!,§.camera)
         {
            §5b§ = §@!Z§.§;!,§.camera.manualScale;
         }
         §@!L§ = §@!8§;
      }
      
      override public function initLevelLoad() : void
      {
         §8!a§(§@;§.§6!M§(§@;§.§6!K§));
         if(!isNaN(§5b§))
         {
            §@!Z§.§;!,§.camera.§#!=§(§5b§);
            §5b§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §@!Z§.§;!,§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§3!?§;
      }
   }
}
