package §_-iA§
{
   public class §_-Jb§ implements §_-vS§
   {
       
      
      private var §_-f7§:Number = 0;
      
      private var §_-VQ§:Number;
      
      private var §_-CD§:Function;
      
      private var §_-g6§:Array;
      
      private var §_-Hp§:int = 1;
      
      public function §_-Jb§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-CD§ = param1;
         this.§_-VQ§ = Math.max(param2,0.0001);
         this.§_-g6§ = param3;
      }
      
      public function §_-An§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-f7§;
         this.§_-f7§ = Math.min(this.§_-VQ§,this.§_-f7§ + param1);
         if(_loc2_ < this.§_-VQ§ && this.§_-f7§ >= this.§_-VQ§)
         {
            this.§_-CD§.apply(null,this.§_-g6§);
            if(this.§_-Hp§ > 1)
            {
               this.§_-Hp§ = this.§_-Hp§ - 1;
               this.§_-f7§ = 0;
               this.§_-An§(_loc2_ + param1 - this.§_-VQ§);
            }
         }
      }
      
      public function get §_-9e§() : Boolean
      {
         return this.§_-f7§ >= this.§_-VQ§;
      }
      
      public function get §_-Re§() : Number
      {
         return this.§_-VQ§;
      }
      
      public function get §_-V9§() : Number
      {
         return this.§_-f7§;
      }
      
      public function get §_-8N§() : int
      {
         return this.§_-Hp§;
      }
      
      public function set §_-8N§(param1:int) : void
      {
         this.§_-Hp§ = param1;
      }
   }
}
