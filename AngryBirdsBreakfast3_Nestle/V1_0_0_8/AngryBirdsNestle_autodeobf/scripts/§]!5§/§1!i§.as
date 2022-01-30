package §]!5§
{
   public class §1!i§
   {
       
      
      private var §=!M§:Number;
      
      private var §>!5§:String;
      
      private var §7u§:Function;
      
      private var §"!;§:Function;
      
      private var §+!k§:Boolean = true;
      
      public function §1!i§(param1:String, param2:Number)
      {
         super();
         this.§>!5§ = param1;
         this.§=!M§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §>!$§() : String
      {
         return this.§>!5§;
      }
      
      public function §=!'§() : Function
      {
         return this.§7u§;
      }
      
      public function § !=§() : Function
      {
         return this.§"!;§;
      }
      
      public function §,4§(param1:Object) : void
      {
         if(this.§+!k§)
         {
            this.§7u§.call(null,param1);
         }
      }
      
      public function § 6§(param1:Object) : void
      {
         if(this.§+!k§)
         {
            this.§"!;§.call(null,param1);
         }
      }
      
      public function §]"§(param1:Function, param2:Function = null) : void
      {
         this.§7u§ = param1;
         this.§"!;§ = param2;
      }
      
      public function §1§() : void
      {
         this.§+!k§ = false;
      }
      
      public function §]!c§() : void
      {
         this.§+!k§ = true;
      }
   }
}
