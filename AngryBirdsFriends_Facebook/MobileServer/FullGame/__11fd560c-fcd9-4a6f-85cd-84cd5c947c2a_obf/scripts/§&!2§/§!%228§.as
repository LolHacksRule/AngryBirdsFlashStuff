package §&!2§
{
   import §5#m§.Event;
   import §5#m§.EventDispatcher;
   
   public class §!"8§ extends EventDispatcher implements §;"=§
   {
       
      
      private var § $'§:Number;
      
      private var §+!`§:Number;
      
      private var § !=§:Function;
      
      private var §^!p§:Array;
      
      private var §>"o§:int;
      
      public function §!"8§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      public function reset(param1:Function, param2:Number, param3:Array = null) : §!"8§
      {
         this.§ $'§ = 0;
         this.§+!`§ = Math.max(param2,0.0001);
         this.§ !=§ = param1;
         this.§^!p§ = param3;
         this.§>"o§ = 1;
         return this;
      }
      
      public function §'#F§(param1:Number) : void
      {
         var _loc2_:Number = this.§ $'§;
         this.§ $'§ = Math.min(this.§+!`§,this.§ $'§ + param1);
         if(_loc2_ < this.§+!`§ && this.§ $'§ >= this.§+!`§)
         {
            this.§ !=§.apply(null,this.§^!p§);
            if(this.§>"o§ == 0 || this.§>"o§ > 1)
            {
               if(this.§>"o§ > 0)
               {
                  this.§>"o§ = this.§>"o§ - 1;
               }
               this.§ $'§ = 0;
               this.§'#F§(_loc2_ + param1 - this.§+!`§);
            }
            else
            {
               §89§(Event.§7">§);
            }
         }
      }
      
      public function get §'#[§() : Boolean
      {
         return this.§>"o§ == 1 && this.§ $'§ >= this.§+!`§;
      }
      
      public function get §5"Q§() : Number
      {
         return this.§+!`§;
      }
      
      public function get §-#M§() : Number
      {
         return this.§ $'§;
      }
      
      public function get repeatCount() : int
      {
         return this.§>"o§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§>"o§ = param1;
      }
   }
}
