package §7!c§
{
   import §"!>§.§<!o§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §;!0§.§!!X§;
   import §;!0§.;
   
   public class §9!?§ extends §%<§
   {
      
      public static const §96§:Boolean = false;
      
      public static const §-!9§:int = 0;
      
      protected static var §>""§:int = §-!9§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §]!f§:Number = -1;
       
      
      private var §?n§:Number = 0;
      
      public function §9!?§(param1:§#2§, param2:§<!o§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§?o§();
      }
      
      protected function §?o§() : void
      {
         this.§4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §>""§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§,W§.currentLevel != null)
         {
            §4§.setText("LOADING " + §,W§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§>""§ == LOAD_STATE_STEP_1)
         {
            §;0§.§@!^§.clearLevel();
            this.initLevelLoad();
            §>""§ = LOAD_STATE_STEP_2;
         }
         else if(§>""§ == LOAD_STATE_STEP_2)
         {
            if(this.isLoadingReady())
            {
               this.onLevelLoadReady();
            }
            else if(this.hasError())
            {
               this.onLevelLoadError();
            }
         }
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isLoadingReady() : Boolean
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
      
      protected function §`D§(param1:§!!X§) : void
      {
         §;0§.loadLevel(param1);
      }
   }
}
