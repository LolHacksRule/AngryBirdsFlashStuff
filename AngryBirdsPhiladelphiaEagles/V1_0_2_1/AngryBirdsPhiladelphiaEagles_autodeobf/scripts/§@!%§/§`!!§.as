package §@!%§
{
   public class §`!!§
   {
       
      
      private var §97§:Number;
      
      private var §#?§:String;
      
      private var §'Q§:Function;
      
      private var §5!§:Function;
      
      private var §5@§:Boolean = true;
      
      public function §`!!§(param1:String, param2:Number)
      {
         super();
         this.§#?§ = param1;
         this.§97§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §1!!§() : String
      {
         return this.§#?§;
      }
      
      public function §^[§() : Function
      {
         return this.§'Q§;
      }
      
      public function §<!3§() : Function
      {
         return this.§5!§;
      }
      
      public function § !G§(param1:Object) : void
      {
         if(this.§5@§)
         {
            this.§'Q§.call(null,param1);
         }
      }
      
      public function §=P§(param1:Object) : void
      {
         if(this.§5@§)
         {
            this.§5!§.call(null,param1);
         }
      }
      
      public function §4C§(param1:Function, param2:Function = null) : void
      {
         this.§'Q§ = param1;
         this.§5!§ = param2;
      }
      
      public function §%J§() : void
      {
         this.§5@§ = false;
      }
      
      public function §!_§() : void
      {
         this.§5@§ = true;
      }
   }
}
