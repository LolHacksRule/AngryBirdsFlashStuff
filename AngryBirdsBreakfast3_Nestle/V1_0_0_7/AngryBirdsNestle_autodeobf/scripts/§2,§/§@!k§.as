package §2,§
{
   public class §@!k§
   {
       
      
      private var §7!g§:Number;
      
      private var §49§:String;
      
      private var §<!K§:Function;
      
      private var §;I§:Function;
      
      private var §7!!§:Boolean = true;
      
      public function §@!k§(param1:String, param2:Number)
      {
         super();
         this.§49§ = param1;
         this.§7!g§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §7U§() : String
      {
         return this.§49§;
      }
      
      public function §"!j§() : Function
      {
         return this.§<!K§;
      }
      
      public function §;!5§() : Function
      {
         return this.§;I§;
      }
      
      public function §]m§(param1:Object) : void
      {
         if(this.§7!!§)
         {
            this.§<!K§.call(null,param1);
         }
      }
      
      public function § !k§(param1:Object) : void
      {
         if(this.§7!!§)
         {
            this.§;I§.call(null,param1);
         }
      }
      
      public function §]]§(param1:Function, param2:Function = null) : void
      {
         this.§<!K§ = param1;
         this.§;I§ = param2;
      }
      
      public function §5C§() : void
      {
         this.§7!!§ = false;
      }
      
      public function § J§() : void
      {
         this.§7!!§ = true;
      }
   }
}
