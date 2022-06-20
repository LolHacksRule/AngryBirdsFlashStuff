package § "C§
{
   public class §5!e§
   {
       
      
      private var §'!]§:Number;
      
      private var §8!x§:String;
      
      private var §#5§:Function;
      
      private var §;N§:Function;
      
      private var §+Y§:Boolean = true;
      
      public function §5!e§(param1:String, param2:Number)
      {
         super();
         this.§8!x§ = param1;
         this.§'!]§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §""%§() : String
      {
         return this.§8!x§;
      }
      
      public function §%!;§() : Function
      {
         return this.§#5§;
      }
      
      public function §'q§() : Function
      {
         return this.§;N§;
      }
      
      public function §&"6§(param1:Object) : void
      {
         if(this.§+Y§)
         {
            this.§#5§.call(null,param1);
         }
      }
      
      public function §,!B§(param1:Object) : void
      {
         if(this.§+Y§)
         {
            this.§;N§.call(null,param1);
         }
      }
      
      public function §4!L§(param1:Function, param2:Function = null) : void
      {
         this.§#5§ = param1;
         this.§;N§ = param2;
      }
      
      public function §=!6§() : void
      {
         this.§+Y§ = false;
      }
      
      public function §<Y§() : void
      {
         this.§+Y§ = true;
      }
   }
}
