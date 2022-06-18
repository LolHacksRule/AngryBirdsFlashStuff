package §[=§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!!E§ extends EventDispatcher implements §`!<§
   {
       
      
      private var §[!A§:Number = 0;
      
      private var §+!H§:Number;
      
      private var § !<§:Function;
      
      private var §@!-§:Array;
      
      private var §^Y§:int = 1;
      
      public function §!!E§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§ !<§ = param1;
         this.§+!H§ = Math.max(param2,0.0001);
         this.§@!-§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§[!A§;
         this.§[!A§ = Math.min(this.§+!H§,this.§[!A§ + param1);
         if(_loc2_ < this.§+!H§ && this.§[!A§ >= this.§+!H§)
         {
            this.§ !<§.apply(null,this.§@!-§);
            if(this.§^Y§ > 1)
            {
               this.§^Y§ = this.§^Y§ - 1;
               this.§[!A§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§+!H§);
            }
            else
            {
               dispatchEvent(new Event(Event.§6w§));
            }
         }
      }
      
      public function get §6y§() : Boolean
      {
         return this.§^Y§ == 1 && this.§[!A§ >= this.§+!H§;
      }
      
      public function get §!5§() : Number
      {
         return this.§+!H§;
      }
      
      public function get §&§() : Number
      {
         return this.§[!A§;
      }
      
      public function get §+[§() : int
      {
         return this.§^Y§;
      }
      
      public function set §+[§(param1:int) : void
      {
         this.§^Y§ = param1;
      }
   }
}
