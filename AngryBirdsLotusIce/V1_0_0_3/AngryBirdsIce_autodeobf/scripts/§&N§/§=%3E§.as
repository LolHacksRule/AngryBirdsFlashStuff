package §&N§
{
   public class §=>§
   {
       
      
      private var §+-§:Number;
      
      private var §]E§:String;
      
      private var §7i§:Function;
      
      private var §&[§:Function;
      
      private var §2+§:Boolean = true;
      
      public function §=>§(param1:String, param2:Number)
      {
         super();
         this.§]E§ = param1;
         this.§+-§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §4y§() : String
      {
         return this.§]E§;
      }
      
      public function §,H§() : Function
      {
         return this.§7i§;
      }
      
      public function §=U§() : Function
      {
         return this.§&[§;
      }
      
      public function §+]§(param1:Object) : void
      {
         if(this.§2+§)
         {
            this.§7i§.call(null,param1);
         }
      }
      
      public function §,!3§(param1:Object) : void
      {
         if(this.§2+§)
         {
            this.§&[§.call(null,param1);
         }
      }
      
      public function §^!2§(param1:Function, param2:Function = null) : void
      {
         this.§7i§ = param1;
         this.§&[§ = param2;
      }
      
      public function §^%§() : void
      {
         this.§2+§ = false;
      }
      
      public function §%!?§() : void
      {
         this.§2+§ = true;
      }
   }
}
