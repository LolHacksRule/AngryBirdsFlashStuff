package §85§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!!b§ extends EventDispatcher implements §?!%§
   {
       
      
      private var §0Q§:Number = 0;
      
      private var §[!q§:Number;
      
      private var §4u§:Function;
      
      private var §&s§:Array;
      
      private var §%!o§:int = 1;
      
      public function §!!b§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§4u§ = param1;
         this.§[!q§ = Math.max(param2,0.0001);
         this.§&s§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§0Q§;
         this.§0Q§ = Math.min(this.§[!q§,this.§0Q§ + param1);
         if(_loc2_ < this.§[!q§ && this.§0Q§ >= this.§[!q§)
         {
            this.§4u§.apply(null,this.§&s§);
            if(this.§%!o§ > 1)
            {
               this.§%!o§ = this.§%!o§ - 1;
               this.§0Q§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§[!q§);
            }
            else
            {
               dispatchEvent(new Event(Event.§%!W§));
            }
         }
      }
      
      public function get §&W§() : Boolean
      {
         return this.§%!o§ == 1 && this.§0Q§ >= this.§[!q§;
      }
      
      public function get §6k§() : Number
      {
         return this.§[!q§;
      }
      
      public function get §[!v§() : Number
      {
         return this.§0Q§;
      }
      
      public function get §>!Y§() : int
      {
         return this.§%!o§;
      }
      
      public function set §>!Y§(param1:int) : void
      {
         this.§%!o§ = param1;
      }
   }
}
