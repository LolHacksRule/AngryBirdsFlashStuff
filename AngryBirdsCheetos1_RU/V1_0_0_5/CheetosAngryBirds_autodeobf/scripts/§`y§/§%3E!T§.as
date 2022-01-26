package §`y§
{
   public class §>!T§
   {
       
      
      private var §4!;§:Number;
      
      private var §4@§:String;
      
      private var §6!R§:Function;
      
      private var §;!T§:Function;
      
      private var § M§:Boolean = true;
      
      public function §>!T§(param1:String, param2:Number)
      {
         super();
         this.§4@§ = param1;
         this.§4!;§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §-a§() : String
      {
         return this.§4@§;
      }
      
      public function §;-§() : Function
      {
         return this.§6!R§;
      }
      
      public function §53§() : Function
      {
         return this.§;!T§;
      }
      
      public function §0!G§(param1:Object) : void
      {
         if(this.§ M§)
         {
            this.§6!R§.call(null,param1);
         }
      }
      
      public function §8L§(param1:Object) : void
      {
         if(this.§ M§)
         {
            this.§;!T§.call(null,param1);
         }
      }
      
      public function §5]§(param1:Function, param2:Function = null) : void
      {
         this.§6!R§ = param1;
         this.§;!T§ = param2;
      }
      
      public function §%<§() : void
      {
         this.§ M§ = false;
      }
      
      public function §,N§() : void
      {
         this.§ M§ = true;
      }
   }
}
