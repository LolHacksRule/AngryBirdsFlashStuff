package §?h§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §`!7§ extends EventDispatcher implements §3!&§
   {
       
      
      private var §'!Z§:Number = 0;
      
      private var §^E§:Number;
      
      private var §,D§:Function;
      
      private var §&R§:Array;
      
      private var §2t§:int = 1;
      
      public function §`!7§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§,D§ = param1;
         this.§^E§ = Math.max(param2,0.0001);
         this.§&R§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§'!Z§;
         this.§'!Z§ = Math.min(this.§^E§,this.§'!Z§ + param1);
         if(_loc2_ < this.§^E§ && this.§'!Z§ >= this.§^E§)
         {
            this.§,D§.apply(null,this.§&R§);
            if(this.§2t§ > 1)
            {
               this.§2t§ = this.§2t§ - 1;
               this.§'!Z§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§^E§);
            }
            else
            {
               dispatchEvent(new Event(Event.§5!3§));
            }
         }
      }
      
      public function get §'H§() : Boolean
      {
         return this.§2t§ == 1 && this.§'!Z§ >= this.§^E§;
      }
      
      public function get §1!M§() : Number
      {
         return this.§^E§;
      }
      
      public function get §-v§() : Number
      {
         return this.§'!Z§;
      }
      
      public function get §#!S§() : int
      {
         return this.§2t§;
      }
      
      public function set §#!S§(param1:int) : void
      {
         this.§2t§ = param1;
      }
   }
}
