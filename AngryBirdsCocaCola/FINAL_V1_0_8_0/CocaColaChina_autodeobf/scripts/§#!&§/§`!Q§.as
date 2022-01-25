package §#!&§
{
   public class §`!Q§
   {
       
      
      private var §&!R§:Number;
      
      private var § ! §:String;
      
      private var §]Q§:Function;
      
      private var §]q§:Function;
      
      private var §1!D§:Boolean = true;
      
      public function §`!Q§(param1:String, param2:Number)
      {
         super();
         this.§ ! § = param1;
         this.§&!R§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §^!Z§() : String
      {
         return this.§ ! §;
      }
      
      public function §-5§() : Function
      {
         return this.§]Q§;
      }
      
      public function §;e§() : Function
      {
         return this.§]q§;
      }
      
      public function §'F§(param1:Object) : void
      {
         if(this.§1!D§)
         {
            this.§]Q§.call(null,param1);
         }
      }
      
      public function §+!U§(param1:Object) : void
      {
         if(this.§1!D§)
         {
            this.§]q§.call(null,param1);
         }
      }
      
      public function §1A§(param1:Function, param2:Function = null) : void
      {
         this.§]Q§ = param1;
         this.§]q§ = param2;
      }
      
      public function §^!7§() : void
      {
         this.§1!D§ = false;
      }
      
      public function §'!E§() : void
      {
         this.§1!D§ = true;
      }
   }
}
