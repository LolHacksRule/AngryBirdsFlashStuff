package §9!D§
{
   public class §9H§
   {
       
      
      private var §4!Y§:Number;
      
      private var §>!^§:String;
      
      private var §33§:Function;
      
      private var §4!;§:Function;
      
      private var §<!S§:Boolean = true;
      
      public function §9H§(param1:String, param2:Number)
      {
         super();
         this.§>!^§ = param1;
         this.§4!Y§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §7T§() : String
      {
         return this.§>!^§;
      }
      
      public function § !X§() : Function
      {
         return this.§33§;
      }
      
      public function §-$§() : Function
      {
         return this.§4!;§;
      }
      
      public function §[!9§(param1:Object) : void
      {
         if(this.§<!S§)
         {
            this.§33§.call(null,param1);
         }
      }
      
      public function §,6§(param1:Object) : void
      {
         if(this.§<!S§)
         {
            this.§4!;§.call(null,param1);
         }
      }
      
      public function §0!+§(param1:Function, param2:Function = null) : void
      {
         this.§33§ = param1;
         this.§4!;§ = param2;
      }
      
      public function §[e§() : void
      {
         this.§<!S§ = false;
      }
      
      public function §'!4§() : void
      {
         this.§<!S§ = true;
      }
   }
}
