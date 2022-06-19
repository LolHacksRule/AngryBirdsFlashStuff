package §_-BS§
{
   public class §_-Ps§ implements §_-De§
   {
       
      
      private var §_-Ag§:Number = 0;
      
      private var §else §:Number;
      
      private var §_-6Q§:Function;
      
      private var §_-Vx§:Array;
      
      private var §_-3N§:int = 1;
      
      public function §_-Ps§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-6Q§ = param1;
         this.§else § = Math.max(param2,0.0001);
         this.§_-Vx§ = param3;
      }
      
      public function §_-cj§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-Ag§;
         this.§_-Ag§ = Math.min(this.§else §,this.§_-Ag§ + param1);
         if(_loc2_ < this.§else § && this.§_-Ag§ >= this.§else §)
         {
            this.§_-6Q§.apply(null,this.§_-Vx§);
            if(this.§_-3N§ > 1)
            {
               this.§_-3N§ = this.§_-3N§ - 1;
               this.§_-Ag§ = 0;
               this.§_-cj§(_loc2_ + param1 - this.§else §);
            }
         }
      }
      
      public function get §_-ej§() : Boolean
      {
         return this.§_-Ag§ >= this.§else §;
      }
      
      public function get §_-eN§() : Number
      {
         return this.§else §;
      }
      
      public function get §_-bB§() : Number
      {
         return this.§_-Ag§;
      }
      
      public function get §_-Zp§() : int
      {
         return this.§_-3N§;
      }
      
      public function set §_-Zp§(param1:int) : void
      {
         this.§_-3N§ = param1;
      }
   }
}
