package §5m§
{
   public class §0"§
   {
       
      
      private var §=i§:Number;
      
      private var §-$§:String;
      
      private var §!@§:Function;
      
      private var §2!A§:Function;
      
      private var §+`§:Boolean = true;
      
      public function §0"§(param1:String, param2:Number)
      {
         super();
         this.§-$§ = param1;
         this.§=i§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §0j§() : String
      {
         return this.§-$§;
      }
      
      public function §%!'§() : Function
      {
         return this.§!@§;
      }
      
      public function §%5§() : Function
      {
         return this.§2!A§;
      }
      
      public function §@5§(param1:Object) : void
      {
         if(this.§+`§)
         {
            this.§!@§.call(null,param1);
         }
      }
      
      public function §7-§(param1:Object) : void
      {
         if(this.§+`§)
         {
            this.§2!A§.call(null,param1);
         }
      }
      
      public function §!R§(param1:Function, param2:Function = null) : void
      {
         this.§!@§ = param1;
         this.§2!A§ = param2;
      }
      
      public function §<D§() : void
      {
         this.§+`§ = false;
      }
      
      public function §8!0§() : void
      {
         this.§+`§ = true;
      }
   }
}
