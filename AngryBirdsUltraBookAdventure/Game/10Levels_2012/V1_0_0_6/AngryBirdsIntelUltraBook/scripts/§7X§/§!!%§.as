package §7X§
{
   public class §!!%§
   {
       
      
      private var §@y§:Number;
      
      private var §^!z§:String;
      
      private var §5O§:Function;
      
      private var §"!I§:Function;
      
      private var §1!]§:Boolean = true;
      
      public function §!!%§(param1:String, param2:Number)
      {
         super();
         this.§^!z§ = param1;
         this.§@y§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §&!j§() : String
      {
         return this.§^!z§;
      }
      
      public function §7!q§() : Function
      {
         return this.§5O§;
      }
      
      public function §5!^§() : Function
      {
         return this.§"!I§;
      }
      
      public function §%!1§(param1:Object) : void
      {
         if(this.§1!]§)
         {
            this.§5O§.call(null,param1);
         }
      }
      
      public function §`#§(param1:Object) : void
      {
         if(this.§1!]§)
         {
            this.§"!I§.call(null,param1);
         }
      }
      
      public function §%!@§(param1:Function, param2:Function = null) : void
      {
         this.§5O§ = param1;
         this.§"!I§ = param2;
      }
      
      public function §;l§() : void
      {
         this.§1!]§ = false;
      }
      
      public function §,!G§() : void
      {
         this.§1!]§ = true;
      }
   }
}
