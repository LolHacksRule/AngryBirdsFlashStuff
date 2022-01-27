package §=R§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-!N§ extends EventDispatcher implements §6I§
   {
       
      
      private var §<[§:Number = 0;
      
      private var §=c§:Number;
      
      private var §4y§:Function;
      
      private var § 9§:Array;
      
      private var §"y§:int = 1;
      
      public function §-!N§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§4y§ = param1;
         this.§=c§ = Math.max(param2,0.0001);
         this.§ 9§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§<[§;
         this.§<[§ = Math.min(this.§=c§,this.§<[§ + param1);
         if(_loc2_ < this.§=c§ && this.§<[§ >= this.§=c§)
         {
            this.§4y§.apply(null,this.§ 9§);
            if(this.§"y§ > 1)
            {
               this.§"y§ = this.§"y§ - 1;
               this.§<[§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§=c§);
            }
            else
            {
               dispatchEvent(new Event(Event.§^4§));
            }
         }
      }
      
      public function get §4^§() : Boolean
      {
         return this.§"y§ == 1 && this.§<[§ >= this.§=c§;
      }
      
      public function get §0!L§() : Number
      {
         return this.§=c§;
      }
      
      public function get §&Q§() : Number
      {
         return this.§<[§;
      }
      
      public function get §`p§() : int
      {
         return this.§"y§;
      }
      
      public function set §`p§(param1:int) : void
      {
         this.§"y§ = param1;
      }
   }
}
