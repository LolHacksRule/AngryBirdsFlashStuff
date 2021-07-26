package §@!M§
{
   import §!#"§.§&"H§;
   import §!#"§.§7Y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §?#1§ extends EventDispatcher
   {
       
      
      private var §^!k§:§^#p§;
      
      private var mTween:§7Y§;
      
      private var mId:String;
      
      public function §?#1§(param1:String, param2:§^#p§, param3:Number, param4:Number = 1, param5:Number = 0, param6:Function = null)
      {
         super();
         this.mId = param1;
         this.§^!k§ = param2;
         this.mTween = §&"H§.§6!§.§6C§(this.§^!k§,{"volume":param3},{"volume":this.§^!k§.volume},param4,param6);
         this.mTween.delay = param5;
         this.mTween.§0! § = false;
         this.mTween.onComplete = this.§1!n§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get §,$?§() : §^#p§
      {
         return this.§^!k§;
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
      
      private function §1!n§() : void
      {
         this.mTween.dispose();
         this.mTween = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
