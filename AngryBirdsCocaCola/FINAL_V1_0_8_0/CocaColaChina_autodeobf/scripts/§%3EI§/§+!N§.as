package §>I§
{
   import § !C§.§6!W§;
   import §%!^§.§"!7§;
   import §0!b§.§#!=§;
   import §^6§.§5@§;
   import §^6§.§;l§;
   
   public class §+!N§ extends §for §
   {
      
      public static const §7!>§:int = 0;
      
      public static var §4B§:int = §7!>§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §6m§:Number = -1;
       
      
      private var §1!C§:Number = 0;
      
      public function §+!N§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§^!;§ = new §;l§(this);
         §^!;§.init(§5@§.§^!1§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §^c§.enableHelpButton(false);
         §^c§.enableCreditsButton(false);
         §#!=§.§&![§.§[!&§(true);
         §4B§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§4B§ == LOAD_STATE_STEP_1)
         {
            §#!=§.§&![§.clearLevel();
            this.initLevelLoad();
            §4B§ = LOAD_STATE_STEP_2;
         }
         else if(§4B§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         return §6!W§.STATE_STATUS_RUNNING;
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
      
      protected function §'G§(param1:§"!7§) : void
      {
         §#!=§.§ H§(param1);
      }
   }
}
