package §2<§
{
   public class §@d§
   {
       
      
      private var §`S§:Number;
      
      private var §4"8§:String;
      
      private var §%T§:Function;
      
      private var §,!^§:Function;
      
      private var §?k§:Boolean = true;
      
      public function §@d§(param1:String, param2:Number)
      {
         super();
         this.§4"8§ = param1;
         this.§`S§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §="J§() : String
      {
         return this.§4"8§;
      }
      
      public function §"!k§() : Function
      {
         return this.§%T§;
      }
      
      public function § -§() : Function
      {
         return this.§,!^§;
      }
      
      public function §#"N§(param1:Object) : void
      {
         if(this.§?k§)
         {
            this.§%T§.call(null,param1);
         }
      }
      
      public function §6"<§(param1:Object) : void
      {
         if(this.§?k§)
         {
            this.§,!^§.call(null,param1);
         }
      }
      
      public function §3!L§(param1:Function, param2:Function = null) : void
      {
         this.§%T§ = param1;
         this.§,!^§ = param2;
      }
      
      public function §1!k§() : void
      {
         this.§?k§ = false;
      }
      
      public function §&J§() : void
      {
         this.§?k§ = true;
      }
   }
}
