package §<[§
{
   import §&N§.§@,§;
   
   public class §0_§
   {
       
      
      private var §-Z§:String;
      
      private var §96§:Vector.<Function>;
      
      private var §3T§:Boolean;
      
      public function §0_§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§-Z§ = param1;
         this.§3T§ = param3;
         if(param2 != null)
         {
            §@,§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §3!W§() : String
      {
         return this.§-Z§;
      }
      
      public function §5!$§(param1:Boolean) : void
      {
         this.§3T§ = param1;
      }
      
      public function §&s§() : Boolean
      {
         return this.§3T§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§96§ == null)
         {
            this.§96§ = new Vector.<Function>();
         }
         if(this.§96§.indexOf(param1) == -1)
         {
            this.§96§.push(param1);
         }
      }
      
      public function §@_§(param1:Function) : void
      {
         if(this.§96§.indexOf(param1) > -1)
         {
            this.§96§.splice(this.§96§.indexOf(param1),1);
         }
      }
      
      public function §!9§() : Vector.<Function>
      {
         return this.§96§;
      }
   }
}
