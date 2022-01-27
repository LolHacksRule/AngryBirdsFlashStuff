package §""=§
{
   import §6!C§.§6E§;
   
   public class §0l§
   {
       
      
      private var §if§:String;
      
      private var §@T§:Vector.<Function>;
      
      private var §2!$§:Boolean;
      
      public function §0l§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§if§ = param1;
         this.§2!$§ = param3;
         if(param2 != null)
         {
            §6E§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §;!s§() : String
      {
         return this.§if§;
      }
      
      public function §`G§(param1:Boolean) : void
      {
         this.§2!$§ = param1;
      }
      
      public function §=Y§() : Boolean
      {
         return this.§2!$§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§@T§ == null)
         {
            this.§@T§ = new Vector.<Function>();
         }
         if(this.§@T§.indexOf(param1) == -1)
         {
            this.§@T§.push(param1);
         }
      }
      
      public function §,!g§(param1:Function) : void
      {
         if(this.§@T§.indexOf(param1) > -1)
         {
            this.§@T§.splice(this.§@T§.indexOf(param1),1);
         }
      }
      
      public function §`n§() : Vector.<Function>
      {
         return this.§@T§;
      }
   }
}
