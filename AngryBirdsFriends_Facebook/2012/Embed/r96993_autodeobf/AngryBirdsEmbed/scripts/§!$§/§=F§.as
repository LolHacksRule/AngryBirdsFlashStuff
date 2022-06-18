package §!$§
{
   import §!^§.§"%§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   
   public class §=F§ extends §3!'§
   {
      
      public static const §9"§:String = "FeedState";
       
      
      private var §%!<§:Boolean = false;
      
      public function §=F§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§ &§.§<X§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§%!<§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§9"§;
         }
      }
   }
}
