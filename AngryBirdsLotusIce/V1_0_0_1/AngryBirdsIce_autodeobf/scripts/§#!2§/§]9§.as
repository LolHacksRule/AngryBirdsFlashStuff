package §#!2§
{
   public class §]9§
   {
       
      
      private var §79§:Number;
      
      private var §1Q§:String;
      
      private var §^i§:Function;
      
      private var § t§:Function;
      
      private var §%!?§:Boolean = true;
      
      public function §]9§(param1:String, param2:Number)
      {
         super();
         this.§1Q§ = param1;
         this.§79§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §0!@§() : String
      {
         return this.§1Q§;
      }
      
      public function § j§() : Function
      {
         return this.§^i§;
      }
      
      public function §?k§() : Function
      {
         return this.§ t§;
      }
      
      public function §74§(param1:Object) : void
      {
         if(this.§%!?§)
         {
            this.§^i§.call(null,param1);
         }
      }
      
      public function §8f§(param1:Object) : void
      {
         if(this.§%!?§)
         {
            this.§ t§.call(null,param1);
         }
      }
      
      public function §[!#§(param1:Function, param2:Function = null) : void
      {
         this.§^i§ = param1;
         this.§ t§ = param2;
      }
      
      public function §'9§() : void
      {
         this.§%!?§ = false;
      }
      
      public function §8!"§() : void
      {
         this.§%!?§ = true;
      }
   }
}
