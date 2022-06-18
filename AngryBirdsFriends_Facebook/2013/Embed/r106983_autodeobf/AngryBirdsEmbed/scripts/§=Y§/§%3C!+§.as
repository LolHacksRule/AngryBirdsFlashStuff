package §=Y§
{
   public class §<!+§
   {
       
      
      private var §8!,§:Number;
      
      private var §6!,§:String;
      
      private var §[!2§:Function;
      
      private var §6!5§:Function;
      
      private var §,!E§:Boolean = true;
      
      public function §<!+§(param1:String, param2:Number)
      {
         super();
         this.§6!,§ = param1;
         this.§8!,§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function § ;§() : String
      {
         return this.§6!,§;
      }
      
      public function §@!G§() : Function
      {
         return this.§[!2§;
      }
      
      public function §6d§() : Function
      {
         return this.§6!5§;
      }
      
      public function §6L§(param1:Object) : void
      {
         if(this.§,!E§)
         {
            this.§[!2§.call(null,param1);
         }
      }
      
      public function §,j§(param1:Object) : void
      {
         if(this.§,!E§)
         {
            this.§6!5§.call(null,param1);
         }
      }
      
      public function §#@§(param1:Function, param2:Function = null) : void
      {
         this.§[!2§ = param1;
         this.§6!5§ = param2;
      }
      
      public function §]!4§() : void
      {
         this.§,!E§ = false;
      }
      
      public function §@!#§() : void
      {
         this.§,!E§ = true;
      }
   }
}
