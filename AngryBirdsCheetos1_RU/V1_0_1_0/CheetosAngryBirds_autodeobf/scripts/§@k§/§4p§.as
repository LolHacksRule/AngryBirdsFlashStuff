package §@k§
{
   import §%t§.§@!%§;
   
   public class §4p§
   {
       
      
      private var §59§:String;
      
      private var §;N§:Vector.<Function>;
      
      private var §2V§:Boolean;
      
      public function §4p§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§59§ = param1;
         this.§2V§ = param3;
         if(param2 != null)
         {
            §@!%§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §^!2§() : String
      {
         return this.§59§;
      }
      
      public function §!L§(param1:Boolean) : void
      {
         this.§2V§ = param1;
      }
      
      public function §3!R§() : Boolean
      {
         return this.§2V§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§;N§ == null)
         {
            this.§;N§ = new Vector.<Function>();
         }
         if(this.§;N§.indexOf(param1) == -1)
         {
            this.§;N§.push(param1);
         }
      }
      
      public function §&&§(param1:Function) : void
      {
         if(this.§;N§.indexOf(param1) > -1)
         {
            this.§;N§.splice(this.§;N§.indexOf(param1),1);
         }
      }
      
      public function §0!P§() : Vector.<Function>
      {
         return this.§;N§;
      }
   }
}
