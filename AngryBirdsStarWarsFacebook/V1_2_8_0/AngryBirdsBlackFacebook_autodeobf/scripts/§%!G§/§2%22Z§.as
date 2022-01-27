package §%!G§
{
   public class §2"Z§
   {
       
      
      private var §?"o§:Number;
      
      private var § c§:String;
      
      private var §]"m§:Function;
      
      private var §2"t§:Function;
      
      private var §6"]§:Boolean = true;
      
      public function §2"Z§(param1:String, param2:Number)
      {
         super();
         this.§ c§ = param1;
         this.§?"o§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §8"F§() : String
      {
         return this.§ c§;
      }
      
      public function § !P§() : Function
      {
         return this.§]"m§;
      }
      
      public function §6!S§() : Function
      {
         return this.§2"t§;
      }
      
      public function §-"W§(param1:Object) : void
      {
         if(this.§6"]§)
         {
            this.§]"m§.call(null,param1);
         }
      }
      
      public function § !]§(param1:Object) : void
      {
         if(this.§6"]§)
         {
            this.§2"t§.call(null,param1);
         }
      }
      
      public function §2"0§(param1:Function, param2:Function = null) : void
      {
         this.§]"m§ = param1;
         this.§2"t§ = param2;
      }
      
      public function §,!K§() : void
      {
         this.§6"]§ = false;
      }
      
      public function §1e§() : void
      {
         this.§6"]§ = true;
      }
   }
}
