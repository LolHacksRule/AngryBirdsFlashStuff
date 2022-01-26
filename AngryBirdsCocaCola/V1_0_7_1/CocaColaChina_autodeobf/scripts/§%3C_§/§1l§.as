package §<_§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §1l§ extends EventDispatcher implements §?!0§
   {
       
      
      private var final:Number = 0;
      
      private var §%!0§:Number;
      
      private var §2! §:Function;
      
      private var §16§:Array;
      
      private var §finally§:int = 1;
      
      public function §1l§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§2! § = param1;
         this.§%!0§ = Math.max(param2,0.0001);
         this.§16§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.final;
         this.final = Math.min(this.§%!0§,this.final + param1);
         if(_loc2_ < this.§%!0§ && this.final >= this.§%!0§)
         {
            this.§2! §.apply(null,this.§16§);
            if(this.§finally§ > 1)
            {
               this.§finally§ = this.§finally§ - 1;
               this.final = 0;
               this.advanceTime(_loc2_ + param1 - this.§%!0§);
            }
            else
            {
               dispatchEvent(new Event(Event.§[-§));
            }
         }
      }
      
      public function get §]!H§() : Boolean
      {
         return this.§finally§ == 1 && this.final >= this.§%!0§;
      }
      
      public function get §,d§() : Number
      {
         return this.§%!0§;
      }
      
      public function get §=K§() : Number
      {
         return this.final;
      }
      
      public function get §3Y§() : int
      {
         return this.§finally§;
      }
      
      public function set §3Y§(param1:int) : void
      {
         this.§finally§ = param1;
      }
   }
}
