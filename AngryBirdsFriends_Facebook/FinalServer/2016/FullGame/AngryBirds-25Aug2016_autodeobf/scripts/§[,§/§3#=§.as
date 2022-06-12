package §[,§
{
   import §?a§.Event;
   import §?a§.EventDispatcher;
   
   public class §3#=§ extends EventDispatcher implements §4#r§
   {
       
      
      private var § #^§:Number;
      
      private var §#$0§:Number;
      
      private var §8!7§:Function;
      
      private var §]#D§:Array;
      
      private var §6$9§:int;
      
      public function §3#=§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      public function reset(param1:Function, param2:Number, param3:Array = null) : §3#=§
      {
         this.§ #^§ = 0;
         this.§#$0§ = Math.max(param2,0.0001);
         this.§8!7§ = param1;
         this.§]#D§ = param3;
         this.§6$9§ = 1;
         return this;
      }
      
      public function §%"f§(param1:Number) : void
      {
         var _loc2_:Number = this.§ #^§;
         this.§ #^§ = Math.min(this.§#$0§,this.§ #^§ + param1);
         if(_loc2_ < this.§#$0§ && this.§ #^§ >= this.§#$0§)
         {
            this.§8!7§.apply(null,this.§]#D§);
            if(this.§6$9§ == 0 || this.§6$9§ > 1)
            {
               if(this.§6$9§ > 0)
               {
                  this.§6$9§ = this.§6$9§ - 1;
               }
               this.§ #^§ = 0;
               this.§%"f§(_loc2_ + param1 - this.§#$0§);
            }
            else
            {
               §8!V§(Event.§[#H§);
            }
         }
      }
      
      public function get §>N§() : Boolean
      {
         return this.§6$9§ == 1 && this.§ #^§ >= this.§#$0§;
      }
      
      public function get §;B§() : Number
      {
         return this.§#$0§;
      }
      
      public function get §<$!§() : Number
      {
         return this.§ #^§;
      }
      
      public function get §4"7§() : int
      {
         return this.§6$9§;
      }
      
      public function set §4"7§(param1:int) : void
      {
         this.§6$9§ = param1;
      }
   }
}
