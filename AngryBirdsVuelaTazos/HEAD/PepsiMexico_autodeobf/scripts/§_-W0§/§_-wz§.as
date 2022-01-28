package §_-W0§
{
   public class §_-wz§ implements §_-Ei§
   {
       
      
      private var §_-Tf§:Number = 0;
      
      private var §_-YK§:Number;
      
      private var §_-9H§:Function;
      
      private var §_-QP§:Array;
      
      private var §_-VO§:int = 1;
      
      public function §_-wz§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-9H§ = param1;
         this.§_-YK§ = Math.max(param2,0.0001);
         this.§_-QP§ = param3;
      }
      
      public function §_-TL§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-Tf§;
         this.§_-Tf§ = Math.min(this.§_-YK§,this.§_-Tf§ + param1);
         if(_loc2_ < this.§_-YK§ && this.§_-Tf§ >= this.§_-YK§)
         {
            this.§_-9H§.apply(null,this.§_-QP§);
            if(this.§_-VO§ > 1)
            {
               this.§_-VO§ = this.§_-VO§ - 1;
               this.§_-Tf§ = 0;
               this.§_-TL§(_loc2_ + param1 - this.§_-YK§);
            }
         }
      }
      
      public function get §_-qD§() : Boolean
      {
         return this.§_-Tf§ >= this.§_-YK§;
      }
      
      public function get §_-aW§() : Number
      {
         return this.§_-YK§;
      }
      
      public function get §_-0t§() : Number
      {
         return this.§_-Tf§;
      }
      
      public function get §_-Sh§() : int
      {
         return this.§_-VO§;
      }
      
      public function set §_-Sh§(param1:int) : void
      {
         this.§_-VO§ = param1;
      }
   }
}
