package §>I§
{
   import §%!^§.§"=§;
   import §0!b§.§#!=§;
   
   public class §]#§ extends §+!N§
   {
      
      public static const § !P§:String = "LevelLoadStateClassic";
      
      private static var § F§:Number;
       
      
      public function §]#§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §7w§() : void
      {
         §"=§.§ H§(§"=§.§9D§());
         §4B§ = §7!>§;
      }
      
      public static function §;!R§(param1:int) : void
      {
         §6m§ = param1;
         §4B§ = §7!>§;
      }
      
      public static function §[4§() : void
      {
         if(§#!=§.§&![§.camera)
         {
            § F§ = §#!=§.§&![§.camera.manualScale;
         }
         §4B§ = §7!>§;
      }
      
      override public function initLevelLoad() : void
      {
         §'G§(§"=§.§'a§(§"=§.§?x§));
         if(!isNaN(§ F§))
         {
            §#!=§.§&![§.camera.§;!U§(§ F§);
            § F§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         §^c§.enableLogOutButton(false);
      }
      
      override public function isReady() : Boolean
      {
         return §#!=§.§&![§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§ !P§;
      }
   }
}
