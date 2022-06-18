package §=2§
{
   public class §]!2§
   {
       
      
      private var §<b§:Number;
      
      private var §<N§:String;
      
      private var §`b§:Function;
      
      private var §=u§:Function;
      
      private var §3"§:Boolean = true;
      
      public function §]!2§(param1:String, param2:Number)
      {
         super();
         this.§<N§ = param1;
         this.§<b§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §4!J§() : String
      {
         return this.§<N§;
      }
      
      public function §36§() : Function
      {
         return this.§`b§;
      }
      
      public function §7!M§() : Function
      {
         return this.§=u§;
      }
      
      public function §,y§(param1:Object) : void
      {
         if(this.§3"§)
         {
            this.§`b§.call(null,param1);
         }
      }
      
      public function §-c§(param1:Object) : void
      {
         if(this.§3"§)
         {
            this.§=u§.call(null,param1);
         }
      }
      
      public function §%3§(param1:Function, param2:Function = null) : void
      {
         this.§`b§ = param1;
         this.§=u§ = param2;
      }
      
      public function §"+§() : void
      {
         this.§3"§ = false;
      }
      
      public function §!!G§() : void
      {
         this.§3"§ = true;
      }
   }
}
