package §break§
{
   public class §]7§
   {
       
      
      private var §>!I§:Number;
      
      private var §"!K§:String;
      
      private var §=p§:Function;
      
      private var §0X§:Function;
      
      private var §,l§:Boolean = true;
      
      public function §]7§(param1:String, param2:Number)
      {
         super();
         this.§"!K§ = param1;
         this.§>!I§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function § !F§() : String
      {
         return this.§"!K§;
      }
      
      public function §]!-§() : Function
      {
         return this.§=p§;
      }
      
      public function §!;§() : Function
      {
         return this.§0X§;
      }
      
      public function §9z§(param1:Object) : void
      {
         if(this.§,l§)
         {
            this.§=p§.call(null,param1);
         }
      }
      
      public function §8R§(param1:Object) : void
      {
         if(this.§,l§)
         {
            this.§0X§.call(null,param1);
         }
      }
      
      public function §;E§(param1:Function, param2:Function = null) : void
      {
         this.§=p§ = param1;
         this.§0X§ = param2;
      }
      
      public function §2r§() : void
      {
         this.§,l§ = false;
      }
      
      public function §5!<§() : void
      {
         this.§,l§ = true;
      }
   }
}
