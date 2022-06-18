package §2>§
{
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   
   public class §2!<§ extends §9Y§
   {
      
      public static const §]! §:String = "FeedState";
       
      
      private var §3!H§:Boolean = false;
      
      public function §2!<§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§&!8§.§-!7§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§3!H§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§]! §;
         }
      }
   }
}
