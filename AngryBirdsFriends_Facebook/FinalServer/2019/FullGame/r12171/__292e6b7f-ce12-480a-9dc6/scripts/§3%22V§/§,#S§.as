package §3"V§
{
   import §;"5§.§6"W§;
   import §;"5§.§@"§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §,#S§ extends EventDispatcher
   {
       
      
      private var §%l§:§9$8§;
      
      private var mTween:§@"§;
      
      private var mId:String;
      
      public function §,#S§(param1:String, param2:§9$8§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.mId = param1;
         this.§%l§ = param2;
         this.mTween = §6"W§.§+!,§.§9!n§(this.§%l§,{"volume":param3},{"volume":this.§%l§.volume},param4,param6);
         this.mTween.delay = param5;
         this.mTween.§5z§ = false;
         this.mTween.onComplete = this.§;!4§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §=O§() : §9$8§
      {
         return this.§%l§;
      }
      
      public function play() : void
      {
         if(this.mTween)
         {
            this.mTween.play();
         }
      }
      
      public function stop() : void
      {
         if(this.mTween)
         {
            this.mTween.stop();
         }
      }
      
      public function pause() : void
      {
         if(this.mTween)
         {
            this.mTween.pause();
         }
      }
      
      public function dispose() : void
      {
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween.dispose();
            this.mTween = null;
         }
      }
      
      private function §;!4§() : void
      {
         this.mTween.dispose();
         this.mTween = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
