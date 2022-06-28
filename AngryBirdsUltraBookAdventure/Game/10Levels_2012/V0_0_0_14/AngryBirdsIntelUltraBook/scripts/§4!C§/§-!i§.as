package §4!C§
{
   public class §-!i§
   {
       
      
      private var §4!Q§:Number;
      
      private var §^!5§:String;
      
      private var §3x§:Function;
      
      private var §`H§:Function;
      
      private var §1!F§:Boolean = true;
      
      public function §-!i§(param1:String, param2:Number)
      {
         super();
         this.§^!5§ = param1;
         this.§4!Q§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §8! §() : String
      {
         return this.§^!5§;
      }
      
      public function §7@§() : Function
      {
         return this.§3x§;
      }
      
      public function §=s§() : Function
      {
         return this.§`H§;
      }
      
      public function §7!7§(param1:Object) : void
      {
         if(this.§1!F§)
         {
            this.§3x§.call(null,param1);
         }
      }
      
      public function § G§(param1:Object) : void
      {
         if(this.§1!F§)
         {
            this.§`H§.call(null,param1);
         }
      }
      
      public function §^9§(param1:Function, param2:Function = null) : void
      {
         this.§3x§ = param1;
         this.§`H§ = param2;
      }
      
      public function §0s§() : void
      {
         this.§1!F§ = false;
      }
      
      public function §>T§() : void
      {
         this.§1!F§ = true;
      }
   }
}
