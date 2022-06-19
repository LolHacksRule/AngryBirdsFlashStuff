package §3@§
{
   import §>^§.§!6§;
   
   public class §^!Q§
   {
       
      
      private var § z§:String;
      
      private var §^D§:Vector.<Function>;
      
      private var §,!+§:Boolean;
      
      public function §^!Q§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§ z§ = param1;
         this.§,!+§ = param3;
         if(param2 != null)
         {
            §!6§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §@!I§() : String
      {
         return this.§ z§;
      }
      
      public function §&R§(param1:Boolean) : void
      {
         this.§,!+§ = param1;
      }
      
      public function §@!?§() : Boolean
      {
         return this.§,!+§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§^D§ == null)
         {
            this.§^D§ = new Vector.<Function>();
         }
         if(this.§^D§.indexOf(param1) == -1)
         {
            this.§^D§.push(param1);
         }
      }
      
      public function §,2§(param1:Function) : void
      {
         if(this.§^D§.indexOf(param1) > -1)
         {
            this.§^D§.splice(this.§^D§.indexOf(param1),1);
         }
      }
      
      public function §6O§() : Vector.<Function>
      {
         return this.§^D§;
      }
   }
}
