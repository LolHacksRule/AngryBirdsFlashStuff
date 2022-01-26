package § C§
{
   import §2]§.§#H§;
   import §2]§.§set §;
   import §]4§.§-§;
   import §`W§.§-[§;
   
   public class §+!A§ extends §-§
   {
      
      public static const §?B§:String = "FeedState";
       
      
      private var §%+§:Boolean = false;
      
      public function §+!A§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§,!?§.§<J§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§%+§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§?B§;
         }
      }
   }
}
