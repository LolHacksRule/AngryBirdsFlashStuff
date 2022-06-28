package § !k§
{
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §8,§.§+_§;
   import §=R§.§7!"§;
   
   public class §;!H§ extends §+_§
   {
      
      public static const §3F§:String = "FeedState";
       
      
      private var §>!0§:Boolean = false;
      
      public function §;!H§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§4A§.§+!$§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§>!0§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§3F§;
         }
      }
   }
}
