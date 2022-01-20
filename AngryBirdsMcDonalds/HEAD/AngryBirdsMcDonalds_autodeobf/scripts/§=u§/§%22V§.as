package §=u§
{
   public class §"V§
   {
       
      
      private var §[!n§:Number;
      
      private var §&O§:String;
      
      private var §4!!§:Function;
      
      private var §;k§:Function;
      
      private var §9!6§:Boolean = true;
      
      public function §"V§(param1:String, param2:Number)
      {
         super();
         this.§&O§ = param1;
         this.§[!n§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §"!R§() : String
      {
         return this.§&O§;
      }
      
      public function §5N§() : Function
      {
         return this.§4!!§;
      }
      
      public function §^o§() : Function
      {
         return this.§;k§;
      }
      
      public function §`?§(param1:Object) : void
      {
         if(this.§9!6§)
         {
            this.§4!!§.call(null,param1);
         }
      }
      
      public function §-!g§(param1:Object) : void
      {
         if(this.§9!6§)
         {
            this.§;k§.call(null,param1);
         }
      }
      
      public function §7!R§(param1:Function, param2:Function = null) : void
      {
         this.§4!!§ = param1;
         this.§;k§ = param2;
      }
      
      public function §`g§() : void
      {
         this.§9!6§ = false;
      }
      
      public function §2!'§() : void
      {
         this.§9!6§ = true;
      }
   }
}
