package §=0§
{
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   
   public class §^!>§ extends §`U§
   {
      
      public static const §?1§:String = "FeedState";
       
      
      private var §`!+§:Boolean = false;
      
      public function §^!>§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§[!$§.§82§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§`!+§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§?1§;
         }
      }
   }
}
