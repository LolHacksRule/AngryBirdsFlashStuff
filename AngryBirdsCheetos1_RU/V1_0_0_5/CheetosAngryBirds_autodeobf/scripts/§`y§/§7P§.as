package §`y§
{
   import §!4§.§=!Z§;
   
   public class §7P§
   {
       
      
      private var §6s§:String;
      
      private var §,!V§:Vector.<Function>;
      
      private var §87§:Boolean;
      
      public function §7P§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§6s§ = param1;
         this.§87§ = param3;
         if(param2 != null)
         {
            §=!Z§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §;!=§() : String
      {
         return this.§6s§;
      }
      
      public function §@&§(param1:Boolean) : void
      {
         this.§87§ = param1;
      }
      
      public function §"B§() : Boolean
      {
         return this.§87§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§,!V§ == null)
         {
            this.§,!V§ = new Vector.<Function>();
         }
         if(this.§,!V§.indexOf(param1) == -1)
         {
            this.§,!V§.push(param1);
         }
      }
      
      public function §true§(param1:Function) : void
      {
         if(this.§,!V§.indexOf(param1) > -1)
         {
            this.§,!V§.splice(this.§,!V§.indexOf(param1),1);
         }
      }
      
      public function §3O§() : Vector.<Function>
      {
         return this.§,!V§;
      }
   }
}
