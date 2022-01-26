package §_-IO§
{
   public class §_-7h§
   {
       
      
      private var §_-00C§:Number;
      
      private var §_-Gt§:String;
      
      private var §_-vO§:Function;
      
      private var §_-GT§:Function;
      
      private var §_-VK§:Boolean = true;
      
      public function §_-7h§(param1:String, param2:Number)
      {
         super();
         this.§_-Gt§ = param1;
         this.§_-00C§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-AA§() : String
      {
         return this.§_-Gt§;
      }
      
      public function §_-6u§() : Function
      {
         return this.§_-vO§;
      }
      
      public function §_-lX§() : Function
      {
         return this.§_-GT§;
      }
      
      public function §_-A3§(param1:Object) : void
      {
         if(this.§_-VK§)
         {
            this.§_-vO§.call(null,param1);
         }
      }
      
      public function §_-gl§(param1:Object) : void
      {
         if(this.§_-VK§)
         {
            this.§_-GT§.call(null,param1);
         }
      }
      
      public function §_-EN§(param1:Function, param2:Function = null) : void
      {
         this.§_-vO§ = param1;
         this.§_-GT§ = param2;
      }
      
      public function §_-ab§() : void
      {
         this.§_-VK§ = false;
      }
      
      public function §_-zp§() : void
      {
         this.§_-VK§ = true;
      }
   }
}
