package §^!#§
{
   public class §6h§
   {
       
      
      private var §5b§:Number;
      
      private var §>!;§:String;
      
      private var §'s§:Function;
      
      private var §6!H§:Function;
      
      private var §#j§:Boolean = true;
      
      public function §6h§(param1:String, param2:Number)
      {
         super();
         this.§>!;§ = param1;
         this.§5b§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §%!J§() : String
      {
         return this.§>!;§;
      }
      
      public function §-a§() : Function
      {
         return this.§'s§;
      }
      
      public function §>!<§() : Function
      {
         return this.§6!H§;
      }
      
      public function §]1§(param1:Object) : void
      {
         if(this.§#j§)
         {
            this.§'s§.call(null,param1);
         }
      }
      
      public function §3!J§(param1:Object) : void
      {
         if(this.§#j§)
         {
            this.§6!H§.call(null,param1);
         }
      }
      
      public function §-N§(param1:Function, param2:Function = null) : void
      {
         this.§'s§ = param1;
         this.§6!H§ = param2;
      }
      
      public function §%!K§() : void
      {
         this.§#j§ = false;
      }
      
      public function §[C§() : void
      {
         this.§#j§ = true;
      }
   }
}
