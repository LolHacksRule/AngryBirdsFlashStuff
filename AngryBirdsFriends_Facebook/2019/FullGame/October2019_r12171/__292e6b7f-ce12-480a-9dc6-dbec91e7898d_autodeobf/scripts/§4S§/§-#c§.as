package §4S§
{
   public class §-#c§
   {
       
      
      private var §-!d§:Number;
      
      private var §?$0§:String;
      
      private var §4">§:Function;
      
      private var § %§:Function;
      
      private var §4#c§:Boolean = true;
      
      public function §-#c§(param1:String, param2:Number)
      {
         super();
         this.§?$0§ = param1;
         this.§-!d§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §-#N§() : String
      {
         return this.§?$0§;
      }
      
      public function §6"y§() : Function
      {
         return this.§4">§;
      }
      
      public function §7#J§() : Function
      {
         return this.§ %§;
      }
      
      public function §8$1§(param1:Object) : void
      {
         if(this.§4#c§)
         {
            this.§4">§.call(null,param1);
         }
      }
      
      public function §9$C§(param1:Object) : void
      {
         if(this.§4#c§)
         {
            this.§ %§.call(null,param1);
         }
      }
      
      public function §@A§(param1:Function, param2:Function = null) : void
      {
         this.§4">§ = param1;
         this.§ %§ = param2;
      }
      
      public function §2!A§() : void
      {
         this.§4#c§ = false;
      }
      
      public function §0$'§() : void
      {
         this.§4#c§ = true;
      }
   }
}
