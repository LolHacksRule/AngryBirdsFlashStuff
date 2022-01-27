package §`"!§
{
   public class §"!V§
   {
       
      
      private var §+u§:Number;
      
      private var §+";§:String;
      
      private var §6S§:Function;
      
      private var §>!c§:Function;
      
      private var §1"3§:Boolean = true;
      
      public function §"!V§(param1:String, param2:Number)
      {
         super();
         this.§+";§ = param1;
         this.§+u§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §="9§() : String
      {
         return this.§+";§;
      }
      
      public function §@=§() : Function
      {
         return this.§6S§;
      }
      
      public function §?m§() : Function
      {
         return this.§>!c§;
      }
      
      public function §6"F§(param1:Object) : void
      {
         if(this.§1"3§)
         {
            this.§6S§.call(null,param1);
         }
      }
      
      public function §"'§(param1:Object) : void
      {
         if(this.§1"3§)
         {
            this.§>!c§.call(null,param1);
         }
      }
      
      public function §1!2§(param1:Function, param2:Function = null) : void
      {
         this.§6S§ = param1;
         this.§>!c§ = param2;
      }
      
      public function §=#§() : void
      {
         this.§1"3§ = false;
      }
      
      public function §5"B§() : void
      {
         this.§1"3§ = true;
      }
   }
}
