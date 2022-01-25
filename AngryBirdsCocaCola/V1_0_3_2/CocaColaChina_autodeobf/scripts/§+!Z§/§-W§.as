package §+!Z§
{
   public class §-W§
   {
       
      
      private var §0!'§:Number;
      
      private var §>!Y§:String;
      
      private var §<W§:Function;
      
      private var §36§:Function;
      
      private var §&!X§:Boolean = true;
      
      public function §-W§(param1:String, param2:Number)
      {
         super();
         this.§>!Y§ = param1;
         this.§0!'§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §`K§() : String
      {
         return this.§>!Y§;
      }
      
      public function §=!?§() : Function
      {
         return this.§<W§;
      }
      
      public function §<!;§() : Function
      {
         return this.§36§;
      }
      
      public function §8l§(param1:Object) : void
      {
         if(this.§&!X§)
         {
            this.§<W§.call(null,param1);
         }
      }
      
      public function §%!%§(param1:Object) : void
      {
         if(this.§&!X§)
         {
            this.§36§.call(null,param1);
         }
      }
      
      public function §'!R§(param1:Function, param2:Function = null) : void
      {
         this.§<W§ = param1;
         this.§36§ = param2;
      }
      
      public function §<=§() : void
      {
         this.§&!X§ = false;
      }
      
      public function §8!O§() : void
      {
         this.§&!X§ = true;
      }
   }
}
