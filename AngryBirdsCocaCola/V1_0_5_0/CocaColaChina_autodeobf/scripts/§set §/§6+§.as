package §set §
{
   public class §6+§
   {
       
      
      private var §#!=§:Number;
      
      private var §6L§:String;
      
      private var §0X§:Function;
      
      private var §,O§:Function;
      
      private var §^!5§:Boolean = true;
      
      public function §6+§(param1:String, param2:Number)
      {
         super();
         this.§6L§ = param1;
         this.§#!=§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §`0§() : String
      {
         return this.§6L§;
      }
      
      public function §for §() : Function
      {
         return this.§0X§;
      }
      
      public function §"!Z§() : Function
      {
         return this.§,O§;
      }
      
      public function §18§(param1:Object) : void
      {
         if(this.§^!5§)
         {
            this.§0X§.call(null,param1);
         }
      }
      
      public function §-8§(param1:Object) : void
      {
         if(this.§^!5§)
         {
            this.§,O§.call(null,param1);
         }
      }
      
      public function §[W§(param1:Function, param2:Function = null) : void
      {
         this.§0X§ = param1;
         this.§,O§ = param2;
      }
      
      public function §3=§() : void
      {
         this.§^!5§ = false;
      }
      
      public function §&d§() : void
      {
         this.§^!5§ = true;
      }
   }
}
