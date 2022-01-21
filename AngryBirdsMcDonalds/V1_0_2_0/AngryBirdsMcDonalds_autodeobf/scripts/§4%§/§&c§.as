package §4%§
{
   import §+-§.§,K§;
   import §6!Q§.§ !"§;
   import §9!W§.§=!@§;
   import §@`§.§>!S§;
   import §@`§.§]8§;
   import §]! §.HighscoreSidebar;
   
   public class §&c§ extends §%0§
   {
      
      public static const §;<§:int = 0;
      
      public static var §&!i§:int = §;<§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §7w§:Number = -1;
       
      
      private var §=F§:Number = 0;
      
      public function §&c§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.mUIView = new §>!S§(this);
         mUIView.init(§]8§.§-!C§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §&!i§ = LOAD_STATE_STEP_1;
         sHighscoreSidebar.changeState(HighscoreSidebar.§<$§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !"§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§&!i§ == LOAD_STATE_STEP_1)
         {
            §=!@§.§>!T§.clearLevel();
            this.initLevelLoad();
            §&!i§ = LOAD_STATE_STEP_2;
         }
         else if(§&!i§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return § !"§.STATE_STATUS_COMPLETED;
         }
         return § !"§.STATE_STATUS_RUNNING;
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
      
      protected function §=!-§(param1:§,K§) : void
      {
         §=!@§.§[C§(param1);
      }
   }
}
