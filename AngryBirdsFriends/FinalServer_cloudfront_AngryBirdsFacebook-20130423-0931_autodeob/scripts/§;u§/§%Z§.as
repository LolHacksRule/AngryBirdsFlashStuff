package §;u§
{
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §%Z§ extends §+d§
   {
      
      public static const STATE_NAME:String = "FeedState";
       
      
      private var §8!w§:Boolean = false;
      
      public function §%Z§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§5!+§.§0"6§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§8!w§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.STATE_NAME;
         }
      }
   }
}
