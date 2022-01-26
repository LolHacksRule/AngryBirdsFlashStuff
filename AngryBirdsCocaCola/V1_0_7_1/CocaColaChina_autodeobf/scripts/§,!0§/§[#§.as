package §,!0§
{
   import §?@§.§"]§;
   
   public class §[#§
   {
       
      
      private var §-B§:String;
      
      private var §%[§:Vector.<Function>;
      
      private var §&P§:Boolean;
      
      public function §[#§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§-B§ = param1;
         this.§&P§ = param3;
         if(param2 != null)
         {
            §"]§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §<!Z§() : String
      {
         return this.§-B§;
      }
      
      public function §,$§(param1:Boolean) : void
      {
         this.§&P§ = param1;
      }
      
      public function §,!,§() : Boolean
      {
         return this.§&P§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§%[§ == null)
         {
            this.§%[§ = new Vector.<Function>();
         }
         if(this.§%[§.indexOf(param1) == -1)
         {
            this.§%[§.push(param1);
         }
      }
      
      public function § !5§(param1:Function) : void
      {
         if(this.§%[§.indexOf(param1) > -1)
         {
            this.§%[§.splice(this.§%[§.indexOf(param1),1);
         }
      }
      
      public function §>p§() : Vector.<Function>
      {
         return this.§%[§;
      }
   }
}
