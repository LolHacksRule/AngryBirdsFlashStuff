package §,i§
{
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §<8§.§7!n§;
   
   public class §>!_§ extends §0!K§
   {
      
      public static const §]"2§:String = "FeedState";
       
      
      private var § use§:Boolean = false;
      
      public function §>!_§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§#!G§.§7!X§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§ use§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§]"2§;
         }
      }
   }
}
