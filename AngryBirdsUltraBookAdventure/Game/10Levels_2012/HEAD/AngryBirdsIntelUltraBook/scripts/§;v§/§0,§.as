package §;v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §0,§ extends EventDispatcher implements §!!8§
   {
       
      
      private var §'D§:Number = 0;
      
      private var §`!j§:Number;
      
      private var §&,§:Function;
      
      private var §"!Z§:Array;
      
      private var §91§:int = 1;
      
      public function §0,§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§&,§ = param1;
         this.§`!j§ = Math.max(param2,0.0001);
         this.§"!Z§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§'D§;
         this.§'D§ = Math.min(this.§`!j§,this.§'D§ + param1);
         if(_loc2_ < this.§`!j§ && this.§'D§ >= this.§`!j§)
         {
            this.§&,§.apply(null,this.§"!Z§);
            if(this.§91§ > 1)
            {
               this.§91§ -= 1;
               this.§'D§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§`!j§);
            }
            else
            {
               dispatchEvent(new Event(Event.§4P§));
            }
         }
      }
      
      public function get §8&§() : Boolean
      {
         return this.§91§ == 1 && this.§'D§ >= this.§`!j§;
      }
      
      public function get §2L§() : Number
      {
         return this.§`!j§;
      }
      
      public function get §#!@§() : Number
      {
         return this.§'D§;
      }
      
      public function get §;t§() : int
      {
         return this.§91§;
      }
      
      public function set §;t§(param1:int) : void
      {
         this.§91§ = param1;
      }
   }
}
