package §^!7§
{
   public class §=]§
   {
       
      
      private var §1!1§:Number;
      
      private var §?!R§:String;
      
      private var §9!`§:Function;
      
      private var §]!g§:Function;
      
      private var §'!9§:Boolean = true;
      
      public function §=]§(param1:String, param2:Number)
      {
         super();
         this.§?!R§ = param1;
         this.§1!1§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §>?§() : String
      {
         return this.§?!R§;
      }
      
      public function §@P§() : Function
      {
         return this.§9!`§;
      }
      
      public function §?K§() : Function
      {
         return this.§]!g§;
      }
      
      public function §<!F§(param1:Object) : void
      {
         if(this.§'!9§)
         {
            this.§9!`§.call(null,param1);
         }
      }
      
      public function §=b§(param1:Object) : void
      {
         if(this.§'!9§)
         {
            this.§]!g§.call(null,param1);
         }
      }
      
      public function §<]§(param1:Function, param2:Function = null) : void
      {
         this.§9!`§ = param1;
         this.§]!g§ = param2;
      }
      
      public function §=!&§() : void
      {
         this.§'!9§ = false;
      }
      
      public function §03§() : void
      {
         this.§'!9§ = true;
      }
   }
}
