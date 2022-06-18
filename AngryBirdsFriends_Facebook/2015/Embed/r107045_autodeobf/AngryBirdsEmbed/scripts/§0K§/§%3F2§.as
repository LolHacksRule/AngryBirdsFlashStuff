package §0K§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §?2§ extends EventDispatcher implements §0h§
   {
       
      
      private var §^o§:Number = 0;
      
      private var §"e§:Number;
      
      private var §9n§:Function;
      
      private var §4H§:Array;
      
      private var §&"§:int = 1;
      
      public function §?2§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§9n§ = param1;
         this.§"e§ = Math.max(param2,0.0001);
         this.§4H§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§^o§;
         this.§^o§ = Math.min(this.§"e§,this.§^o§ + param1);
         if(_loc2_ < this.§"e§ && this.§^o§ >= this.§"e§)
         {
            this.§9n§.apply(null,this.§4H§);
            if(this.§&"§ > 1)
            {
               this.§&"§ = this.§&"§ - 1;
               this.§^o§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§"e§);
            }
            else
            {
               dispatchEvent(new Event(Event.§'!-§));
            }
         }
      }
      
      public function get §0<§() : Boolean
      {
         return this.§&"§ == 1 && this.§^o§ >= this.§"e§;
      }
      
      public function get § do§() : Number
      {
         return this.§"e§;
      }
      
      public function get currentTime() : Number
      {
         return this.§^o§;
      }
      
      public function get §^a§() : int
      {
         return this.§&"§;
      }
      
      public function set §^a§(param1:int) : void
      {
         this.§&"§ = param1;
      }
   }
}
