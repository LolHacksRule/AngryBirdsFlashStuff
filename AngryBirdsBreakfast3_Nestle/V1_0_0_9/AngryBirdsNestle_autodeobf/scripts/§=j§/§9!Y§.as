package §=j§
{
   public class §9!Y§
   {
       
      
      private var §1!0§:Number;
      
      private var §9!c§:String;
      
      private var §=a§:Function;
      
      private var §84§:Function;
      
      private var §2G§:Boolean = true;
      
      public function §9!Y§(param1:String, param2:Number)
      {
         super();
         this.§9!c§ = param1;
         this.§1!0§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §6$§() : String
      {
         return this.§9!c§;
      }
      
      public function §66§() : Function
      {
         return this.§=a§;
      }
      
      public function §@4§() : Function
      {
         return this.§84§;
      }
      
      public function §^!V§(param1:Object) : void
      {
         if(this.§2G§)
         {
            this.§=a§.call(null,param1);
         }
      }
      
      public function §!+§(param1:Object) : void
      {
         if(this.§2G§)
         {
            this.§84§.call(null,param1);
         }
      }
      
      public function §,?§(param1:Function, param2:Function = null) : void
      {
         this.§=a§ = param1;
         this.§84§ = param2;
      }
      
      public function §7!u§() : void
      {
         this.§2G§ = false;
      }
      
      public function §#!%§() : void
      {
         this.§2G§ = true;
      }
   }
}
