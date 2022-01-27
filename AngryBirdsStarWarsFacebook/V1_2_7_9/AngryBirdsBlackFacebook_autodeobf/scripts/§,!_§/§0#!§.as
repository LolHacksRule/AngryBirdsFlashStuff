package §,!_§
{
   import §0"I§.§5!s§;
   
   public class §0#!§
   {
       
      
      private var §?"z§:String;
      
      private var §1Q§:Vector.<Function>;
      
      private var §5!i§:Boolean;
      
      public function §0#!§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§?"z§ = param1;
         this.§5!i§ = param3;
         if(param2 != null)
         {
            §5!s§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §-S§() : String
      {
         return this.§?"z§;
      }
      
      public function §<"Z§(param1:Boolean) : void
      {
         this.§5!i§ = param1;
      }
      
      public function §;!C§() : Boolean
      {
         return this.§5!i§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§1Q§ == null)
         {
            this.§1Q§ = new Vector.<Function>();
         }
         if(this.§1Q§.indexOf(param1) == -1)
         {
            this.§1Q§.push(param1);
         }
      }
      
      public function §0"<§(param1:Function) : void
      {
         if(this.§1Q§.indexOf(param1) > -1)
         {
            this.§1Q§.splice(this.§1Q§.indexOf(param1),1);
         }
      }
      
      public function §;"A§() : Vector.<Function>
      {
         return this.§1Q§;
      }
   }
}
