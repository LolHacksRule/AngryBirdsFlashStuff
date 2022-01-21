package §%<§
{
   import §2o§.§<H§;
   import §3#§.HighscoreSidebar;
   import §9!8§.§0!7§;
   import §9!8§.§8n§;
   import §^5§.§]!,§;
   import §`!d§.§0%§;
   
   public class §]i§ extends §+V§
   {
      
      public static const §44§:int = 0;
      
      public static var §"D§:int = §44§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §'o§:Number = -1;
       
      
      private var §5W§:Number = 0;
      
      public function §]i§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.mUIView = new §0!7§(this);
         mUIView.init(§8n§.§8C§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §"D§ = LOAD_STATE_STEP_1;
         sHighscoreSidebar.changeState(HighscoreSidebar.§0P§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §]!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§"D§ == LOAD_STATE_STEP_1)
         {
            §<H§.§=3§.clearLevel();
            this.initLevelLoad();
            §"D§ = LOAD_STATE_STEP_2;
         }
         else if(§"D§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         return §]!,§.STATE_STATUS_RUNNING;
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
      
      protected function §4!U§(param1:§0%§) : void
      {
         §<H§.§>!R§(param1);
      }
   }
}
