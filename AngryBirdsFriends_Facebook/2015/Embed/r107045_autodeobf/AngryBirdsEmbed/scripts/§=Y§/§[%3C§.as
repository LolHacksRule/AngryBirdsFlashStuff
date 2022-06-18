package §=Y§
{
   import §@!;§.§!!=§;
   
   public class §[<§
   {
       
      
      private var §=f§:String;
      
      private var §>!0§:Vector.<Function>;
      
      private var §2z§:Boolean;
      
      public function §[<§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§=f§ = param1;
         this.§2z§ = param3;
         if(param2 != null)
         {
            §!!=§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §[u§() : String
      {
         return this.§=f§;
      }
      
      public function §-G§(param1:Boolean) : void
      {
         this.§2z§ = param1;
      }
      
      public function §%!G§() : Boolean
      {
         return this.§2z§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§>!0§ == null)
         {
            this.§>!0§ = new Vector.<Function>();
         }
         if(this.§>!0§.indexOf(param1) == -1)
         {
            this.§>!0§.push(param1);
         }
      }
      
      public function § H§(param1:Function) : void
      {
         if(this.§>!0§.indexOf(param1) > -1)
         {
            this.§>!0§.splice(this.§>!0§.indexOf(param1),1);
         }
      }
      
      public function §2j§() : Vector.<Function>
      {
         return this.§>!0§;
      }
   }
}
