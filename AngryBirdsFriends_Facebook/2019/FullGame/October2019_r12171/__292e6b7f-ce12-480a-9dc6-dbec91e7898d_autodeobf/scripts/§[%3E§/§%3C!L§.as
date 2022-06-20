package §[>§
{
   import §,$&§.Event;
   import §,$&§.EventDispatcher;
   
   public class §<!L§ extends EventDispatcher implements §-"w§
   {
       
      
      private var §3S§:Number;
      
      private var §#"w§:Number;
      
      private var §"=§:Function;
      
      private var §&#E§:Array;
      
      private var §4P§:int;
      
      public function §<!L§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      public function reset(param1:Function, param2:Number, param3:Array = null) : §<!L§
      {
         this.§3S§ = 0;
         this.§#"w§ = Math.max(param2,0.0001);
         this.§"=§ = param1;
         this.§&#E§ = param3;
         this.§4P§ = 1;
         return this;
      }
      
      public function §]W§(param1:Number) : void
      {
         var _loc2_:Number = this.§3S§;
         this.§3S§ = Math.min(this.§#"w§,this.§3S§ + param1);
         if(_loc2_ < this.§#"w§ && this.§3S§ >= this.§#"w§)
         {
            this.§"=§.apply(null,this.§&#E§);
            if(this.§4P§ == 0 || this.§4P§ > 1)
            {
               if(this.§4P§ > 0)
               {
                  this.§4P§ = this.§4P§ - 1;
               }
               this.§3S§ = 0;
               this.§]W§(_loc2_ + param1 - this.§#"w§);
            }
            else
            {
               §"!=§(Event.§]#h§);
            }
         }
      }
      
      public function get §;# §() : Boolean
      {
         return this.§4P§ == 1 && this.§3S§ >= this.§#"w§;
      }
      
      public function get §!t§() : Number
      {
         return this.§#"w§;
      }
      
      public function get §-J§() : Number
      {
         return this.§3S§;
      }
      
      public function get repeatCount() : int
      {
         return this.§4P§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§4P§ = param1;
      }
   }
}
