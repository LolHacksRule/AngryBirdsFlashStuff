package §8!A§
{
   import §!!0§.§ true§;
   import §4M§.;
   import §4M§.§^'§;
   import §;!!§.§0H§;
   
   public class §;!E§ extends §0H§
   {
      
      public static const §2`§:String = "FeedState";
       
      
      private var §4@§:Boolean = false;
      
      public function §;!E§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§-h§.§!e§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§4@§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§2`§;
         }
      }
   }
}
