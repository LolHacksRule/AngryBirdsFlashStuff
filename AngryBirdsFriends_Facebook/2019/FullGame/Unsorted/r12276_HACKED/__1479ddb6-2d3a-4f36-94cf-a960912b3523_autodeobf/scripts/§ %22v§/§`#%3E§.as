package § "v§
{
   import § null§.§0!N§;
   import § null§.§5"<§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §`#>§ extends EventDispatcher
   {
       
      
      private var §-$7§:§+o§;
      
      private var mTween:§0!N§;
      
      private var mId:String;
      
      public function §`#>§(param1:String, param2:§+o§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.mId = param1;
         this.§-$7§ = param2;
         this.mTween = §5"<§.§3"1§.§3#§(this.§-$7§,{"volume":param3},{"volume":this.§-$7§.volume},param4,param6);
         this.mTween.delay = param5;
         this.mTween.§7!z§ = false;
         this.mTween.onComplete = this.§[w§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §3!u§() : §+o§
      {
         return this.§-$7§;
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
      
      private function §[w§() : void
      {
         this.mTween.dispose();
         this.mTween = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
