package §'8§
{
   public class §0,§
   {
       
      
      private var §[]§:Number;
      
      private var §`Q§:String;
      
      private var §;!,§:Function;
      
      private var §[a§:Function;
      
      private var §+C§:Boolean = true;
      
      public function §0,§(param1:String, param2:Number)
      {
         super();
         this.§`Q§ = param1;
         this.§[]§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §8W§() : String
      {
         return this.§`Q§;
      }
      
      public function §5!E§() : Function
      {
         return this.§;!,§;
      }
      
      public function §<1§() : Function
      {
         return this.§[a§;
      }
      
      public function §@!2§(param1:Object) : void
      {
         if(this.§+C§)
         {
            this.§;!,§.call(null,param1);
         }
      }
      
      public function §?!E§(param1:Object) : void
      {
         if(this.§+C§)
         {
            this.§[a§.call(null,param1);
         }
      }
      
      public function §<f§(param1:Function, param2:Function = null) : void
      {
         this.§;!,§ = param1;
         this.§[a§ = param2;
      }
      
      public function §&Y§() : void
      {
         this.§+C§ = false;
      }
      
      public function §3X§() : void
      {
         this.§+C§ = true;
      }
   }
}
