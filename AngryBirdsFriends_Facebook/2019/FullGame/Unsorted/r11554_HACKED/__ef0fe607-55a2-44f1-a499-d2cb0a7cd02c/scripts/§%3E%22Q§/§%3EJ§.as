package §>"Q§
{
   public class §>J§
   {
       
      
      private var §]Y§:Number;
      
      private var §4Q§:String;
      
      private var §@"8§:Function;
      
      private var §9"W§:Function;
      
      private var §1#D§:Boolean = true;
      
      public function §>J§(param1:String, param2:Number)
      {
         super();
         this.§4Q§ = param1;
         this.§]Y§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §<!0§() : String
      {
         return this.§4Q§;
      }
      
      public function §#!@§() : Function
      {
         return this.§@"8§;
      }
      
      public function §[!7§() : Function
      {
         return this.§9"W§;
      }
      
      public function §-!u§(param1:Object) : void
      {
         if(this.§1#D§)
         {
            this.§@"8§.call(null,param1);
         }
      }
      
      public function §,#^§(param1:Object) : void
      {
         if(this.§1#D§)
         {
            this.§9"W§.call(null,param1);
         }
      }
      
      public function §["J§(param1:Function, param2:Function = null) : void
      {
         this.§@"8§ = param1;
         this.§9"W§ = param2;
      }
      
      public function §4t§() : void
      {
         this.§1#D§ = false;
      }
      
      public function §'"y§() : void
      {
         this.§1#D§ = true;
      }
   }
}
