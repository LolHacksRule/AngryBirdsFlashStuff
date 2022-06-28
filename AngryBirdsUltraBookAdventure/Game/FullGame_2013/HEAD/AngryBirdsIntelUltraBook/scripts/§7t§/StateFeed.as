package §7t§
{
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   
   public class StateFeed extends StateBase
   {
      
      public static const STATE_NAME:String = "FeedState";
       
      
      private var §,!X§:Boolean = false;
      
      public function StateFeed(initState:Boolean = false, name:String = "FeedState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(StateStart.§6r§ != null)
         {
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§,!X§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.STATE_NAME;
         }
      }
   }
}
