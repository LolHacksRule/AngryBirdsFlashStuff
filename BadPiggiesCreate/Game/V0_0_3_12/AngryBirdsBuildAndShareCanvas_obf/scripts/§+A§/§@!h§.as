package §+A§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@!h§ extends EventDispatcher implements §,T§
   {
       
      
      private var §+>§:Number = 0;
      
      private var §^!`§:Number;
      
      private var §["$§:Function;
      
      private var §0!P§:Array;
      
      private var §-"+§:int = 1;
      
      public function §@!h§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§["$§ = param1;
         this.§^!`§ = Math.max(param2,0.0001);
         this.§0!P§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§+>§;
         this.§+>§ = Math.min(this.§^!`§,this.§+>§ + param1);
         if(_loc2_ < this.§^!`§ && this.§+>§ >= this.§^!`§)
         {
            this.§["$§.apply(null,this.§0!P§);
            if(this.§-"+§ > 1)
            {
               this.§-"+§ = this.§-"+§ - 1;
               this.§+>§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§^!`§);
            }
            else
            {
               dispatchEvent(new Event(Event.§<">§));
            }
         }
      }
      
      public function get §>H§() : Boolean
      {
         return this.§-"+§ == 1 && this.§+>§ >= this.§^!`§;
      }
      
      public function get §[E§() : Number
      {
         return this.§^!`§;
      }
      
      public function get §5!F§() : Number
      {
         return this.§+>§;
      }
      
      public function get §3!"§() : int
      {
         return this.§-"+§;
      }
      
      public function set §3!"§(param1:int) : void
      {
         this.§-"+§ = param1;
      }
   }
}
