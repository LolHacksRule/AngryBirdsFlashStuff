package §@V§
{
   import §]!6§.§6Y§;
   
   public class §`#q§
   {
       
      
      private var §6"W§:String;
      
      private var §8C§:Vector.<Function>;
      
      private var §'`§:Boolean;
      
      public function §`#q§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§6"W§ = param1;
         this.§'`§ = param3;
         if(param2 != null)
         {
            §6Y§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §;"p§() : String
      {
         return this.§6"W§;
      }
      
      public function §]$<§(param1:Boolean) : void
      {
         this.§'`§ = param1;
      }
      
      public function §,d§() : Boolean
      {
         return this.§'`§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§8C§ == null)
         {
            this.§8C§ = new Vector.<Function>();
         }
         if(this.§8C§.indexOf(param1) == -1)
         {
            this.§8C§.push(param1);
         }
      }
      
      public function §,"i§(param1:Function) : void
      {
         if(this.§8C§.indexOf(param1) > -1)
         {
            this.§8C§.splice(this.§8C§.indexOf(param1),1);
         }
      }
      
      public function §?"6§() : Vector.<Function>
      {
         return this.§8C§;
      }
   }
}
