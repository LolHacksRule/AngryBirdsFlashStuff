package §_-nd§
{
   public class §_-N2§
   {
       
      
      private var §_-pt§:Number;
      
      private var §_-1B§:String;
      
      private var §_-6U§:Function;
      
      private var §_-l6§:Function;
      
      private var §_-fV§:Boolean = true;
      
      public function §_-N2§(param1:String, param2:Number)
      {
         super();
         this.§_-1B§ = param1;
         this.§_-pt§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-E9§() : String
      {
         return this.§_-1B§;
      }
      
      public function §_-3I§() : Function
      {
         return this.§_-6U§;
      }
      
      public function §_-9p§() : Function
      {
         return this.§_-l6§;
      }
      
      public function §_-GG§(param1:Object) : void
      {
         if(this.§_-fV§)
         {
            this.§_-6U§.call(null,param1);
         }
      }
      
      public function §_-se§(param1:Object) : void
      {
         if(this.§_-fV§)
         {
            this.§_-l6§.call(null,param1);
         }
      }
      
      public function §_-NO§(param1:Function, param2:Function = null) : void
      {
         this.§_-6U§ = param1;
         this.§_-l6§ = param2;
      }
      
      public function §_-bm§() : void
      {
         this.§_-fV§ = false;
      }
      
      public function §_-tC§() : void
      {
         this.§_-fV§ = true;
      }
   }
}
