package §9!5§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;v§ extends EventDispatcher implements §&!&§
   {
       
      
      private var §0g§:Number = 0;
      
      private var §&_§:Number;
      
      private var §=!E§:Function;
      
      private var §?E§:Array;
      
      private var §"1§:int = 1;
      
      public function §;v§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§=!E§ = param1;
         this.§&_§ = Math.max(param2,0.0001);
         this.§?E§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§0g§;
         this.§0g§ = Math.min(this.§&_§,this.§0g§ + param1);
         if(_loc2_ < this.§&_§ && this.§0g§ >= this.§&_§)
         {
            this.§=!E§.apply(null,this.§?E§);
            if(this.§"1§ > 1)
            {
               this.§"1§ = this.§"1§ - 1;
               this.§0g§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§&_§);
            }
            else
            {
               dispatchEvent(new Event(Event.§^5§));
            }
         }
      }
      
      public function get §;!R§() : Boolean
      {
         return this.§"1§ == 1 && this.§0g§ >= this.§&_§;
      }
      
      public function get §#]§() : Number
      {
         return this.§&_§;
      }
      
      public function get §%>§() : Number
      {
         return this.§0g§;
      }
      
      public function get §[!O§() : int
      {
         return this.§"1§;
      }
      
      public function set §[!O§(param1:int) : void
      {
         this.§"1§ = param1;
      }
   }
}
