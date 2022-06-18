package §2>§
{
   import §6Z§.§"!;§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   
   public class §"!H§ extends §9Y§
   {
      
      public static const §>!'§:Boolean = false;
      
      public static const §;!J§:int = 0;
      
      public static var §8v§:int = §;!J§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §@O§:Number = -1;
       
      
      private var §`!#§:Number = 0;
      
      public function §"!H§(param1:Boolean, param2:String)
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
         this.§!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §8v§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§'?§.§"t§ != null && §!s§)
         {
            §!s§.setText("LOADING " + §'?§.§"t§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§8v§ == LOAD_STATE_STEP_1)
         {
            §[!4§.§continue§.clearLevel();
            this.initLevelLoad();
            §8v§ = LOAD_STATE_STEP_2;
         }
         else if(§8v§ == LOAD_STATE_STEP_2)
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
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§"!;§) : void
      {
         §[!4§.§4y§(param1);
      }
   }
}
