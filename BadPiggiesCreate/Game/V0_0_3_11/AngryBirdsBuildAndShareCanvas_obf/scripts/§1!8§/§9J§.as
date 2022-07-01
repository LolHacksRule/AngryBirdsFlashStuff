package §1!8§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §9J§ extends EventDispatcher implements §#W§
   {
       
      
      private var §&P§:Number = 0;
      
      private var §92§:Number;
      
      private var §!&§:Function;
      
      private var §0!r§:Array;
      
      private var §,E§:int = 1;
      
      public function §9J§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§!&§ = param1;
         this.§92§ = Math.max(param2,0.0001);
         this.§0!r§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§&P§;
         this.§&P§ = Math.min(this.§92§,this.§&P§ + param1);
         if(_loc2_ < this.§92§ && this.§&P§ >= this.§92§)
         {
            this.§!&§.apply(null,this.§0!r§);
            if(this.§,E§ > 1)
            {
               this.§,E§ = this.§,E§ - 1;
               this.§&P§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§92§);
            }
            else
            {
               dispatchEvent(new Event(Event.§,5§));
            }
         }
      }
      
      public function get §+w§() : Boolean
      {
         return this.§,E§ == 1 && this.§&P§ >= this.§92§;
      }
      
      public function get §=!g§() : Number
      {
         return this.§92§;
      }
      
      public function get § !H§() : Number
      {
         return this.§&P§;
      }
      
      public function get §8,§() : int
      {
         return this.§,E§;
      }
      
      public function set §8,§(param1:int) : void
      {
         this.§,E§ = param1;
      }
   }
}
