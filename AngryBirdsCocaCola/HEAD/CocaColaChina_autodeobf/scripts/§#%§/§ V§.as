package §#%§
{
   public class § V§
   {
       
      
      private var §1!U§:Number;
      
      private var §>!2§:String;
      
      private var §@T§:Function;
      
      private var §?W§:Function;
      
      private var §0t§:Boolean = true;
      
      public function § V§(param1:String, param2:Number)
      {
         super();
         this.§>!2§ = param1;
         this.§1!U§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §;!F§() : String
      {
         return this.§>!2§;
      }
      
      public function §7P§() : Function
      {
         return this.§@T§;
      }
      
      public function §04§() : Function
      {
         return this.§?W§;
      }
      
      public function §^i§(param1:Object) : void
      {
         if(this.§0t§)
         {
            this.§@T§.call(null,param1);
         }
      }
      
      public function §#f§(param1:Object) : void
      {
         if(this.§0t§)
         {
            this.§?W§.call(null,param1);
         }
      }
      
      public function §8!<§(param1:Function, param2:Function = null) : void
      {
         this.§@T§ = param1;
         this.§?W§ = param2;
      }
      
      public function §44§() : void
      {
         this.§0t§ = false;
      }
      
      public function §0!Z§() : void
      {
         this.§0t§ = true;
      }
   }
}
