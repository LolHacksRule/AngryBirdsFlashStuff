package §7-§
{
   import § !Y§.§2#§;
   import §&!V§.§=O§;
   import §3g§.§"!n§;
   import §3g§.§%E§;
   import §>!%§.HighscoreSidebar;
   import §finally§.§@z§;
   
   public class §3,§ extends §[!$§
   {
      
      public static const §9!;§:int = 0;
      
      public static var §@!o§:int = §9!;§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §^v§:Number = -1;
       
      
      private var §!$§:Number = 0;
      
      public function §3,§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.mUIView = new §"!n§(this);
         mUIView.init(§%E§.§[i§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §@!o§ = LOAD_STATE_STEP_1;
         sHighscoreSidebar.changeState(HighscoreSidebar.§[g§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=O§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§@!o§ == LOAD_STATE_STEP_1)
         {
            §2#§.§"@§.clearLevel();
            this.initLevelLoad();
            §@!o§ = LOAD_STATE_STEP_2;
         }
         else if(§@!o§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §=O§.STATE_STATUS_COMPLETED;
         }
         return §=O§.STATE_STATUS_RUNNING;
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
      
      protected function §=u§(param1:§@z§) : void
      {
         §2#§.§;z§(param1);
      }
   }
}
