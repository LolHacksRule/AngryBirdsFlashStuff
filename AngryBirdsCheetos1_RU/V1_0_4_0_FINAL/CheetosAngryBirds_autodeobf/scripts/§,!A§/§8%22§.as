package §,!A§
{
   public class §8"§
   {
       
      
      private var §3z§:Number;
      
      private var §6P§:String;
      
      private var §=!]§:Function;
      
      private var §]N§:Function;
      
      private var §2B§:Boolean = true;
      
      public function §8"§(param1:String, param2:Number)
      {
         super();
         this.§6P§ = param1;
         this.§3z§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §?!>§() : String
      {
         return this.§6P§;
      }
      
      public function §%t§() : Function
      {
         return this.§=!]§;
      }
      
      public function §]J§() : Function
      {
         return this.§]N§;
      }
      
      public function §0!@§(param1:Object) : void
      {
         if(this.§2B§)
         {
            this.§=!]§.call(null,param1);
         }
      }
      
      public function §9!G§(param1:Object) : void
      {
         if(this.§2B§)
         {
            this.§]N§.call(null,param1);
         }
      }
      
      public function §'d§(param1:Function, param2:Function = null) : void
      {
         this.§=!]§ = param1;
         this.§]N§ = param2;
      }
      
      public function §8]§() : void
      {
         this.§2B§ = false;
      }
      
      public function §'!M§() : void
      {
         this.§2B§ = true;
      }
   }
}
