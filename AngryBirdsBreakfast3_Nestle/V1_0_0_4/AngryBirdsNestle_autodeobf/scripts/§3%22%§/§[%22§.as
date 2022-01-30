package §3"%§
{
   import §"I§.§=!U§;
   
   public class §["§
   {
       
      
      private var §4G§:String;
      
      private var §4P§:Vector.<Function>;
      
      private var §"<§:Boolean;
      
      public function §["§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§4G§ = param1;
         this.§"<§ = param3;
         if(param2 != null)
         {
            §=!U§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §-8§() : String
      {
         return this.§4G§;
      }
      
      public function §default§(param1:Boolean) : void
      {
         this.§"<§ = param1;
      }
      
      public function §;!B§() : Boolean
      {
         return this.§"<§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§4P§ == null)
         {
            this.§4P§ = new Vector.<Function>();
         }
         if(this.§4P§.indexOf(param1) == -1)
         {
            this.§4P§.push(param1);
         }
      }
      
      public function §5J§(param1:Function) : void
      {
         if(this.§4P§.indexOf(param1) > -1)
         {
            this.§4P§.splice(this.§4P§.indexOf(param1),1);
         }
      }
      
      public function §^>§() : Vector.<Function>
      {
         return this.§4P§;
      }
   }
}
