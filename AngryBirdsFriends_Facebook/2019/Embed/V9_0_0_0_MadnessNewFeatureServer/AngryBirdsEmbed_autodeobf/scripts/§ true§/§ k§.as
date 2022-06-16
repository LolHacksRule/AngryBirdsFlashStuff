package § true§
{
   import §<!A§.§,!?§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§;!6§;
   
   public class § k§ extends §,!?§
   {
      
      public static const §`W§:String = "FeedState";
       
      
      private var §`H§:Boolean = false;
      
      public function § k§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§?,§.§8§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§`H§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§`W§;
         }
      }
   }
}
