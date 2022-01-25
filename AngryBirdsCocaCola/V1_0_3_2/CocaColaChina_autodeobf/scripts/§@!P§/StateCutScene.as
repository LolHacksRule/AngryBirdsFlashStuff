package §@!P§
{
   import §!!L§.§&!R§;
   import §!!a§.§9G§;
   import §6l§.§#!Z§;
   import §8r§.§@V§;
   import §<c§.§'!d§;
   import §<c§.§4!9§;
   import §=F§.§"n§;
   
   public class StateCutScene extends §&!R§
   {
      
      public static const §'2§:String = "StateCutScene";
       
      
      private var §0!6§:§'!d§;
      
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
         §=i§.§<7§();
         var _loc1_:String = this.§'7§();
         this.§0!6§ = §4!9§.§=k§(_loc1_,§@V§.§`G§);
         if(this.§0!6§)
         {
            §"n§.§[b§.§+!U§(true);
            §"n§.§[b§.§9'§(false);
            this.§0!6§.update(0);
            if(§"n§.§[b§.§'!_§)
            {
               §"n§.§[b§.§'!_§.addChild(this.§0!6§.sprite);
            }
         }
         else
         {
            mNextState = §'!-§.§'2§;
         }
      }
      
      private function §'7§() : String
      {
         var _loc1_:String = §9G§.§7T§;
         var _loc2_:String = §9G§.§8o§().§#!>§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§9G§.§3v§)
         {
            _loc1_ = §9G§.§>>§;
            _loc2_ = §9G§.§8o§().§#!>§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§0!6§)
         {
            if(§"n§.§[b§.§'!_§)
            {
               §"n§.§[b§.§'!_§.removeChild(this.§0!6§.sprite);
            }
            this.§0!6§.dispose();
            this.§0!6§ = null;
         }
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         if(!this.§0!6§.update(param1))
         {
            mNextState = §'!-§.§'2§;
         }
         return §&!R§.STATE_STATUS_RUNNING;
      }
   }
}
