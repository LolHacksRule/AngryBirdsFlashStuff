package §[!K§
{
   import §!!t§.§,-§;
   import §1"2§.§,!]§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   
   public class §?"-§ extends §,-§
   {
      
      public static const STATE_NAME:String = "FeedState";
       
      
      private var §5z§:Boolean = false;
      
      public function §?"-§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§&!x§.§8!O§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§5z§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.STATE_NAME;
         }
      }
   }
}
