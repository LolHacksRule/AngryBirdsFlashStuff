package §%!B§
{
   public class §9+§
   {
       
      
      private var §9!_§:Number;
      
      private var §<!W§:String;
      
      private var §-2§:Function;
      
      private var §]!c§:Function;
      
      private var §2e§:Boolean = true;
      
      public function §9+§(param1:String, param2:Number)
      {
         super();
         this.§<!W§ = param1;
         this.§9!_§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §2!N§() : String
      {
         return this.§<!W§;
      }
      
      public function §>!_§() : Function
      {
         return this.§-2§;
      }
      
      public function §2O§() : Function
      {
         return this.§]!c§;
      }
      
      public function §;7§(param1:Object) : void
      {
         if(this.§2e§)
         {
            this.§-2§.call(null,param1);
         }
      }
      
      public function §2'§(param1:Object) : void
      {
         if(this.§2e§)
         {
            this.§]!c§.call(null,param1);
         }
      }
      
      public function §1Y§(param1:Function, param2:Function = null) : void
      {
         this.§-2§ = param1;
         this.§]!c§ = param2;
      }
      
      public function §;K§() : void
      {
         this.§2e§ = false;
      }
      
      public function § 4§() : void
      {
         this.§2e§ = true;
      }
   }
}
