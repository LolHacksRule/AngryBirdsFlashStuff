package §%n§
{
   import §-X§.§2&§;
   import §-v§.§,!1§;
   import §2!$§.§<!%§;
   import §2l§.§]O§;
   import §6!@§.§ !!§;
   import §6p§.§3n§;
   import §6p§.§^=§;
   
   public class StateCutScene extends § !!§
   {
      
      public static const §^6§:String = "StateCutScene";
       
      
      private var §"U§:§^=§;
      
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
         §"!@§.§>!$§();
         var _loc1_:String = this.§super§();
         this.§"U§ = §3n§.§08§(_loc1_,§]O§.§'!C§);
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
         var _loc1_:String = §2&§.§!!d§;
         var _loc2_:String = §2&§.§2!H§().§&!5§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§2&§.§3!1§)
         {
            _loc1_ = §2&§.§86§;
            _loc2_ = §2&§.§2!H§().§&!5§(_loc1_ + "-INTRO");
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
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
