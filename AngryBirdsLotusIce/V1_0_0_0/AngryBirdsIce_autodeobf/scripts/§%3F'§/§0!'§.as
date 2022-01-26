package §?'§
{
   import §87§.§2-§;
   import §87§.§]T§;
   import §`<§.§,!6§;
   import §in§.§%K§;
   
   public class §0!'§ extends §,!6§
   {
      
      public static const §`%§:String = "FeedState";
       
      
      private var §=x§:Boolean = false;
      
      public function §0!'§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§ 1§.§-x§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§=x§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§`%§;
         }
      }
   }
}
