package §6!F§
{
   public class §2!?§
   {
       
      
      private var §7d§:Number;
      
      private var §[!H§:String;
      
      private var §?!N§:Function;
      
      private var §=!&§:Function;
      
      private var §&@§:Boolean = true;
      
      public function §2!?§(param1:String, param2:Number)
      {
         super();
         this.§[!H§ = param1;
         this.§7d§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §0S§() : String
      {
         return this.§[!H§;
      }
      
      public function §%9§() : Function
      {
         return this.§?!N§;
      }
      
      public function §]!2§() : Function
      {
         return this.§=!&§;
      }
      
      public function § !L§(param1:Object) : void
      {
         if(this.§&@§)
         {
            this.§?!N§.call(null,param1);
         }
      }
      
      public function §]Y§(param1:Object) : void
      {
         if(this.§&@§)
         {
            this.§=!&§.call(null,param1);
         }
      }
      
      public function §,4§(param1:Function, param2:Function = null) : void
      {
         this.§?!N§ = param1;
         this.§=!&§ = param2;
      }
      
      public function §7!C§() : void
      {
         this.§&@§ = false;
      }
      
      public function §@5§() : void
      {
         this.§&@§ = true;
      }
   }
}
