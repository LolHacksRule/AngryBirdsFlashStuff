package §2,§
{
   import § !Q§.§"D§;
   
   public class §#!m§
   {
       
      
      private var §@"2§:String;
      
      private var §>T§:Vector.<Function>;
      
      private var §7"3§:Boolean;
      
      public function §#!m§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§@"2§ = param1;
         this.§7"3§ = param3;
         if(param2 != null)
         {
            §"D§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §^!@§() : String
      {
         return this.§@"2§;
      }
      
      public function §<!c§(param1:Boolean) : void
      {
         this.§7"3§ = param1;
      }
      
      public function §6!G§() : Boolean
      {
         return this.§7"3§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§>T§ == null)
         {
            this.§>T§ = new Vector.<Function>();
         }
         if(this.§>T§.indexOf(param1) == -1)
         {
            this.§>T§.push(param1);
         }
      }
      
      public function §0x§(param1:Function) : void
      {
         if(this.§>T§.indexOf(param1) > -1)
         {
            this.§>T§.splice(this.§>T§.indexOf(param1),1);
         }
      }
      
      public function §#!e§() : Vector.<Function>
      {
         return this.§>T§;
      }
   }
}
