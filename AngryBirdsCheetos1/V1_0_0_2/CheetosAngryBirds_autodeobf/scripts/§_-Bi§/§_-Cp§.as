package §_-Bi§
{
   public class §_-Cp§
   {
       
      
      private var §_-H1§:Number;
      
      private var §_-1W§:String;
      
      private var §_-6g§:Function;
      
      private var §_-7u§:Function;
      
      private var §_-Xs§:Boolean = true;
      
      public function §_-Cp§(param1:String, param2:Number)
      {
         super();
         this.§_-1W§ = param1;
         this.§_-H1§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-Xl§() : String
      {
         return this.§_-1W§;
      }
      
      public function §_-V§() : Function
      {
         return this.§_-6g§;
      }
      
      public function §_-4a§() : Function
      {
         return this.§_-7u§;
      }
      
      public function §_-ct§(param1:Object) : void
      {
         if(this.§_-Xs§)
         {
            this.§_-6g§.call(null,param1);
         }
      }
      
      public function §_-VK§(param1:Object) : void
      {
         if(this.§_-Xs§)
         {
            this.§_-7u§.call(null,param1);
         }
      }
      
      public function §_-A1§(param1:Function, param2:Function = null) : void
      {
         this.§_-6g§ = param1;
         this.§_-7u§ = param2;
      }
      
      public function §_-oh§() : void
      {
         this.§_-Xs§ = false;
      }
      
      public function §_-TS§() : void
      {
         this.§_-Xs§ = true;
      }
   }
}
