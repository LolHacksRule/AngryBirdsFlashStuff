package §?7§
{
   import §"V§.§true§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§6!9§;
   
   public class §8!6§ extends §true§
   {
      
      public static const §4!&§:String = "FeedState";
       
      
      private var §%6§:Boolean = false;
      
      public function §8!6§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§&M§.§-^§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§%6§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§4!&§;
         }
      }
   }
}
