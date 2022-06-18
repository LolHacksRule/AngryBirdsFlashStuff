package §#=§
{
   public class §%!3§
   {
       
      
      private var §0"§:Number;
      
      private var §!!9§:String;
      
      private var §^7§:Function;
      
      private var §-X§:Function;
      
      private var §=!E§:Boolean = true;
      
      public function §%!3§(param1:String, param2:Number)
      {
         super();
         this.§!!9§ = param1;
         this.§0"§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §1$§() : String
      {
         return this.§!!9§;
      }
      
      public function §%!"§() : Function
      {
         return this.§^7§;
      }
      
      public function §0!A§() : Function
      {
         return this.§-X§;
      }
      
      public function §!!1§(param1:Object) : void
      {
         if(this.§=!E§)
         {
            this.§^7§.call(null,param1);
         }
      }
      
      public function §0! §(param1:Object) : void
      {
         if(this.§=!E§)
         {
            this.§-X§.call(null,param1);
         }
      }
      
      public function §0T§(param1:Function, param2:Function = null) : void
      {
         this.§^7§ = param1;
         this.§-X§ = param2;
      }
      
      public function §5!9§() : void
      {
         this.§=!E§ = false;
      }
      
      public function §<f§() : void
      {
         this.§=!E§ = true;
      }
   }
}
