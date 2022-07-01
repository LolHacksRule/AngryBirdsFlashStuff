package §"&§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5!k§ extends EventDispatcher implements §=q§
   {
       
      
      private var §7r§:Number = 0;
      
      private var §+"?§:Number;
      
      private var §'!M§:Function;
      
      private var §16§:Array;
      
      private var §;"=§:int = 1;
      
      public function §5!k§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§'!M§ = param1;
         this.§+"?§ = Math.max(param2,0.0001);
         this.§16§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§7r§;
         this.§7r§ = Math.min(this.§+"?§,this.§7r§ + param1);
         if(_loc2_ < this.§+"?§ && this.§7r§ >= this.§+"?§)
         {
            this.§'!M§.apply(null,this.§16§);
            if(this.§;"=§ > 1)
            {
               this.§;"=§ = this.§;"=§ - 1;
               this.§7r§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§+"?§);
            }
            else
            {
               dispatchEvent(new Event(Event.§'m§));
            }
         }
      }
      
      public function get §3r§() : Boolean
      {
         return this.§;"=§ == 1 && this.§7r§ >= this.§+"?§;
      }
      
      public function get §4!4§() : Number
      {
         return this.§+"?§;
      }
      
      public function get §=""§() : Number
      {
         return this.§7r§;
      }
      
      public function get §@c§() : int
      {
         return this.§;"=§;
      }
      
      public function set §@c§(param1:int) : void
      {
         this.§;"=§ = param1;
      }
   }
}
