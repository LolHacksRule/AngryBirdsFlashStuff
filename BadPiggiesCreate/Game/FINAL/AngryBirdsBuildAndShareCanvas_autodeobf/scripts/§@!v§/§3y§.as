package §@!v§
{
   import §=!M§.§9!P§;
   
   public class §3y§
   {
       
      
      private var §,!h§:String;
      
      private var §,O§:Vector.<Function>;
      
      private var §["%§:Boolean;
      
      public function §3y§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§,!h§ = param1;
         this.§["%§ = param3;
         if(param2 != null)
         {
            §9!P§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §]]§() : String
      {
         return this.§,!h§;
      }
      
      public function §1N§(param1:Boolean) : void
      {
         this.§["%§ = param1;
      }
      
      public function §%!0§() : Boolean
      {
         return this.§["%§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§,O§ == null)
         {
            this.§,O§ = new Vector.<Function>();
         }
         if(this.§,O§.indexOf(param1) == -1)
         {
            this.§,O§.push(param1);
         }
      }
      
      public function §^D§(param1:Function) : void
      {
         if(this.§,O§.indexOf(param1) > -1)
         {
            this.§,O§.splice(this.§,O§.indexOf(param1),1);
         }
      }
      
      public function §`'§() : Vector.<Function>
      {
         return this.§,O§;
      }
   }
}
