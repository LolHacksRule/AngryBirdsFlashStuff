package §^<§
{
   public class §6t§
   {
       
      
      private var §'b§:Number;
      
      private var §!i§:String;
      
      private var §4e§:Function;
      
      private var §#!D§:Function;
      
      private var §"!@§:Boolean = true;
      
      public function §6t§(param1:String, param2:Number)
      {
         super();
         this.§!i§ = param1;
         this.§'b§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §]!0§() : String
      {
         return this.§!i§;
      }
      
      public function §[n§() : Function
      {
         return this.§4e§;
      }
      
      public function §4F§() : Function
      {
         return this.§#!D§;
      }
      
      public function §[B§(param1:Object) : void
      {
         if(this.§"!@§)
         {
            this.§4e§.call(null,param1);
         }
      }
      
      public function §!8§(param1:Object) : void
      {
         if(this.§"!@§)
         {
            this.§#!D§.call(null,param1);
         }
      }
      
      public function §#!-§(param1:Function, param2:Function = null) : void
      {
         this.§4e§ = param1;
         this.§#!D§ = param2;
      }
      
      public function §7p§() : void
      {
         this.§"!@§ = false;
      }
      
      public function §67§() : void
      {
         this.§"!@§ = true;
      }
   }
}
