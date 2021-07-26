package §8#K§
{
   import §&$3§.§"!&§;
   import §&$3§.§0#m§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §2+§ extends EventDispatcher
   {
       
      
      private var §8$§:§-!o§;
      
      private var mTween:§0#m§;
      
      private var mId:String;
      
      public function §2+§(param1:String, param2:§-!o§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.mId = param1;
         this.§8$§ = param2;
         this.mTween = §"!&§.§`"H§.§1"W§(this.§8$§,{"volume":param3},{"volume":this.§8$§.volume},param4,param6);
         this.mTween.delay = param5;
         this.mTween.§=F§ = false;
         this.mTween.onComplete = this.§`"?§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §@!p§() : §-!o§
      {
         return this.§8$§;
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
      
      private function §`"?§() : void
      {
         this.mTween.dispose();
         this.mTween = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
