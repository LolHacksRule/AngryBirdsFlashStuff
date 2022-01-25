package §,!0§
{
   public class §#G§
   {
       
      
      private var §&-§:Number;
      
      private var §<"§:String;
      
      private var §,I§:Function;
      
      private var § get§:Function;
      
      private var §4!H§:Boolean = true;
      
      public function §#G§(param1:String, param2:Number)
      {
         super();
         this.§<"§ = param1;
         this.§&-§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §'!F§() : String
      {
         return this.§<"§;
      }
      
      public function §8!1§() : Function
      {
         return this.§,I§;
      }
      
      public function § V§() : Function
      {
         return this.§ get§;
      }
      
      public function §1!U§(param1:Object) : void
      {
         if(this.§4!H§)
         {
            this.§,I§.call(null,param1);
         }
      }
      
      public function §>!2§(param1:Object) : void
      {
         if(this.§4!H§)
         {
            this.§ get§.call(null,param1);
         }
      }
      
      public function §@T§(param1:Function, param2:Function = null) : void
      {
         this.§,I§ = param1;
         this.§ get§ = param2;
      }
      
      public function §?W§() : void
      {
         this.§4!H§ = false;
      }
      
      public function §0t§() : void
      {
         this.§4!H§ = true;
      }
   }
}
