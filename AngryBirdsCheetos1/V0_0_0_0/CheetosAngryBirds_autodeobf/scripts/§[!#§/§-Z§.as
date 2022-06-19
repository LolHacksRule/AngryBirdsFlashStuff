package §[!#§
{
   import §@,§.§4h§;
   
   public class §-Z§
   {
       
      
      private var §96§:String;
      
      private var §3T§:Vector.<Function>;
      
      private var §3!W§:Boolean;
      
      public function §-Z§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§96§ = param1;
         this.§3!W§ = param3;
         if(param2 != null)
         {
            §4h§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §5!$§() : String
      {
         return this.§96§;
      }
      
      public function §&s§(param1:Boolean) : void
      {
         this.§3!W§ = param1;
      }
      
      public function §@_§() : Boolean
      {
         return this.§3!W§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§3T§ == null)
         {
            this.§3T§ = new Vector.<Function>();
         }
         if(this.§3T§.indexOf(param1) == -1)
         {
            this.§3T§.push(param1);
         }
      }
      
      public function §!9§(param1:Function) : void
      {
         if(this.§3T§.indexOf(param1) > -1)
         {
            this.§3T§.splice(this.§3T§.indexOf(param1),1);
         }
      }
      
      public function §=!@§() : Vector.<Function>
      {
         return this.§3T§;
      }
   }
}
