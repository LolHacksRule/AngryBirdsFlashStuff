package §[l§
{
   import §#M§.§+!Z§;
   import §0;§.§3=§;
   import §0;§.§`!`§;
   import §5!5§.§1!b§;
   import §7_§.§]![§;
   import §<!R§.HighscoreSidebar;
   
   public class §-!T§ extends §,Q§
   {
      
      public static const §!!Z§:int = 0;
      
      public static var §<P§:int = §!!Z§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §1;§:Number = -1;
       
      
      private var §#!$§:Number = 0;
      
      public function §-!T§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.mUIView = new §3=§(this);
         mUIView.init(§`!`§.§2=§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §<P§ = LOAD_STATE_STEP_1;
         sHighscoreSidebar.changeState(HighscoreSidebar.§#!^§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!b§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§<P§ == LOAD_STATE_STEP_1)
         {
            §+!Z§.§?!<§.clearLevel();
            this.initLevelLoad();
            §<P§ = LOAD_STATE_STEP_2;
         }
         else if(§<P§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         return §1!b§.STATE_STATUS_RUNNING;
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
      
      protected function §>t§(param1:§]![§) : void
      {
         §+!Z§.§^N§(param1);
      }
   }
}
