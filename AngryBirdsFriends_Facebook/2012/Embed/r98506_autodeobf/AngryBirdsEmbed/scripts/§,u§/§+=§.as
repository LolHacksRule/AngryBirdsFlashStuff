package §,u§
{
   public class §+=§
   {
       
      
      private var §>!=§:Number;
      
      private var §6w§:String;
      
      private var §4§:Function;
      
      private var §,P§:Function;
      
      private var §0P§:Boolean = true;
      
      public function §+=§(param1:String, param2:Number)
      {
         super();
         this.§6w§ = param1;
         this.§>!=§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §#6§() : String
      {
         return this.§6w§;
      }
      
      public function §3E§() : Function
      {
         return this.§4§;
      }
      
      public function §#I§() : Function
      {
         return this.§,P§;
      }
      
      public function §4i§(param1:Object) : void
      {
         if(this.§0P§)
         {
            this.§4§.call(null,param1);
         }
      }
      
      public function §^^§(param1:Object) : void
      {
         if(this.§0P§)
         {
            this.§,P§.call(null,param1);
         }
      }
      
      public function §9!8§(param1:Function, param2:Function = null) : void
      {
         this.§4§ = param1;
         this.§,P§ = param2;
      }
      
      public function §6R§() : void
      {
         this.§0P§ = false;
      }
      
      public function §^G§() : void
      {
         this.§0P§ = true;
      }
   }
}
