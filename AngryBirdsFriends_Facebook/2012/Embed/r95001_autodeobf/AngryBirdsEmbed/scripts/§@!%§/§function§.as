package §@!%§
{
   import § "§.§8!3§;
   import § "§.§;4§;
   import §0m§.§1!,§;
   import §10§.§#!4§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   
   public class §function§ extends §1!,§
   {
      
      public static const §@!?§:Boolean = false;
      
      public static const §"W§:int = 0;
      
      public static var §`K§:int = §"W§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §1!-§:Number = -1;
       
      
      private var §%!'§:Number = 0;
      
      public function §function§(param1:Boolean, param2:String)
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
         this.§`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §`K§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§8!3§.§-[§ != null)
         {
            §`k§.setText("LOADING " + §8!3§.§-[§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§`K§ == LOAD_STATE_STEP_1)
         {
            §#!4§.§^Y§.clearLevel();
            this.initLevelLoad();
            §`K§ = LOAD_STATE_STEP_2;
         }
         else if(§`K§ == LOAD_STATE_STEP_2)
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
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§;4§) : void
      {
         §#!4§.§+f§(param1);
      }
   }
}
