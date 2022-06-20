package §6#k§
{
   import §!#`§.Event;
   import §!#`§.EventDispatcher;
   
   public class §"7§ extends EventDispatcher implements §8C§
   {
       
      
      private var §!X§:Number;
      
      private var §5,§:Number;
      
      private var §+`§:Function;
      
      private var §%!e§:Array;
      
      private var §>!b§:int;
      
      public function §"7§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      public function reset(param1:Function, param2:Number, param3:Array = null) : §"7§
      {
         this.§!X§ = 0;
         this.§5,§ = Math.max(param2,0.0001);
         this.§+`§ = param1;
         this.§%!e§ = param3;
         this.§>!b§ = 1;
         return this;
      }
      
      public function §#+§(param1:Number) : void
      {
         var _loc2_:Number = this.§!X§;
         this.§!X§ = Math.min(this.§5,§,this.§!X§ + param1);
         if(_loc2_ < this.§5,§ && this.§!X§ >= this.§5,§)
         {
            this.§+`§.apply(null,this.§%!e§);
            if(this.§>!b§ == 0 || this.§>!b§ > 1)
            {
               if(this.§>!b§ > 0)
               {
                  this.§>!b§ = this.§>!b§ - 1;
               }
               this.§!X§ = 0;
               this.§#+§(_loc2_ + param1 - this.§5,§);
            }
            else
            {
               §@#<§(Event.§?§);
            }
         }
      }
      
      public function get §?#d§() : Boolean
      {
         return this.§>!b§ == 1 && this.§!X§ >= this.§5,§;
      }
      
      public function get §^!1§() : Number
      {
         return this.§5,§;
      }
      
      public function get §,$B§() : Number
      {
         return this.§!X§;
      }
      
      public function get repeatCount() : int
      {
         return this.§>!b§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§>!b§ = param1;
      }
   }
}
