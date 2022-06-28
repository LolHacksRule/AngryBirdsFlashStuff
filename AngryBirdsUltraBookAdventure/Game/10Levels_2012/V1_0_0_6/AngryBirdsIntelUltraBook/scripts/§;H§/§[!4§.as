package §;H§
{
   import §+0§.§,!E§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   
   public class §[!4§ extends §,!E§
   {
      
      public static const §"!s§:String = "FeedState";
       
      
      private var §%T§:Boolean = false;
      
      public function §[!4§(param1:Boolean = false, param2:String = "FeedState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_Feed[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§%!R§.§>!B§ != null)
         {
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§%T§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§"!s§;
         }
      }
   }
}
