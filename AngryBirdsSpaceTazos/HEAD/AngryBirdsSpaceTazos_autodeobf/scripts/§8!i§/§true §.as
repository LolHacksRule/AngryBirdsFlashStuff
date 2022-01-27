package §8!i§
{
   public class §true §
   {
       
      
      private var §]!p§:Number;
      
      private var §;!G§:String;
      
      private var §+!_§:Function;
      
      private var §83§:Function;
      
      private var §8!x§:Boolean = true;
      
      public function §true §(param1:String, param2:Number)
      {
         super();
         this.§;!G§ = param1;
         this.§]!p§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §+h§() : String
      {
         return this.§;!G§;
      }
      
      public function §]5§() : Function
      {
         return this.§+!_§;
      }
      
      public function §"!r§() : Function
      {
         return this.§83§;
      }
      
      public function §%!L§(param1:Object) : void
      {
         if(this.§8!x§)
         {
            this.§+!_§.call(null,param1);
         }
      }
      
      public function §<"@§(param1:Object) : void
      {
         if(this.§8!x§)
         {
            this.§83§.call(null,param1);
         }
      }
      
      public function §1" §(param1:Function, param2:Function = null) : void
      {
         this.§+!_§ = param1;
         this.§83§ = param2;
      }
      
      public function §'u§() : void
      {
         this.§8!x§ = false;
      }
      
      public function §2!p§() : void
      {
         this.§8!x§ = true;
      }
   }
}
