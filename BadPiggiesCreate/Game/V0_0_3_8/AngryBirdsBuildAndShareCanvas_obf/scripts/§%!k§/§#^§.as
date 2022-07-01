package §%!k§
{
   import §4u§.§<!L§;
   
   public class §#^§
   {
       
      
      private var §=o§:String;
      
      private var §,!7§:Vector.<Function>;
      
      private var §2!p§:Boolean;
      
      public function §#^§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§=o§ = param1;
         this.§2!p§ = param3;
         if(param2 != null)
         {
            §<!L§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §#h§() : String
      {
         return this.§=o§;
      }
      
      public function §6A§(param1:Boolean) : void
      {
         this.§2!p§ = param1;
      }
      
      public function §7@§() : Boolean
      {
         return this.§2!p§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§,!7§ == null)
         {
            this.§,!7§ = new Vector.<Function>();
         }
         if(this.§,!7§.indexOf(param1) == -1)
         {
            this.§,!7§.push(param1);
         }
      }
      
      public function §3!z§(param1:Function) : void
      {
         if(this.§,!7§.indexOf(param1) > -1)
         {
            this.§,!7§.splice(this.§,!7§.indexOf(param1),1);
         }
      }
      
      public function §+n§() : Vector.<Function>
      {
         return this.§,!7§;
      }
   }
}
