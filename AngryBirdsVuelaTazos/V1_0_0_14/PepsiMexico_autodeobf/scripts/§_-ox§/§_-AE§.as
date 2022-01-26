package §_-ox§
{
   public class §_-AE§
   {
       
      
      private var §_-09§:Number;
      
      private var §_-l3§:String;
      
      private var §_-Cf§:Function;
      
      private var §_-B-§:Function;
      
      private var §_-aq§:Boolean = true;
      
      public function §_-AE§(param1:String, param2:Number)
      {
         super();
         this.§_-l3§ = param1;
         this.§_-09§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-Vf§() : String
      {
         return this.§_-l3§;
      }
      
      public function §_-Ay§() : Function
      {
         return this.§_-Cf§;
      }
      
      public function §_-pq§() : Function
      {
         return this.§_-B-§;
      }
      
      public function §_-Yo§(param1:Object) : void
      {
         if(this.§_-aq§)
         {
            this.§_-Cf§.call(null,param1);
         }
      }
      
      public function §_-6s§(param1:Object) : void
      {
         if(this.§_-aq§)
         {
            this.§_-B-§.call(null,param1);
         }
      }
      
      public function §_-wC§(param1:Function, param2:Function = null) : void
      {
         this.§_-Cf§ = param1;
         this.§_-B-§ = param2;
      }
      
      public function §_-Jc§() : void
      {
         this.§_-aq§ = false;
      }
      
      public function §_-Gr§() : void
      {
         this.§_-aq§ = true;
      }
   }
}
