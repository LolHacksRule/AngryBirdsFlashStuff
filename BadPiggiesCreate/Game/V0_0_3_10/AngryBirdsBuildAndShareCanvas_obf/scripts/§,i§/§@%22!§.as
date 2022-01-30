package §,i§
{
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §7M§.§"?§;
   import §7M§.§+R§;
   
   public class §@"!§ extends §0!K§
   {
      
      public static const §-`§:Boolean = false;
      
      public static const §&"6§:int = 0;
      
      public static var §&!v§:int = §&"6§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var § "&§:Number = -1;
       
      
      private var §=3§:Number = 0;
      
      public function §@"!§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initLoadingView();
      }
      
      protected function initLoadingView() : void
      {
         this.§'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §&!v§ = LOAD_STATE_STEP_1;
         this.§]!w§();
      }
      
      protected function §]!w§() : void
      {
         if(§"?§.§4M§ != null && §'K§)
         {
            §'K§.setText("LOADING " + §"?§.§4M§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§&!v§ == LOAD_STATE_STEP_1)
         {
            §"!V§.§!j§.clearLevel();
            this.initLevelLoad();
            §&!v§ = LOAD_STATE_STEP_2;
         }
         else if(§&!v§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
            else if(this.hasError())
            {
               this.onLevelLoadError();
            }
         }
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return false;
      }
      
      public function hasError() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      public function onLevelLoadError() : void
      {
      }
      
      protected function initLevelMain(param1:§+R§) : void
      {
         §"!V§.loadLevel(param1);
      }
   }
}
