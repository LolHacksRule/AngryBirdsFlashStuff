package §@!P§
{
   import §!!a§.§9G§;
   import §=F§.§"n§;
   
   public class §'!-§ extends §%=§
   {
      
      public static const §'2§:String = "LevelLoadStateClassic";
      
      private static var §"9§:Number;
       
      
      public function §'!-§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §>t§() : void
      {
         §9G§.§%^§(§9G§.§7!X§());
         §&d§ = §>!`§;
      }
      
      public static function §'!G§(param1:int) : void
      {
         §,!B§ = param1;
         §&d§ = §>!`§;
      }
      
      public static function §^4§() : void
      {
         if(§"n§.§[b§.camera)
         {
            §"9§ = §"n§.§[b§.camera.manualScale;
         }
         §&d§ = §>!`§;
      }
      
      override public function initLevelLoad() : void
      {
         §1!0§(§9G§.§6t§(§9G§.§>>§));
         if(!isNaN(§"9§))
         {
            §"n§.§[b§.camera.§90§(§"9§);
            §"9§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         §@<§.enableLogOutButton(false);
      }
      
      override public function isReady() : Boolean
      {
         return §"n§.§[b§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§'2§;
      }
   }
}
