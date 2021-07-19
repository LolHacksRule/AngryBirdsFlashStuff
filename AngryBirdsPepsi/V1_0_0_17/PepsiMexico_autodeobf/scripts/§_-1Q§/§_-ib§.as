package §_-1Q§
{
   public class §_-ib§ implements §_-G7§
   {
       
      
      private var §_-yH§:Number = 0;
      
      private var §_-tw§:Number;
      
      private var §_-RH§:Function;
      
      private var §_-WO§:Array;
      
      private var §_-gW§:int = 1;
      
      public function §_-ib§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-RH§ = param1;
         this.§_-tw§ = Math.max(param2,0.0001);
         this.§_-WO§ = param3;
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-yH§;
         this.§_-yH§ = Math.min(this.§_-tw§,this.§_-yH§ + param1);
         if(_loc2_ < this.§_-tw§ && this.§_-yH§ >= this.§_-tw§)
         {
            this.§_-RH§.apply(null,this.§_-WO§);
            if(this.§_-gW§ > 1)
            {
               this.§_-gW§ = this.§_-gW§ - 1;
               this.§_-yH§ = 0;
               this.§_-IE§(_loc2_ + param1 - this.§_-tw§);
            }
         }
      }
      
      public function get §_-ZY§() : Boolean
      {
         return this.§_-yH§ >= this.§_-tw§;
      }
      
      public function get §_-UL§() : Number
      {
         return this.§_-tw§;
      }
      
      public function get §_-mm§() : Number
      {
         return this.§_-yH§;
      }
      
      public function get §_-mj§() : int
      {
         return this.§_-gW§;
      }
      
      public function set §_-mj§(param1:int) : void
      {
         this.§_-gW§ = param1;
      }
   }
}
