package §,r§
{
   import §%!,§.§,v§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   
   public class §8^§ extends §,v§
   {
      
      public static const §8n§:String = "FeedState";
       
      
      private var § q§:Boolean = false;
      
      public function §8^§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§^u§.§>R§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§ q§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§8n§;
         }
      }
   }
}
