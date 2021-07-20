package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   
   public class §=g§ extends §#!,§
   {
      
      public static const §?x§:String = "FeedState";
       
      
      private var §+o§:Boolean = false;
      
      public function §=g§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§!!=§.§]2§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§+o§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§?x§;
         }
      }
   }
}
