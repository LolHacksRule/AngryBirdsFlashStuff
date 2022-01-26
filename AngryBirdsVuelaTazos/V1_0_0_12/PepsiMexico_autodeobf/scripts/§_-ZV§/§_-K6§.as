package §_-ZV§
{
   public class §_-K6§
   {
       
      
      private var §_-i0§:Number;
      
      private var §_-1i§:String;
      
      private var §_-wZ§:Function;
      
      private var §case§:Function;
      
      private var §_-Lp§:Boolean = true;
      
      public function §_-K6§(param1:String, param2:Number)
      {
         super();
         this.§_-1i§ = param1;
         this.§_-i0§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-af§() : String
      {
         return this.§_-1i§;
      }
      
      public function §_-UO§() : Function
      {
         return this.§_-wZ§;
      }
      
      public function §_-mZ§() : Function
      {
         return this.§case§;
      }
      
      public function §_-u-§(param1:Object) : void
      {
         if(this.§_-Lp§)
         {
            this.§_-wZ§.call(null,param1);
         }
      }
      
      public function §_-1k§(param1:Object) : void
      {
         if(this.§_-Lp§)
         {
            this.§case§.call(null,param1);
         }
      }
      
      public function §_-J1§(param1:Function, param2:Function = null) : void
      {
         this.§_-wZ§ = param1;
         this.§case§ = param2;
      }
      
      public function §_-cO§() : void
      {
         this.§_-Lp§ = false;
      }
      
      public function §_-uS§() : void
      {
         this.§_-Lp§ = true;
      }
   }
}
