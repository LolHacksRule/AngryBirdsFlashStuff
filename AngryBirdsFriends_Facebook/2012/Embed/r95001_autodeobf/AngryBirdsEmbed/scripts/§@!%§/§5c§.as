package §@!%§
{
   import §0m§.§1!,§;
   import §0u§.§&]§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   
   public class §5c§ extends §1!,§
   {
      
      public static const §5%§:String = "FeedState";
       
      
      private var §#!3§:Boolean = false;
      
      public function §5c§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§4P§.§!Y§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§#!3§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§5%§;
         }
      }
   }
}
