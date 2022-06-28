package §;m§
{
   import §0w§.§0#§;
   import §0w§.§06§;
   import §6H§.§>3§;
   import §`!0§.§"?§;
   
   public class § j§ extends §>3§
   {
      
      public static const §-!A§:String = "FeedState";
       
      
      private var §4=§:Boolean = false;
      
      public function § j§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§1!§.§'a§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§4=§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§-!A§;
         }
      }
   }
}
