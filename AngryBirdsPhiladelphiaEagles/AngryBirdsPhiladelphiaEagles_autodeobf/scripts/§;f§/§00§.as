package §;f§
{
   public class §00§
   {
       
      
      private var §5C§:Number;
      
      private var §7F§:String;
      
      private var §]!E§:Function;
      
      private var §]!&§:Function;
      
      private var §%=§:Boolean = true;
      
      public function §00§(param1:String, param2:Number)
      {
         super();
         this.§7F§ = param1;
         this.§5C§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §`P§() : String
      {
         return this.§7F§;
      }
      
      public function §=!&§() : Function
      {
         return this.§]!E§;
      }
      
      public function §4t§() : Function
      {
         return this.§]!&§;
      }
      
      public function §#?§(param1:Object) : void
      {
         if(this.§%=§)
         {
            this.§]!E§.call(null,param1);
         }
      }
      
      public function §>!D§(param1:Object) : void
      {
         if(this.§%=§)
         {
            this.§]!&§.call(null,param1);
         }
      }
      
      public function § 8§(param1:Function, param2:Function = null) : void
      {
         this.§]!E§ = param1;
         this.§]!&§ = param2;
      }
      
      public function §`h§() : void
      {
         this.§%=§ = false;
      }
      
      public function §2C§() : void
      {
         this.§%=§ = true;
      }
   }
}
