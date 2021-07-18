package §^U§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §;<§.§'B§;
   import §@y§.§0=§;
   
   public class §,!M§ extends §'B§
   {
      
      public static const §%!Q§:String = "FeedState";
       
      
      private var §%?§:Boolean = false;
      
      public function §,!M§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§7!X§.§[p§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§%?§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§%!Q§;
         }
      }
   }
}
