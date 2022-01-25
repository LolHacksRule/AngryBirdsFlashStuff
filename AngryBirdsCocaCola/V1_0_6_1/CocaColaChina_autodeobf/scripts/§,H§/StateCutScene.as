package §,H§
{
   import §%!@§.§+!^§;
   import §%!@§.§17§;
   import §+N§.§``§;
   import §3U§.§2!%§;
   import §7!H§.§12§;
   import §;A§.§7!K§;
   import §@W§.§2!_§;
   
   public class StateCutScene extends §2!_§
   {
      
      public static const §^!O§:String = "StateCutScene";
       
      
      private var §-!Y§:§+!^§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §6T§.§"!P§();
         var _loc1_:String = this.§8i§();
         this.§-!Y§ = §17§.§[!?§(_loc1_,§``§.§0%§);
         if(this.§-!Y§)
         {
            §7!K§.§=j§.§ i§(true);
            §7!K§.§=j§.§6z§(false);
            this.§-!Y§.update(0);
            if(§7!K§.§=j§.§>F§)
            {
               §7!K§.§=j§.§>F§.addChild(this.§-!Y§.sprite);
            }
         }
         else
         {
            mNextState = §5d§.§^!O§;
         }
      }
      
      private function §8i§() : String
      {
         var _loc1_:String = §2!%§.§-d§;
         var _loc2_:String = §2!%§.§-U§().§0K§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§2!%§.§^5§)
         {
            _loc1_ = §2!%§.§<G§;
            _loc2_ = §2!%§.§-U§().§0K§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§-!Y§)
         {
            if(§7!K§.§=j§.§>F§)
            {
               §7!K§.§=j§.§>F§.removeChild(this.§-!Y§.sprite);
            }
            this.§-!Y§.dispose();
            this.§-!Y§ = null;
         }
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         if(!this.§-!Y§.update(param1))
         {
            mNextState = §5d§.§^!O§;
         }
         return §2!_§.STATE_STATUS_RUNNING;
      }
   }
}
