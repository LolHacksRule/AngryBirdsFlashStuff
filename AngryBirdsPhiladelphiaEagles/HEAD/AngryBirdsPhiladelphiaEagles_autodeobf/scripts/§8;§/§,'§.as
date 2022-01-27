package §8;§
{
   import §%!;§.§!L§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §9c§.§,x§;
   
   public class §,'§ extends §!L§
   {
      
      public static const §"Z§:String = "FeedState";
       
      
      private var §6!,§:Boolean = false;
      
      public function §,'§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§6!F§.§5!3§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§6!,§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§"Z§;
         }
      }
   }
}
