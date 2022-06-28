package §^X§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;$§ extends EventDispatcher implements §5!D§
   {
       
      
      private var §@Q§:Number = 0;
      
      private var §#c§:Number;
      
      private var §8P§:Function;
      
      private var §<'§:Array;
      
      private var §14§:int = 1;
      
      public function §;$§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§8P§ = param1;
         this.§#c§ = Math.max(param2,0.0001);
         this.§<'§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§@Q§;
         this.§@Q§ = Math.min(this.§#c§,this.§@Q§ + param1);
         if(_loc2_ < this.§#c§ && this.§@Q§ >= this.§#c§)
         {
            this.§8P§.apply(null,this.§<'§);
            if(this.§14§ > 1)
            {
               this.§14§ = this.§14§ - 1;
               this.§@Q§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§#c§);
            }
            else
            {
               dispatchEvent(new Event(Event.§^#§));
            }
         }
      }
      
      public function get §&+§() : Boolean
      {
         return this.§14§ == 1 && this.§@Q§ >= this.§#c§;
      }
      
      public function get §2S§() : Number
      {
         return this.§#c§;
      }
      
      public function get currentTime() : Number
      {
         return this.§@Q§;
      }
      
      public function get include() : int
      {
         return this.§14§;
      }
      
      public function set include(param1:int) : void
      {
         this.§14§ = param1;
      }
   }
}
