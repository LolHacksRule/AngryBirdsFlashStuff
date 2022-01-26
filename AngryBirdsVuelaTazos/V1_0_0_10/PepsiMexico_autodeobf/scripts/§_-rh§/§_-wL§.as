package §_-rh§
{
   public class §_-wL§
   {
       
      
      private var §_-iN§:Number;
      
      private var §_-gB§:String;
      
      private var §_-0W§:Function;
      
      private var §_-vS§:Function;
      
      private var §_-Ho§:Boolean = true;
      
      public function §_-wL§(param1:String, param2:Number)
      {
         super();
         this.§_-gB§ = param1;
         this.§_-iN§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-15§() : String
      {
         return this.§_-gB§;
      }
      
      public function §_-4D§() : Function
      {
         return this.§_-0W§;
      }
      
      public function §_-M7§() : Function
      {
         return this.§_-vS§;
      }
      
      public function §_-ZV§(param1:Object) : void
      {
         if(this.§_-Ho§)
         {
            this.§_-0W§.call(null,param1);
         }
      }
      
      public function §_-dH§(param1:Object) : void
      {
         if(this.§_-Ho§)
         {
            this.§_-vS§.call(null,param1);
         }
      }
      
      public function §_-6g§(param1:Function, param2:Function = null) : void
      {
         this.§_-0W§ = param1;
         this.§_-vS§ = param2;
      }
      
      public function §_-GU§() : void
      {
         this.§_-Ho§ = false;
      }
      
      public function §_-LA§() : void
      {
         this.§_-Ho§ = true;
      }
   }
}
