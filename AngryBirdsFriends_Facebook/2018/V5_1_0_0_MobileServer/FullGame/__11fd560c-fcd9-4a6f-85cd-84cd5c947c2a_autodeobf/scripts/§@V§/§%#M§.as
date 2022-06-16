package §@V§
{
   public class §%#M§
   {
       
      
      private var §8S§:Number;
      
      private var §2!B§:String;
      
      private var §8#7§:Function;
      
      private var §7#<§:Function;
      
      private var §#4§:Boolean = true;
      
      public function §%#M§(param1:String, param2:Number)
      {
         super();
         this.§2!B§ = param1;
         this.§8S§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §9@§() : String
      {
         return this.§2!B§;
      }
      
      public function §,!I§() : Function
      {
         return this.§8#7§;
      }
      
      public function §!K§() : Function
      {
         return this.§7#<§;
      }
      
      public function §%#,§(param1:Object) : void
      {
         if(this.§#4§)
         {
            this.§8#7§.call(null,param1);
         }
      }
      
      public function §[U§(param1:Object) : void
      {
         if(this.§#4§)
         {
            this.§7#<§.call(null,param1);
         }
      }
      
      public function §4!>§(param1:Function, param2:Function = null) : void
      {
         this.§8#7§ = param1;
         this.§7#<§ = param2;
      }
      
      public function §"$6§() : void
      {
         this.§#4§ = false;
      }
      
      public function §'L§() : void
      {
         this.§#4§ = true;
      }
   }
}
