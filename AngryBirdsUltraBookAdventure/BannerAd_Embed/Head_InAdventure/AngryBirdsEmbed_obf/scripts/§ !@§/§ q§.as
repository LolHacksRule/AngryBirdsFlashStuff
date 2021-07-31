package § !@§
{
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §7g§.§1Q§;
   
   public class § q§ extends §1Q§
   {
      
      public static const §>9§:String = "FeedState";
       
      
      private var §5!5§:Boolean = false;
      
      public function § q§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§5!#§.§^k§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§5!5§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§>9§;
         }
      }
   }
}
