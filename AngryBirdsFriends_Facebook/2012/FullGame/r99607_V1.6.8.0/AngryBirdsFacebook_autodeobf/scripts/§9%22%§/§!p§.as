package §9"%§
{
   public class §!p§
   {
       
      
      private var §'"'§:Number;
      
      private var §>"2§:String;
      
      private var §=f§:Function;
      
      private var §&!-§:Function;
      
      private var §7!%§:Boolean = true;
      
      public function §!p§(param1:String, param2:Number)
      {
         super();
         this.§>"2§ = param1;
         this.§'"'§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §9!I§() : String
      {
         return this.§>"2§;
      }
      
      public function §4"%§() : Function
      {
         return this.§=f§;
      }
      
      public function §>!T§() : Function
      {
         return this.§&!-§;
      }
      
      public function §'!<§(param1:Object) : void
      {
         if(this.§7!%§)
         {
            this.§=f§.call(null,param1);
         }
      }
      
      public function §^!H§(param1:Object) : void
      {
         if(this.§7!%§)
         {
            this.§&!-§.call(null,param1);
         }
      }
      
      public function § !x§(param1:Function, param2:Function = null) : void
      {
         this.§=f§ = param1;
         this.§&!-§ = param2;
      }
      
      public function §4X§() : void
      {
         this.§7!%§ = false;
      }
      
      public function §?G§() : void
      {
         this.§7!%§ = true;
      }
   }
}
