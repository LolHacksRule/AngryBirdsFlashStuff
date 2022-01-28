package §@!v§
{
   public class §`y§
   {
       
      
      private var §+s§:Number;
      
      private var §#§:String;
      
      private var §1!<§:Function;
      
      private var §`!P§:Function;
      
      private var §&@§:Boolean = true;
      
      public function §`y§(param1:String, param2:Number)
      {
         super();
         this.§#§ = param1;
         this.§+s§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §-"8§() : String
      {
         return this.§#§;
      }
      
      public function §%T§() : Function
      {
         return this.§1!<§;
      }
      
      public function §8C§() : Function
      {
         return this.§`!P§;
      }
      
      public function §2!i§(param1:Object) : void
      {
         if(this.§&@§)
         {
            this.§1!<§.call(null,param1);
         }
      }
      
      public function §+""§(param1:Object) : void
      {
         if(this.§&@§)
         {
            this.§`!P§.call(null,param1);
         }
      }
      
      public function §8!s§(param1:Function, param2:Function = null) : void
      {
         this.§1!<§ = param1;
         this.§`!P§ = param2;
      }
      
      public function §0!P§() : void
      {
         this.§&@§ = false;
      }
      
      public function §3$§() : void
      {
         this.§&@§ = true;
      }
   }
}
