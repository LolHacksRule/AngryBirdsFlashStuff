package §true §
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5!p§ extends EventDispatcher implements §3t§
   {
       
      
      private var §9!`§:Number = 0;
      
      private var §,!g§:Number;
      
      private var §<!a§:Function;
      
      private var §9!2§:Array;
      
      private var §#l§:int = 1;
      
      public function §5!p§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§<!a§ = param1;
         this.§,!g§ = Math.max(param2,0.0001);
         this.§9!2§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§9!`§;
         this.§9!`§ = Math.min(this.§,!g§,this.§9!`§ + param1);
         if(_loc2_ < this.§,!g§ && this.§9!`§ >= this.§,!g§)
         {
            this.§<!a§.apply(null,this.§9!2§);
            if(this.§#l§ > 1)
            {
               this.§#l§ = this.§#l§ - 1;
               this.§9!`§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§,!g§);
            }
            else
            {
               dispatchEvent(new Event(Event.§#3§));
            }
         }
      }
      
      public function get §2A§() : Boolean
      {
         return this.§#l§ == 1 && this.§9!`§ >= this.§,!g§;
      }
      
      public function get §,v§() : Number
      {
         return this.§,!g§;
      }
      
      public function get §2!F§() : Number
      {
         return this.§9!`§;
      }
      
      public function get §"!'§() : int
      {
         return this.§#l§;
      }
      
      public function set §"!'§(param1:int) : void
      {
         this.§#l§ = param1;
      }
   }
}
