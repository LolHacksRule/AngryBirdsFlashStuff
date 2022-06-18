package §@k§
{
   public class §`>§
   {
       
      
      private var §'z§:Number;
      
      private var §5! §:String;
      
      private var §=E§:Function;
      
      private var §=!4§:Function;
      
      private var §3Y§:Boolean = true;
      
      public function §`>§(param1:String, param2:Number)
      {
         super();
         this.§5! § = param1;
         this.§'z§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §4T§() : String
      {
         return this.§5! §;
      }
      
      public function §3?§() : Function
      {
         return this.§=E§;
      }
      
      public function §"A§() : Function
      {
         return this.§=!4§;
      }
      
      public function § !8§(param1:Object) : void
      {
         if(this.§3Y§)
         {
            this.§=E§.call(null,param1);
         }
      }
      
      public function §32§(param1:Object) : void
      {
         if(this.§3Y§)
         {
            this.§=!4§.call(null,param1);
         }
      }
      
      public function §2_§(param1:Function, param2:Function = null) : void
      {
         this.§=E§ = param1;
         this.§=!4§ = param2;
      }
      
      public function §"!'§() : void
      {
         this.§3Y§ = false;
      }
      
      public function § F§() : void
      {
         this.§3Y§ = true;
      }
   }
}
