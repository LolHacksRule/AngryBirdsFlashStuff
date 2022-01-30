package §5!8§
{
   public class §7a§
   {
       
      
      private var §8g§:Number;
      
      private var §,l§:String;
      
      private var §?!J§:Function;
      
      private var §0K§:Function;
      
      private var §[`§:Boolean = true;
      
      public function §7a§(param1:String, param2:Number)
      {
         super();
         this.§,l§ = param1;
         this.§8g§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §>!G§() : String
      {
         return this.§,l§;
      }
      
      public function §;g§() : Function
      {
         return this.§?!J§;
      }
      
      public function §@""§() : Function
      {
         return this.§0K§;
      }
      
      public function §1!'§(param1:Object) : void
      {
         if(this.§[`§)
         {
            this.§?!J§.call(null,param1);
         }
      }
      
      public function §#L§(param1:Object) : void
      {
         if(this.§[`§)
         {
            this.§0K§.call(null,param1);
         }
      }
      
      public function §6V§(param1:Function, param2:Function = null) : void
      {
         this.§?!J§ = param1;
         this.§0K§ = param2;
      }
      
      public function §?!2§() : void
      {
         this.§[`§ = false;
      }
      
      public function §&o§() : void
      {
         this.§[`§ = true;
      }
   }
}
