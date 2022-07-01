package §9!#§
{
   import §"h§.§<"+§;
   import §3!S§.§%s§;
   import §6!&§.§0!b§;
   import §6!&§.§1!c§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   
   public class §?X§ extends §<"+§
   {
      
      public static const § case§:Boolean = false;
      
      public static const §7W§:int = 0;
      
      public static var §5!'§:int = §7W§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §<T§:Number = -1;
       
      
      private var §&!p§:Number = 0;
      
      public function §?X§(param1:Boolean, param2:String)
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
         this.§;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!'§ = LOAD_STATE_STEP_1;
         this.§]!g§();
      }
      
      protected function §]!g§() : void
      {
         if(§1!c§.§'Z§ != null && §;i§)
         {
            §;i§.setText("LOADING " + §1!c§.§'Z§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§5!'§ == LOAD_STATE_STEP_1)
         {
            §%s§.§`!f§.clearLevel();
            this.initLevelLoad();
            §5!'§ = LOAD_STATE_STEP_2;
         }
         else if(§5!'§ == LOAD_STATE_STEP_2)
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
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§0!b§) : void
      {
         §%s§.loadLevel(param1);
      }
   }
}
