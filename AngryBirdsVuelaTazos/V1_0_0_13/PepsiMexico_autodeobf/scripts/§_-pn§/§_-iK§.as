package §_-pn§
{
   public class §_-iK§
   {
       
      
      private var §_-vI§:Number;
      
      private var §_-lt§:String;
      
      private var §_-h§:Function;
      
      private var §try§:Function;
      
      private var §_-7S§:Boolean = true;
      
      public function §_-iK§(param1:String, param2:Number)
      {
         super();
         this.§_-lt§ = param1;
         this.§_-vI§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-M4§() : String
      {
         return this.§_-lt§;
      }
      
      public function §_-VW§() : Function
      {
         return this.§_-h§;
      }
      
      public function §_-09§() : Function
      {
         return this.§try§;
      }
      
      public function §_-FI§(param1:Object) : void
      {
         if(this.§_-7S§)
         {
            this.§_-h§.call(null,param1);
         }
      }
      
      public function §_-E5§(param1:Object) : void
      {
         if(this.§_-7S§)
         {
            this.§try§.call(null,param1);
         }
      }
      
      public function §_-rq§(param1:Function, param2:Function = null) : void
      {
         this.§_-h§ = param1;
         this.§try§ = param2;
      }
      
      public function §_-dB§() : void
      {
         this.§_-7S§ = false;
      }
      
      public function §_-mK§() : void
      {
         this.§_-7S§ = true;
      }
   }
}
