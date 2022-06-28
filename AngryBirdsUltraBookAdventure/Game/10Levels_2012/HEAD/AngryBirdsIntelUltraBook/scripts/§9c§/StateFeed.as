package §9c§
{
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   
   public class StateFeed extends StateBase
   {
      
      public static const STATE_NAME:String = "FeedState";
       
      
      private var §7!^§:Boolean = false;
      
      public function StateFeed(initState:Boolean = false, name:String = "FeedState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(StateStart.§3w§ != null)
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
         this.§7!^§ = false;
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
