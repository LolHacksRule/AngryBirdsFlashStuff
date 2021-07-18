package §!`§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §<§ extends EventDispatcher implements §%9§
   {
       
      
      private var §`c§:Number = 0;
      
      private var §5P§:Number;
      
      private var §>4§:Function;
      
      private var §@>§:Array;
      
      private var §`!F§:int = 1;
      
      public function §<§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§>4§ = param1;
         this.§5P§ = Math.max(param2,0.0001);
         this.§@>§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§`c§;
         this.§`c§ = Math.min(this.§5P§,this.§`c§ + param1);
         if(_loc2_ < this.§5P§ && this.§`c§ >= this.§5P§)
         {
            this.§>4§.apply(null,this.§@>§);
            if(this.§`!F§ > 1)
            {
               this.§`!F§ = this.§`!F§ - 1;
               this.§`c§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§5P§);
            }
            else
            {
               dispatchEvent(new Event(Event.§,m§));
            }
         }
      }
      
      public function get §,y§() : Boolean
      {
         return this.§`!F§ == 1 && this.§`c§ >= this.§5P§;
      }
      
      public function get §[@§() : Number
      {
         return this.§5P§;
      }
      
      public function get §=d§() : Number
      {
         return this.§`c§;
      }
      
      public function get §%!J§() : int
      {
         return this.§`!F§;
      }
      
      public function set §%!J§(param1:int) : void
      {
         this.§`!F§ = param1;
      }
   }
}
