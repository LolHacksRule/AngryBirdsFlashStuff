package §&!0§
{
   public class §2a§
   {
       
      
      private var §class§:Number;
      
      private var §>!<§:String;
      
      private var §^'§:Function;
      
      private var §`!r§:Function;
      
      private var §01§:Boolean = true;
      
      public function §2a§(param1:String, param2:Number)
      {
         super();
         this.§>!<§ = param1;
         this.§class§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §'!k§() : String
      {
         return this.§>!<§;
      }
      
      public function §-!7§() : Function
      {
         return this.§^'§;
      }
      
      public function §,!%§() : Function
      {
         return this.§`!r§;
      }
      
      public function §,;§(param1:Object) : void
      {
         if(this.§01§)
         {
            this.§^'§.call(null,param1);
         }
      }
      
      public function §#!A§(param1:Object) : void
      {
         if(this.§01§)
         {
            this.§`!r§.call(null,param1);
         }
      }
      
      public function §&!,§(param1:Function, param2:Function = null) : void
      {
         this.§^'§ = param1;
         this.§`!r§ = param2;
      }
      
      public function § for§() : void
      {
         this.§01§ = false;
      }
      
      public function §%t§() : void
      {
         this.§01§ = true;
      }
   }
}
