package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §5!G§.§&2§;
   import §=#§.§5!S§;
   import §`!n§.§#!s§;
   import §`!n§.LevelManager;
   
   public class §^!D§ extends §5!S§
   {
      
      public static const §&B§:Boolean = false;
      
      public static const §1!M§:int = 0;
      
      public static var §=">§:int = §1!M§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §3Z§:Number = -1;
       
      
      private var §8!z§:Number = 0;
      
      public function §^!D§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§<"E§();
      }
      
      protected function §<"E§() : void
      {
         this.§2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §=">§ = LOAD_STATE_STEP_1;
         this.§"N§();
      }
      
      protected function §"N§() : void
      {
         if(LevelManager.§`-§ != null && §2!K§)
         {
            §2!K§.setText("LOADING " + LevelManager.§`-§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§=">§ == LOAD_STATE_STEP_1)
         {
            §&2§.§],§.clearLevel();
            this.initLevelLoad();
            §=">§ = LOAD_STATE_STEP_2;
         }
         else if(§=">§ == LOAD_STATE_STEP_2)
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
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§#!s§) : void
      {
         §&2§.§^p§(param1);
      }
   }
}
