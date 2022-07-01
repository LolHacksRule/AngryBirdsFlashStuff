package §6!C§
{
   public class §,!B§
   {
       
      
      private var §3T§:Number;
      
      private var §9!=§:String;
      
      private var §"a§:Function;
      
      private var §^v§:Function;
      
      private var §@2§:Boolean = true;
      
      public function §,!B§(param1:String, param2:Number)
      {
         super();
         this.§9!=§ = param1;
         this.§3T§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §09§() : String
      {
         return this.§9!=§;
      }
      
      public function §5<§() : Function
      {
         return this.§"a§;
      }
      
      public function §,'§() : Function
      {
         return this.§^v§;
      }
      
      public function §`!@§(param1:Object) : void
      {
         if(this.§@2§)
         {
            this.§"a§.call(null,param1);
         }
      }
      
      public function §'!k§(param1:Object) : void
      {
         if(this.§@2§)
         {
            this.§^v§.call(null,param1);
         }
      }
      
      public function §1!T§(param1:Function, param2:Function = null) : void
      {
         this.§"a§ = param1;
         this.§^v§ = param2;
      }
      
      public function §]!&§() : void
      {
         this.§@2§ = false;
      }
      
      public function §1!l§() : void
      {
         this.§@2§ = true;
      }
   }
}
