package §,H§
{
   import §%3§.§7b§;
   import §%3§.§>!A§;
   import §3U§.§ !M§;
   import §;A§.§7!K§;
   import §@W§.§2!_§;
   
   public class §!d§ extends §1!a§
   {
      
      public static const §^!!§:int = 0;
      
      public static var §-!`§:int = §^!!§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §%!H§:Number = -1;
       
      
      private var §^'§:Number = 0;
      
      public function §!d§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§=!I§ = new §7b§(this);
         §=!I§.init(§>!A§.§;&§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §+D§.enableHelpButton(false);
         §+D§.enableCreditsButton(false);
         §7!K§.§=j§.§ i§(true);
         §-!`§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§-!`§ == LOAD_STATE_STEP_1)
         {
            §7!K§.§=j§.clearLevel();
            this.initLevelLoad();
            §-!`§ = LOAD_STATE_STEP_2;
         }
         else if(§-!`§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         return §2!_§.STATE_STATUS_RUNNING;
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
      
      protected function §3B§(param1:§ !M§) : void
      {
         §7!K§.§4y§(param1);
      }
   }
}
