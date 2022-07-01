package §1"§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §[J§ extends EventDispatcher implements §&+§
   {
       
      
      private var §+C§:Number = 0;
      
      private var §<!E§:Number;
      
      private var §#!!§:Function;
      
      private var §<!L§:Array;
      
      private var §^"'§:int = 1;
      
      public function §[J§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§#!!§ = param1;
         this.§<!E§ = Math.max(param2,0.0001);
         this.§<!L§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§+C§;
         this.§+C§ = Math.min(this.§<!E§,this.§+C§ + param1);
         if(_loc2_ < this.§<!E§ && this.§+C§ >= this.§<!E§)
         {
            this.§#!!§.apply(null,this.§<!L§);
            if(this.§^"'§ > 1)
            {
               this.§^"'§ = this.§^"'§ - 1;
               this.§+C§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§<!E§);
            }
            else
            {
               dispatchEvent(new Event(Event.§5F§));
            }
         }
      }
      
      public function get §0v§() : Boolean
      {
         return this.§^"'§ == 1 && this.§+C§ >= this.§<!E§;
      }
      
      public function get §#"§() : Number
      {
         return this.§<!E§;
      }
      
      public function get §2!p§() : Number
      {
         return this.§+C§;
      }
      
      public function get §+!?§() : int
      {
         return this.§^"'§;
      }
      
      public function set §+!?§(param1:int) : void
      {
         this.§^"'§ = param1;
      }
   }
}
