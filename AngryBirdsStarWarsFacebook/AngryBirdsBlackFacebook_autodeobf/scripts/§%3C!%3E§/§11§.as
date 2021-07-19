package §<!>§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §11§ extends EventDispatcher implements § §
   {
       
      
      private var §'!<§:Number = 0;
      
      private var §0"=§:Number;
      
      private var §%"w§:Function;
      
      private var §&"`§:Array;
      
      private var §7!p§:int = 1;
      
      public function §11§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§%"w§ = param1;
         this.§0"=§ = Math.max(param2,0.0001);
         this.§&"`§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§'!<§;
         this.§'!<§ = Math.min(this.§0"=§,this.§'!<§ + param1);
         if(_loc2_ < this.§0"=§ && this.§'!<§ >= this.§0"=§)
         {
            this.§%"w§.apply(null,this.§&"`§);
            if(this.§7!p§ > 1)
            {
               this.§7!p§ = this.§7!p§ - 1;
               this.§'!<§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§0"=§);
            }
            else
            {
               dispatchEvent(new Event(Event.§&!T§));
            }
         }
      }
      
      public function get isComplete() : Boolean
      {
         return this.§7!p§ == 1 && this.§'!<§ >= this.§0"=§;
      }
      
      public function get §,!@§() : Number
      {
         return this.§0"=§;
      }
      
      public function get currentTime() : Number
      {
         return this.§'!<§;
      }
      
      public function get §;#1§() : int
      {
         return this.§7!p§;
      }
      
      public function set §;#1§(param1:int) : void
      {
         this.§7!p§ = param1;
      }
   }
}
