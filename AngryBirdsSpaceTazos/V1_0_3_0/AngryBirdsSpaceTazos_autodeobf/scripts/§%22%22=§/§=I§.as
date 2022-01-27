package §""=§
{
   public class §=I§
   {
       
      
      private var §+!^§:Number;
      
      private var §^"$§:String;
      
      private var §,=§:Function;
      
      private var §&m§:Function;
      
      private var §]c§:Boolean = true;
      
      public function §=I§(param1:String, param2:Number)
      {
         super();
         this.§^"$§ = param1;
         this.§+!^§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §1"7§() : String
      {
         return this.§^"$§;
      }
      
      public function §%w§() : Function
      {
         return this.§,=§;
      }
      
      public function §1!g§() : Function
      {
         return this.§&m§;
      }
      
      public function §@@§(param1:Object) : void
      {
         if(this.§]c§)
         {
            this.§,=§.call(null,param1);
         }
      }
      
      public function §>N§(param1:Object) : void
      {
         if(this.§]c§)
         {
            this.§&m§.call(null,param1);
         }
      }
      
      public function §]"-§(param1:Function, param2:Function = null) : void
      {
         this.§,=§ = param1;
         this.§&m§ = param2;
      }
      
      public function §`!;§() : void
      {
         this.§]c§ = false;
      }
      
      public function §]!L§() : void
      {
         this.§]c§ = true;
      }
   }
}
