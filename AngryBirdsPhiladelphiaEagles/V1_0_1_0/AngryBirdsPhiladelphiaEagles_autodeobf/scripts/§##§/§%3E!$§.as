package §##§
{
   import §'!N§.§%!E§;
   import §,!<§.§6!M§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   
   public class §>!$§ extends §6!M§
   {
      
      public static const §=,§:String = "FeedState";
       
      
      private var §<!'§:Boolean = false;
      
      public function §>!$§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§,r§.§?!D§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§<!'§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§=,§;
         }
      }
   }
}
