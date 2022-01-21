package §%!B§
{
   import §5K§.§[C§;
   
   public class §5!U§
   {
       
      
      private var §9!G§:String;
      
      private var §;!T§:Vector.<Function>;
      
      private var §2$§:Boolean;
      
      public function §5!U§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§9!G§ = param1;
         this.§2$§ = param3;
         if(param2 != null)
         {
            §[C§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §,8§() : String
      {
         return this.§9!G§;
      }
      
      public function §@S§(param1:Boolean) : void
      {
         this.§2$§ = param1;
      }
      
      public function §>3§() : Boolean
      {
         return this.§2$§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§;!T§ == null)
         {
            this.§;!T§ = new Vector.<Function>();
         }
         if(this.§;!T§.indexOf(param1) == -1)
         {
            this.§;!T§.push(param1);
         }
      }
      
      public function §2!p§(param1:Function) : void
      {
         if(this.§;!T§.indexOf(param1) > -1)
         {
            this.§;!T§.splice(this.§;!T§.indexOf(param1),1);
         }
      }
      
      public function §[!k§() : Vector.<Function>
      {
         return this.§;!T§;
      }
   }
}
