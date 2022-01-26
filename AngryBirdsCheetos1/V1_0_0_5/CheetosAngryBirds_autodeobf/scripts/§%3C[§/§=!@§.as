package §<[§
{
   public class §=!@§
   {
       
      
      private var §]R§:Number;
      
      private var § !&§:String;
      
      private var §0!Z§:Function;
      
      private var §6F§:Function;
      
      private var §<!=§:Boolean = true;
      
      public function §=!@§(param1:String, param2:Number)
      {
         super();
         this.§ !&§ = param1;
         this.§]R§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §%h§() : String
      {
         return this.§ !&§;
      }
      
      public function §#F§() : Function
      {
         return this.§0!Z§;
      }
      
      public function §4+§() : Function
      {
         return this.§6F§;
      }
      
      public function §&<§(param1:Object) : void
      {
         if(this.§<!=§)
         {
            this.§0!Z§.call(null,param1);
         }
      }
      
      public function §]L§(param1:Object) : void
      {
         if(this.§<!=§)
         {
            this.§6F§.call(null,param1);
         }
      }
      
      public function §+2§(param1:Function, param2:Function = null) : void
      {
         this.§0!Z§ = param1;
         this.§6F§ = param2;
      }
      
      public function §7^§() : void
      {
         this.§<!=§ = false;
      }
      
      public function §=!U§() : void
      {
         this.§<!=§ = true;
      }
   }
}
