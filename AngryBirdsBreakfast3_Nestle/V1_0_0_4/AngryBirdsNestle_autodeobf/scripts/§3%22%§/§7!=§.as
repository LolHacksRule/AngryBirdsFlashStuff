package §3"%§
{
   public class §7!=§
   {
       
      
      private var §;!W§:Number;
      
      private var §2!7§:String;
      
      private var §1!f§:Function;
      
      private var § !<§:Function;
      
      private var §9f§:Boolean = true;
      
      public function §7!=§(param1:String, param2:Number)
      {
         super();
         this.§2!7§ = param1;
         this.§;!W§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §?!;§() : String
      {
         return this.§2!7§;
      }
      
      public function §8V§() : Function
      {
         return this.§1!f§;
      }
      
      public function §%2§() : Function
      {
         return this.§ !<§;
      }
      
      public function §@`§(param1:Object) : void
      {
         if(this.§9f§)
         {
            this.§1!f§.call(null,param1);
         }
      }
      
      public function §[g§(param1:Object) : void
      {
         if(this.§9f§)
         {
            this.§ !<§.call(null,param1);
         }
      }
      
      public function §-2§(param1:Function, param2:Function = null) : void
      {
         this.§1!f§ = param1;
         this.§ !<§ = param2;
      }
      
      public function §,U§() : void
      {
         this.§9f§ = false;
      }
      
      public function §[!s§() : void
      {
         this.§9f§ = true;
      }
   }
}
