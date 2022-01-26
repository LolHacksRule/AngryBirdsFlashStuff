package §_-qn§
{
   public class §_-Ct§ implements §_-qd§
   {
       
      
      private var §_-PK§:Number = 0;
      
      private var §_-Zb§:Number;
      
      private var §_-Sp§:Function;
      
      private var §_-AO§:Array;
      
      private var §_-GT§:int = 1;
      
      public function §_-Ct§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-Sp§ = param1;
         this.§_-Zb§ = Math.max(param2,0.0001);
         this.§_-AO§ = param3;
      }
      
      public function §_-CR§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-PK§;
         this.§_-PK§ = Math.min(this.§_-Zb§,this.§_-PK§ + param1);
         if(_loc2_ < this.§_-Zb§ && this.§_-PK§ >= this.§_-Zb§)
         {
            this.§_-Sp§.apply(null,this.§_-AO§);
            if(this.§_-GT§ > 1)
            {
               this.§_-GT§ = this.§_-GT§ - 1;
               this.§_-PK§ = 0;
               this.§_-CR§(_loc2_ + param1 - this.§_-Zb§);
            }
         }
      }
      
      public function get §_-aE§() : Boolean
      {
         return this.§_-PK§ >= this.§_-Zb§;
      }
      
      public function get §_-tb§() : Number
      {
         return this.§_-Zb§;
      }
      
      public function get §_-l-§() : Number
      {
         return this.§_-PK§;
      }
      
      public function get §_-iQ§() : int
      {
         return this.§_-GT§;
      }
      
      public function set §_-iQ§(param1:int) : void
      {
         this.§_-GT§ = param1;
      }
   }
}
