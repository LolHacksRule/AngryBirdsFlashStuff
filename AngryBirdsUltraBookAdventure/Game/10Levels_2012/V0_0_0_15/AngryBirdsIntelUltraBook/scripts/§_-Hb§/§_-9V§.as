package §_-Hb§
{
   public class §_-9V§
   {
       
      
      private var §_-28§:Number;
      
      private var §_-Uu§:String;
      
      private var §_-Xy§:Function;
      
      private var §_-Gj§:Function;
      
      private var §_-UB§:Boolean = true;
      
      public function §_-9V§(param1:String, param2:Number)
      {
         super();
         this.§_-Uu§ = param1;
         this.§_-28§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-Os§() : String
      {
         return this.§_-Uu§;
      }
      
      public function §_-N7§() : Function
      {
         return this.§_-Xy§;
      }
      
      public function §_-yg§() : Function
      {
         return this.§_-Gj§;
      }
      
      public function §_-DD§(param1:Object) : void
      {
         if(this.§_-UB§)
         {
            this.§_-Xy§.call(null,param1);
         }
      }
      
      public function §_-K3§(param1:Object) : void
      {
         if(this.§_-UB§)
         {
            this.§_-Gj§.call(null,param1);
         }
      }
      
      public function §_-Et§(param1:Function, param2:Function = null) : void
      {
         this.§_-Xy§ = param1;
         this.§_-Gj§ = param2;
      }
      
      public function §_-03a§() : void
      {
         this.§_-UB§ = false;
      }
      
      public function §_-4n§() : void
      {
         this.§_-UB§ = true;
      }
   }
}
