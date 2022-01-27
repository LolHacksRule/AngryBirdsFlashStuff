package §@!%§
{
   import §@V§.§`!5§;
   
   public class §"!D§
   {
       
      
      private var §%1§:String;
      
      private var §`&§:Vector.<Function>;
      
      private var §<t§:Boolean;
      
      public function §"!D§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§%1§ = param1;
         this.§<t§ = param3;
         if(param2 != null)
         {
            §`!5§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §3N§() : String
      {
         return this.§%1§;
      }
      
      public function §;!<§(param1:Boolean) : void
      {
         this.§<t§ = param1;
      }
      
      public function §=z§() : Boolean
      {
         return this.§<t§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§`&§ == null)
         {
            this.§`&§ = new Vector.<Function>();
         }
         if(this.§`&§.indexOf(param1) == -1)
         {
            this.§`&§.push(param1);
         }
      }
      
      public function §6t§(param1:Function) : void
      {
         if(this.§`&§.indexOf(param1) > -1)
         {
            this.§`&§.splice(this.§`&§.indexOf(param1),1);
         }
      }
      
      public function §7!N§() : Vector.<Function>
      {
         return this.§`&§;
      }
   }
}
