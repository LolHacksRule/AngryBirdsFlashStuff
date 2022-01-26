package §_-3f§
{
   public class §_-dX§
   {
       
      
      private var §_-q4§:Number;
      
      private var §_-1d§:String;
      
      private var §_-r0§:Function;
      
      private var §_-Ka§:Function;
      
      private var §_-rl§:Boolean = true;
      
      public function §_-dX§(param1:String, param2:Number)
      {
         super();
         this.§_-1d§ = param1;
         this.§_-q4§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-T6§() : String
      {
         return this.§_-1d§;
      }
      
      public function §_-Yt§() : Function
      {
         return this.§_-r0§;
      }
      
      public function §_-68§() : Function
      {
         return this.§_-Ka§;
      }
      
      public function §_-qp§(param1:Object) : void
      {
         if(this.§_-rl§)
         {
            this.§_-r0§.call(null,param1);
         }
      }
      
      public function §_-cz§(param1:Object) : void
      {
         if(this.§_-rl§)
         {
            this.§_-Ka§.call(null,param1);
         }
      }
      
      public function §_-0u§(param1:Function, param2:Function = null) : void
      {
         this.§_-r0§ = param1;
         this.§_-Ka§ = param2;
      }
      
      public function §_-Ja§() : void
      {
         this.§_-rl§ = false;
      }
      
      public function §_-fJ§() : void
      {
         this.§_-rl§ = true;
      }
   }
}
