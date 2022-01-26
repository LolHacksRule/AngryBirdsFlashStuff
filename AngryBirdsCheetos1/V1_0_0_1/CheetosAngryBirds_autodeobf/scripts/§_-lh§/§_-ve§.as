package §_-lh§
{
   public class §_-ve§ implements §_-UW§
   {
       
      
      private var §_-0--§:Number = 0;
      
      private var §_-x8§:Number;
      
      private var §_-Jq§:Function;
      
      private var §_-xl§:Array;
      
      private var §_-51§:int = 1;
      
      public function §_-ve§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-Jq§ = param1;
         this.§_-x8§ = Math.max(param2,0.0001);
         this.§_-xl§ = param3;
      }
      
      public function §_-DS§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-0--§;
         this.§_-0--§ = Math.min(this.§_-x8§,this.§_-0--§ + param1);
         if(_loc2_ < this.§_-x8§ && this.§_-0--§ >= this.§_-x8§)
         {
            this.§_-Jq§.apply(null,this.§_-xl§);
            if(this.§_-51§ > 1)
            {
               this.§_-51§ = this.§_-51§ - 1;
               this.§_-0--§ = 0;
               this.§_-DS§(_loc2_ + param1 - this.§_-x8§);
            }
         }
      }
      
      public function get §_-sY§() : Boolean
      {
         return this.§_-0--§ >= this.§_-x8§;
      }
      
      public function get §_-vF§() : Number
      {
         return this.§_-x8§;
      }
      
      public function get §_-Ho§() : Number
      {
         return this.§_-0--§;
      }
      
      public function get §_-Ot§() : int
      {
         return this.§_-51§;
      }
      
      public function set §_-Ot§(param1:int) : void
      {
         this.§_-51§ = param1;
      }
   }
}
