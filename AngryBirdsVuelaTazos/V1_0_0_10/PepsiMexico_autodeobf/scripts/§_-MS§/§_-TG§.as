package §_-MS§
{
   public class §_-TG§ implements §_-xc§
   {
       
      
      private var §_-Mb§:Number = 0;
      
      private var §_-Rw§:Number;
      
      private var §_-kW§:Function;
      
      private var §_-Cb§:Array;
      
      private var §_-D3§:int = 1;
      
      public function §_-TG§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-kW§ = param1;
         this.§_-Rw§ = Math.max(param2,0.0001);
         this.§_-Cb§ = param3;
      }
      
      public function §_-DV§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-Mb§;
         this.§_-Mb§ = Math.min(this.§_-Rw§,this.§_-Mb§ + param1);
         if(_loc2_ < this.§_-Rw§ && this.§_-Mb§ >= this.§_-Rw§)
         {
            this.§_-kW§.apply(null,this.§_-Cb§);
            if(this.§_-D3§ > 1)
            {
               this.§_-D3§ = this.§_-D3§ - 1;
               this.§_-Mb§ = 0;
               this.§_-DV§(_loc2_ + param1 - this.§_-Rw§);
            }
         }
      }
      
      public function get §_-N1§() : Boolean
      {
         return this.§_-Mb§ >= this.§_-Rw§;
      }
      
      public function get §_-7K§() : Number
      {
         return this.§_-Rw§;
      }
      
      public function get §_-xC§() : Number
      {
         return this.§_-Mb§;
      }
      
      public function get §_-jL§() : int
      {
         return this.§_-D3§;
      }
      
      public function set §_-jL§(param1:int) : void
      {
         this.§_-D3§ = param1;
      }
   }
}
