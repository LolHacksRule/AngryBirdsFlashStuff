package §_-bz§
{
   public class §_-fh§
   {
       
      
      private var §_-uv§:Number;
      
      private var §_-Z7§:String;
      
      private var §_-rp§:Function;
      
      private var §_-jo§:Function;
      
      private var §_-MA§:Boolean = true;
      
      public function §_-fh§(param1:String, param2:Number)
      {
         super();
         this.§_-Z7§ = param1;
         this.§_-uv§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-05§() : String
      {
         return this.§_-Z7§;
      }
      
      public function §_-pn§() : Function
      {
         return this.§_-rp§;
      }
      
      public function §_-Q8§() : Function
      {
         return this.§_-jo§;
      }
      
      public function §_-wD§(param1:Object) : void
      {
         if(this.§_-MA§)
         {
            this.§_-rp§.call(null,param1);
         }
      }
      
      public function §_-7d§(param1:Object) : void
      {
         if(this.§_-MA§)
         {
            this.§_-jo§.call(null,param1);
         }
      }
      
      public function §_-9-§(param1:Function, param2:Function = null) : void
      {
         this.§_-rp§ = param1;
         this.§_-jo§ = param2;
      }
      
      public function §_-u0§() : void
      {
         this.§_-MA§ = false;
      }
      
      public function §_-0X§() : void
      {
         this.§_-MA§ = true;
      }
   }
}
