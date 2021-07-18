package §9!B§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §&!@§ extends EventDispatcher implements § _§
   {
       
      
      private var §]!b§:Number = 0;
      
      private var §"!D§:Number;
      
      private var §>-§:Function;
      
      private var §>!V§:Array;
      
      private var §^!E§:int = 1;
      
      public function §&!@§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§>-§ = param1;
         this.§"!D§ = Math.max(param2,0.0001);
         this.§>!V§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§]!b§;
         this.§]!b§ = Math.min(this.§"!D§,this.§]!b§ + param1);
         if(_loc2_ < this.§"!D§ && this.§]!b§ >= this.§"!D§)
         {
            this.§>-§.apply(null,this.§>!V§);
            if(this.§^!E§ > 1)
            {
               this.§^!E§ = this.§^!E§ - 1;
               this.§]!b§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§"!D§);
            }
            else
            {
               dispatchEvent(new Event(Event.§;8§));
            }
         }
      }
      
      public function get §1]§() : Boolean
      {
         return this.§^!E§ == 1 && this.§]!b§ >= this.§"!D§;
      }
      
      public function get §,!Q§() : Number
      {
         return this.§"!D§;
      }
      
      public function get §+L§() : Number
      {
         return this.§]!b§;
      }
      
      public function get repeatCount() : int
      {
         return this.§^!E§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§^!E§ = param1;
      }
   }
}
