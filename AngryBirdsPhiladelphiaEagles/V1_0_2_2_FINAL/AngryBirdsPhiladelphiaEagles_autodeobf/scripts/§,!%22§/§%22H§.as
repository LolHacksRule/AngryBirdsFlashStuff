package §,!"§
{
   import §'!O§.§'!#§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   
   public class §"H§ extends §'!#§
   {
      
      public static const §1x§:Boolean = false;
      
      public static const §8l§:int = 0;
      
      public static var §[!N§:int = §8l§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §7!>§:Number = -1;
       
      
      private var §4!E§:Number = 0;
      
      public function §"H§(param1:Boolean, param2:String)
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
         this.§0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §[!N§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§`!K§.§5g§ != null)
         {
            §0q§.setText("LOADING " + §`!K§.§5g§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§[!N§ == LOAD_STATE_STEP_1)
         {
            §#! §.§`'§.clearLevel();
            this.initLevelLoad();
            §[!N§ = LOAD_STATE_STEP_2;
         }
         else if(§[!N§ == LOAD_STATE_STEP_2)
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
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§[z§) : void
      {
         §#! §.§!e§(param1);
      }
   }
}
