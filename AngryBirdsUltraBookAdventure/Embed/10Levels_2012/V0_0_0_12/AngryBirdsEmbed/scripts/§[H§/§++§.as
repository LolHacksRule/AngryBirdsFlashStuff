package §[H§
{
   public class §++§
   {
       
      
      private var §;5§:Number;
      
      private var §,!$§:String;
      
      private var §>J§:Function;
      
      private var §>%§:Function;
      
      private var §6!<§:Boolean = true;
      
      public function §++§(param1:String, param2:Number)
      {
         super();
         this.§,!$§ = param1;
         this.§;5§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §,f§() : String
      {
         return this.§,!$§;
      }
      
      public function §@n§() : Function
      {
         return this.§>J§;
      }
      
      public function §"u§() : Function
      {
         return this.§>%§;
      }
      
      public function §^X§(param1:Object) : void
      {
         if(this.§6!<§)
         {
            this.§>J§.call(null,param1);
         }
      }
      
      public function §2!>§(param1:Object) : void
      {
         if(this.§6!<§)
         {
            this.§>%§.call(null,param1);
         }
      }
      
      public function §"?§(param1:Function, param2:Function = null) : void
      {
         this.§>J§ = param1;
         this.§>%§ = param2;
      }
      
      public function §=b§() : void
      {
         this.§6!<§ = false;
      }
      
      public function §`H§() : void
      {
         this.§6!<§ = true;
      }
   }
}
