package §6!a§
{
   public class §?!!§
   {
       
      
      private var §5H§:Number;
      
      private var §<0§:String;
      
      private var §`D§:Function;
      
      private var §,!b§:Function;
      
      private var §7!9§:Boolean = true;
      
      public function §?!!§(param1:String, param2:Number)
      {
         super();
         this.§<0§ = param1;
         this.§5H§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §^!B§() : String
      {
         return this.§<0§;
      }
      
      public function §0!'§() : Function
      {
         return this.§`D§;
      }
      
      public function §2!8§() : Function
      {
         return this.§,!b§;
      }
      
      public function § !6§(param1:Object) : void
      {
         if(this.§7!9§)
         {
            this.§`D§.call(null,param1);
         }
      }
      
      public function §3!_§(param1:Object) : void
      {
         if(this.§7!9§)
         {
            this.§,!b§.call(null,param1);
         }
      }
      
      public function §]!5§(param1:Function, param2:Function = null) : void
      {
         this.§`D§ = param1;
         this.§,!b§ = param2;
      }
      
      public function §;k§() : void
      {
         this.§7!9§ = false;
      }
      
      public function §1?§() : void
      {
         this.§7!9§ = true;
      }
   }
}
