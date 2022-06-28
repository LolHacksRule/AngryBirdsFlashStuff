package §-^§
{
   public class §#J§
   {
       
      
      private var §,Q§:Number;
      
      private var §@!t§:String;
      
      private var §?t§:Function;
      
      private var §'D§:Function;
      
      private var § !k§:Boolean = true;
      
      public function §#J§(param1:String, param2:Number)
      {
         super();
         this.§@!t§ = param1;
         this.§,Q§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function § !§() : String
      {
         return this.§@!t§;
      }
      
      public function §`c§() : Function
      {
         return this.§?t§;
      }
      
      public function §56§() : Function
      {
         return this.§'D§;
      }
      
      public function §false§(param1:Object) : void
      {
         if(this.§ !k§)
         {
            this.§?t§.call(null,param1);
         }
      }
      
      public function §[3§(param1:Object) : void
      {
         if(this.§ !k§)
         {
            this.§'D§.call(null,param1);
         }
      }
      
      public function §%,§(param1:Function, param2:Function = null) : void
      {
         this.§?t§ = param1;
         this.§'D§ = param2;
      }
      
      public function §>"§() : void
      {
         this.§ !k§ = false;
      }
      
      public function §>^§() : void
      {
         this.§ !k§ = true;
      }
   }
}
