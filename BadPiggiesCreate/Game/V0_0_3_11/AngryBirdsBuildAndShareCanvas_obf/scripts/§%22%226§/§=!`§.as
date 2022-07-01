package §""6§
{
   import §+!d§.§6=§;
   import §2!O§.§,w§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   
   public class §=!`§ extends §,w§
   {
      
      public static const §^z§:String = "FeedState";
       
      
      private var §?G§:Boolean = false;
      
      public function §=!`§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§;!U§.§6s§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§?G§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§^z§;
         }
      }
   }
}
