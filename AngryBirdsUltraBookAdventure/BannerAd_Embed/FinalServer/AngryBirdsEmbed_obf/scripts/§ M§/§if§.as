package § M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §if§ extends EventDispatcher implements §]-§
   {
       
      
      private var §-r§:Number = 0;
      
      private var §98§:Number;
      
      private var §>!+§:Function;
      
      private var §00§:Array;
      
      private var §continue§:int = 1;
      
      public function §if§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§>!+§ = param1;
         this.§98§ = Math.max(param2,0.0001);
         this.§00§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§-r§;
         this.§-r§ = Math.min(this.§98§,this.§-r§ + param1);
         if(_loc2_ < this.§98§ && this.§-r§ >= this.§98§)
         {
            this.§>!+§.apply(null,this.§00§);
            if(this.§continue§ > 1)
            {
               this.§continue§ = this.§continue§ - 1;
               this.§-r§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§98§);
            }
            else
            {
               dispatchEvent(new Event(Event.§1E§));
            }
         }
      }
      
      public function get §@!+§() : Boolean
      {
         return this.§continue§ == 1 && this.§-r§ >= this.§98§;
      }
      
      public function get §=!,§() : Number
      {
         return this.§98§;
      }
      
      public function get currentTime() : Number
      {
         return this.§-r§;
      }
      
      public function get §7!!§() : int
      {
         return this.§continue§;
      }
      
      public function set §7!!§(param1:int) : void
      {
         this.§continue§ = param1;
      }
   }
}
