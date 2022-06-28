package § $§
{
   public class §]E§
   {
       
      
      private var §4!d§:Number;
      
      private var §&L§:String;
      
      private var §96§:Function;
      
      private var §"!Y§:Function;
      
      private var §>0§:Boolean = true;
      
      public function §]E§(param1:String, param2:Number)
      {
         super();
         this.§&L§ = param1;
         this.§4!d§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §&!e§() : String
      {
         return this.§&L§;
      }
      
      public function §-!a§() : Function
      {
         return this.§96§;
      }
      
      public function §`o§() : Function
      {
         return this.§"!Y§;
      }
      
      public function §!!>§(param1:Object) : void
      {
         if(this.§>0§)
         {
            this.§96§.call(null,param1);
         }
      }
      
      public function §5!d§(param1:Object) : void
      {
         if(this.§>0§)
         {
            this.§"!Y§.call(null,param1);
         }
      }
      
      public function §%l§(param1:Function, param2:Function = null) : void
      {
         this.§96§ = param1;
         this.§"!Y§ = param2;
      }
      
      public function §65§() : void
      {
         this.§>0§ = false;
      }
      
      public function §@y§() : void
      {
         this.§>0§ = true;
      }
   }
}
