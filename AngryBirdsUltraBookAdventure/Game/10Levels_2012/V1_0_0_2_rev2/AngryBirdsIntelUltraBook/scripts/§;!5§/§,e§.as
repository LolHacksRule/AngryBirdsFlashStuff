package §;!5§
{
   import §^_§.§!>§;
   
   public class §,e§
   {
       
      
      private var §7D§:String;
      
      private var §`>§:Vector.<Function>;
      
      private var §<P§:Boolean;
      
      public function §,e§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§7D§ = param1;
         this.§<P§ = param3;
         if(param2 != null)
         {
            §!>§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §>q§() : String
      {
         return this.§7D§;
      }
      
      public function § var§(param1:Boolean) : void
      {
         this.§<P§ = param1;
      }
      
      public function §#@§() : Boolean
      {
         return this.§<P§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§`>§ == null)
         {
            this.§`>§ = new Vector.<Function>();
         }
         if(this.§`>§.indexOf(param1) == -1)
         {
            this.§`>§.push(param1);
         }
      }
      
      public function §<a§(param1:Function) : void
      {
         if(this.§`>§.indexOf(param1) > -1)
         {
            this.§`>§.splice(this.§`>§.indexOf(param1),1);
         }
      }
      
      public function §#!R§() : Vector.<Function>
      {
         return this.§`>§;
      }
   }
}
