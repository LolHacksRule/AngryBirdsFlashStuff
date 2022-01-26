package §_-9A§
{
   public class §_-g3§ implements §_-ID§
   {
       
      
      private var §_-w0§:Number = 0;
      
      private var §_-pI§:Number;
      
      private var §_-Id§:Function;
      
      private var §_-1e§:Array;
      
      private var §_-CA§:int = 1;
      
      public function §_-g3§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-Id§ = param1;
         this.§_-pI§ = Math.max(param2,0.0001);
         this.§_-1e§ = param3;
      }
      
      public function §_-rp§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-w0§;
         this.§_-w0§ = Math.min(this.§_-pI§,this.§_-w0§ + param1);
         if(_loc2_ < this.§_-pI§ && this.§_-w0§ >= this.§_-pI§)
         {
            this.§_-Id§.apply(null,this.§_-1e§);
            if(this.§_-CA§ > 1)
            {
               this.§_-CA§ = this.§_-CA§ - 1;
               this.§_-w0§ = 0;
               this.§_-rp§(_loc2_ + param1 - this.§_-pI§);
            }
         }
      }
      
      public function get §_-22§() : Boolean
      {
         return this.§_-w0§ >= this.§_-pI§;
      }
      
      public function get §_-1g§() : Number
      {
         return this.§_-pI§;
      }
      
      public function get §_-Zs§() : Number
      {
         return this.§_-w0§;
      }
      
      public function get §_-u9§() : int
      {
         return this.§_-CA§;
      }
      
      public function set §_-u9§(param1:int) : void
      {
         this.§_-CA§ = param1;
      }
   }
}
