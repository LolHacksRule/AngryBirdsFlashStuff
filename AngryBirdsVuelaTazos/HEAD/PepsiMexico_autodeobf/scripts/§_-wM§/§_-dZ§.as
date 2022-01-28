package §_-wM§
{
   public class §_-dZ§
   {
       
      
      private var §_-3M§:Number;
      
      private var §_-xE§:String;
      
      private var §_-hD§:Function;
      
      private var §_-cs§:Function;
      
      private var §_-Nx§:Boolean = true;
      
      public function §_-dZ§(param1:String, param2:Number)
      {
         super();
         this.§_-xE§ = param1;
         this.§_-3M§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-jy§() : String
      {
         return this.§_-xE§;
      }
      
      public function §_-Mm§() : Function
      {
         return this.§_-hD§;
      }
      
      public function §_-J2§() : Function
      {
         return this.§_-cs§;
      }
      
      public function §_-EB§(param1:Object) : void
      {
         if(this.§_-Nx§)
         {
            this.§_-hD§.call(null,param1);
         }
      }
      
      public function §_-To§(param1:Object) : void
      {
         if(this.§_-Nx§)
         {
            this.§_-cs§.call(null,param1);
         }
      }
      
      public function §_-Dj§(param1:Function, param2:Function = null) : void
      {
         this.§_-hD§ = param1;
         this.§_-cs§ = param2;
      }
      
      public function §_-8a§() : void
      {
         this.§_-Nx§ = false;
      }
      
      public function §_-d5§() : void
      {
         this.§_-Nx§ = true;
      }
   }
}
