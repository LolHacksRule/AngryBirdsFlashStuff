package § i§
{
   public class §,D§
   {
       
      
      private var §=!o§:Number;
      
      private var §5!9§:String;
      
      private var §"F§:Function;
      
      private var §=!C§:Function;
      
      private var §>!h§:Boolean = true;
      
      public function §,D§(param1:String, param2:Number)
      {
         super();
         this.§5!9§ = param1;
         this.§=!o§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §<L§() : String
      {
         return this.§5!9§;
      }
      
      public function §7g§() : Function
      {
         return this.§"F§;
      }
      
      public function §,f§() : Function
      {
         return this.§=!C§;
      }
      
      public function §&!-§(param1:Object) : void
      {
         if(this.§>!h§)
         {
            this.§"F§.call(null,param1);
         }
      }
      
      public function §!"§(param1:Object) : void
      {
         if(this.§>!h§)
         {
            this.§=!C§.call(null,param1);
         }
      }
      
      public function § !j§(param1:Function, param2:Function = null) : void
      {
         this.§"F§ = param1;
         this.§=!C§ = param2;
      }
      
      public function §+A§() : void
      {
         this.§>!h§ = false;
      }
      
      public function §+"&§() : void
      {
         this.§>!h§ = true;
      }
   }
}
