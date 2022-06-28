package §+?§
{
   public class §2V§
   {
       
      
      private var §]!-§:Number;
      
      private var §[!H§:String;
      
      private var §;!!§:Function;
      
      private var §@N§:Function;
      
      private var §<!$§:Boolean = true;
      
      public function §2V§(param1:String, param2:Number)
      {
         super();
         this.§[!H§ = param1;
         this.§]!-§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §'y§() : String
      {
         return this.§[!H§;
      }
      
      public function §@!$§() : Function
      {
         return this.§;!!§;
      }
      
      public function § !@§() : Function
      {
         return this.§@N§;
      }
      
      public function § !"§(param1:Object) : void
      {
         if(this.§<!$§)
         {
            this.§;!!§.call(null,param1);
         }
      }
      
      public function §8=§(param1:Object) : void
      {
         if(this.§<!$§)
         {
            this.§@N§.call(null,param1);
         }
      }
      
      public function §[!0§(param1:Function, param2:Function = null) : void
      {
         this.§;!!§ = param1;
         this.§@N§ = param2;
      }
      
      public function §,M§() : void
      {
         this.§<!$§ = false;
      }
      
      public function §6!H§() : void
      {
         this.§<!$§ = true;
      }
   }
}
