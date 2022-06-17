package §>"9§
{
   import §6§.§'#n§;
   import §6§.§6$'§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §5"<§ extends EventDispatcher
   {
       
      
      private var §@$D§:§1"T§;
      
      private var mTween:§6$'§;
      
      private var mId:String;
      
      public function §5"<§(param1:String, param2:§1"T§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.mId = param1;
         this.§@$D§ = param2;
         this.mTween = §'#n§.§?q§.§9!N§(this.§@$D§,{"volume":param3},{"volume":this.§@$D§.volume},param4,param6);
         this.mTween.delay = param5;
         this.mTween.§-#u§ = false;
         this.mTween.onComplete = this.§6#>§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §%$7§() : §1"T§
      {
         return this.§@$D§;
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
      
      private function §6#>§() : void
      {
         this.mTween.dispose();
         this.mTween = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
