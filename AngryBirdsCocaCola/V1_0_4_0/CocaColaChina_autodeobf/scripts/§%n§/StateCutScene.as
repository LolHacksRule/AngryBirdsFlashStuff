package §%n§
{
   import §-v§.§,!1§;
   import §3n§.§1!7§;
   import §3n§.§2!C§;
   import §6!@§.§ !!§;
   import §7]§.§;T§;
   import §86§.§!!d§;
   import §9!Y§.§!q§;
   
   public class StateCutScene extends § !!§
   {
      
      public static const §^6§:String = "StateCutScene";
       
      
      private var §"U§:§1!7§;
      
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
         §"!@§.§9!L§();
         var _loc1_:String = this.§super§();
         this.§"U§ = §2!C§.§?!,§(_loc1_,§!q§.§@!c§);
         if(this.§"U§)
         {
            §,!1§.§2T§.§=!H§(true);
            §,!1§.§2T§.§&c§(false);
            this.§"U§.update(0);
            if(§,!1§.§2T§.§@<§)
            {
               §,!1§.§2T§.§@<§.addChild(this.§"U§.sprite);
            }
         }
         else
         {
            mNextState = §4-§.§^6§;
         }
      }
      
      private function §super§() : String
      {
         var _loc1_:String = §!!d§.§>?§;
         var _loc2_:String = §!!d§.§+0§().§;e§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§!!d§.§@^§)
         {
            _loc1_ = §!!d§.§%1§;
            _loc2_ = §!!d§.§+0§().§;e§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§"U§)
         {
            if(§,!1§.§2T§.§@<§)
            {
               §,!1§.§2T§.§@<§.removeChild(this.§"U§.sprite);
            }
            this.§"U§.dispose();
            this.§"U§ = null;
         }
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         if(!this.§"U§.update(param1))
         {
            mNextState = §4-§.§^6§;
         }
         return § !!§.STATE_STATUS_RUNNING;
      }
   }
}
