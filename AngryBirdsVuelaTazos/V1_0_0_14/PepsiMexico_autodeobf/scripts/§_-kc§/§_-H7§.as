package §_-kc§
{
   public class §_-H7§ implements §_-EV§
   {
       
      
      private var §_-tY§:Number = 0;
      
      private var §_-wW§:Number;
      
      private var §_-b7§:Function;
      
      private var §_-MC§:Array;
      
      private var §_-x5§:int = 1;
      
      public function §_-H7§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-b7§ = param1;
         this.§_-wW§ = Math.max(param2,0.0001);
         this.§_-MC§ = param3;
      }
      
      public function §_-XZ§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-tY§;
         this.§_-tY§ = Math.min(this.§_-wW§,this.§_-tY§ + param1);
         if(_loc2_ < this.§_-wW§ && this.§_-tY§ >= this.§_-wW§)
         {
            this.§_-b7§.apply(null,this.§_-MC§);
            if(this.§_-x5§ > 1)
            {
               this.§_-x5§ = this.§_-x5§ - 1;
               this.§_-tY§ = 0;
               this.§_-XZ§(_loc2_ + param1 - this.§_-wW§);
            }
         }
      }
      
      public function get §_-Kc§() : Boolean
      {
         return this.§_-tY§ >= this.§_-wW§;
      }
      
      public function get §_-ms§() : Number
      {
         return this.§_-wW§;
      }
      
      public function get §_-QZ§() : Number
      {
         return this.§_-tY§;
      }
      
      public function get §_-ot§() : int
      {
         return this.§_-x5§;
      }
      
      public function set §_-ot§(param1:int) : void
      {
         this.§_-x5§ = param1;
      }
   }
}
