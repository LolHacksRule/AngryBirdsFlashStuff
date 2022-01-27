package §]8§
{
   public class §04§
   {
       
      
      private var §3R§:Number;
      
      private var §;§:String;
      
      private var §!y§:Function;
      
      private var §%!K§:Function;
      
      private var §>!!§:Boolean = true;
      
      public function §04§(param1:String, param2:Number)
      {
         super();
         this.§;§ = param1;
         this.§3R§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §1,§() : String
      {
         return this.§;§;
      }
      
      public function §]!$§() : Function
      {
         return this.§!y§;
      }
      
      public function §@!6§() : Function
      {
         return this.§%!K§;
      }
      
      public function §@u§(param1:Object) : void
      {
         if(this.§>!!§)
         {
            this.§!y§.call(null,param1);
         }
      }
      
      public function §3!7§(param1:Object) : void
      {
         if(this.§>!!§)
         {
            this.§%!K§.call(null,param1);
         }
      }
      
      public function §5!$§(param1:Function, param2:Function = null) : void
      {
         this.§!y§ = param1;
         this.§%!K§ = param2;
      }
      
      public function §=V§() : void
      {
         this.§>!!§ = false;
      }
      
      public function §5!J§() : void
      {
         this.§>!!§ = true;
      }
   }
}
