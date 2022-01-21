package
{
   import §%!5§.§7;§;
   import §-!F§.§`+§;
   import §3<§.§-2§;
   import §3<§.§9&§;
   import §7E§.§ =§;
   import §9!$§.HighscoreSidebar;
   
   public class §8!,§ extends §2'§
   {
      
      public static const §@!_§:int = 0;
      
      public static var §0I§:int = §@!_§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §^$§:Number = -1;
       
      
      private var §0!n§:Number = 0;
      
      public function §8!,§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.mUIView = new §-2§(this);
         mUIView.init(§9&§.§6!M§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §0I§ = LOAD_STATE_STEP_1;
         sHighscoreSidebar.changeState(HighscoreSidebar.§!!k§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § =§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§0I§ == LOAD_STATE_STEP_1)
         {
            §7;§.§1h§.clearLevel();
            this.initLevelLoad();
            §0I§ = LOAD_STATE_STEP_2;
         }
         else if(§0I§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return § =§.STATE_STATUS_COMPLETED;
         }
         return § =§.STATE_STATUS_RUNNING;
      }
      
      public function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      protected function §[F§(param1:§`+§) : void
      {
         §7;§.§'!T§(param1);
      }
   }
}
