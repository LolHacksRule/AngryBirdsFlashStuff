package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §1t§.§`!B§;
   
   public class §&T§ extends §2q§
   {
      
      public static const §&! §:String = "FeedState";
       
      
      private var §1[§:Boolean = false;
      
      public function §&T§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§'W§.§-!3§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§1[§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§&! §;
         }
      }
   }
}
