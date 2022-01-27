package §`"!§
{
   import §""<§.§#N§;
   
   public class §3w§
   {
       
      
      private var §7!0§:String;
      
      private var §75§:Vector.<Function>;
      
      private var §1G§:Boolean;
      
      public function §3w§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§7!0§ = param1;
         this.§1G§ = param3;
         if(param2 != null)
         {
            §#N§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §%!o§() : String
      {
         return this.§7!0§;
      }
      
      public function §@"<§(param1:Boolean) : void
      {
         this.§1G§ = param1;
      }
      
      public function §18§() : Boolean
      {
         return this.§1G§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§75§ == null)
         {
            this.§75§ = new Vector.<Function>();
         }
         if(this.§75§.indexOf(param1) == -1)
         {
            this.§75§.push(param1);
         }
      }
      
      public function §-8§(param1:Function) : void
      {
         if(this.§75§.indexOf(param1) > -1)
         {
            this.§75§.splice(this.§75§.indexOf(param1),1);
         }
      }
      
      public function §`U§() : Vector.<Function>
      {
         return this.§75§;
      }
   }
}
