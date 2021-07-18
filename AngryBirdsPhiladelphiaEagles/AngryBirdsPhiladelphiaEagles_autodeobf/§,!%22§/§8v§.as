package §,!"§
{
   import §'!O§.§'!#§;
   import §6v§.§`M§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   
   public class §8v§ extends §'!#§
   {
      
      public static const §-A§:String = "FeedState";
       
      
      private var §"!$§:Boolean = false;
      
      public function §8v§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§8j§.§]!H§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§"!$§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§-A§;
         }
      }
   }
}
