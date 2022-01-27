package §6!F§
{
   import §3a§.§7!+§;
   
   public class §3!>§
   {
       
      
      private var §#j§:String;
      
      private var §<W§:Vector.<Function>;
      
      private var §3!E§:Boolean;
      
      public function §3!>§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§#j§ = param1;
         this.§3!E§ = param3;
         if(param2 != null)
         {
            §7!+§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §&D§() : String
      {
         return this.§#j§;
      }
      
      public function §!!B§(param1:Boolean) : void
      {
         this.§3!E§ = param1;
      }
      
      public function §&!7§() : Boolean
      {
         return this.§3!E§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§<W§ == null)
         {
            this.§<W§ = new Vector.<Function>();
         }
         if(this.§<W§.indexOf(param1) == -1)
         {
            this.§<W§.push(param1);
         }
      }
      
      public function §@u§(param1:Function) : void
      {
         if(this.§<W§.indexOf(param1) > -1)
         {
            this.§<W§.splice(this.§<W§.indexOf(param1),1);
         }
      }
      
      public function §@Y§() : Vector.<Function>
      {
         return this.§<W§;
      }
   }
}
