package §[!#§
{
   public class §]R§
   {
       
      
      private var § !&§:Number;
      
      private var §0!Z§:String;
      
      private var §6F§:Function;
      
      private var §<!=§:Function;
      
      private var §%h§:Boolean = true;
      
      public function §]R§(param1:String, param2:Number)
      {
         super();
         this.§0!Z§ = param1;
         this.§ !&§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §#F§() : String
      {
         return this.§0!Z§;
      }
      
      public function §4+§() : Function
      {
         return this.§6F§;
      }
      
      public function §&<§() : Function
      {
         return this.§<!=§;
      }
      
      public function §]L§(param1:Object) : void
      {
         if(this.§%h§)
         {
            this.§6F§.call(null,param1);
         }
      }
      
      public function §+2§(param1:Object) : void
      {
         if(this.§%h§)
         {
            this.§<!=§.call(null,param1);
         }
      }
      
      public function §7^§(param1:Function, param2:Function = null) : void
      {
         this.§6F§ = param1;
         this.§<!=§ = param2;
      }
      
      public function §=!U§() : void
      {
         this.§%h§ = false;
      }
      
      public function §<Q§() : void
      {
         this.§%h§ = true;
      }
   }
}
